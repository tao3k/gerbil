;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; SRFI-226 Control Features + Direct-Style Algebraic Effects & Generators
;;;
;;; Built directly on Gambit modern-c native primitives:
;;;   - ##thread-control-state / ##thread-control-state-set! (O(1) GC-traced slot)
;;;   - ##continuation-capture / ##continuation-graft / ##continuation-return
;;;   - ##continuation-try-rewind-oneshot! (C-runtime zero-alloc one-shot stack rewind)
;;;   - :std/sync/atomic (SRFI-230 C23 atomic-fxbox CAS for linearizable SMP one-shot)

(import :std/error
        :std/sync/atomic
        :gerbil/runtime/gambit
        :gerbil/runtime/control)
(export
  ;; SRFI-226 Prompt Tags & Delimited Prompts
  make-continuation-prompt-tag
  continuation-prompt-tag?
  default-continuation-prompt-tag
  call-with-continuation-prompt
  continuation-prompt-available?
  abort-current-continuation

  ;; SRFI-226 Continuation Barriers
  call-with-continuation-barrier

  ;; SRFI-226 Composable, Non-Composable & Atomic One-Shot Continuations
  call-with-composable-continuation
  call-with-non-composable-continuation
  call/1cc
  call-with-one-shot-composable-continuation
  one-shot-continuation?
  one-shot-continuation-consumed?
  promote-one-shot-continuation!

  ;; SRFI-226 Continuation Marks
  with-continuation-mark
  call-with-continuation-mark
  current-continuation-marks
  continuation-marks
  continuation-mark-set?
  continuation-mark-set->list
  continuation-mark-set->list*
  continuation-mark-set-first
  call-with-immediate-continuation-mark

  ;; Delimited Control Sugar
  reset
  shift

  ;; Direct-Style Algebraic Effect Handlers (Koka tail fast path + OCaml-5 suspend + Lexa capabilities)
  make-effect
  effect?
  effect-name
  define-effect
  with-handler
  perform
  resume
  resume-multishot
  effect-continuation?
  effect-capability?
  call-with-tail-capability
  call-with-suspend-capability
  perform-cap

  ;; Direct-Style Generators
  make-generator
  yield

  ;; Internal fast-path hooks for :std/sync/fiber
  %make-handler-entry
  %call-with-handler-entries)

;;;----------------------------------------------------------------------------
;;; Constants & Atomic One-Shot Continuation States

(def %CONT-ONE-SHOT-LIVE     0)
(def %CONT-ONE-SHOT-CONSUMED 1)
(def %CONT-MULTISHOT-COW     2)
(def %ABSENT (list 'srfi-226-absent))

;;;----------------------------------------------------------------------------
;;; Prompt Tags

(defstruct ContinuationPromptTag (name) final: #t)

(def (make-continuation-prompt-tag (name : :t := 'prompt))
  => ContinuationPromptTag
  (ContinuationPromptTag name))

(defalias continuation-prompt-tag? ContinuationPromptTag?)

(def %default-prompt-tag (ContinuationPromptTag 'default))

(def (default-continuation-prompt-tag)
  => ContinuationPromptTag
  %default-prompt-tag)

;;;----------------------------------------------------------------------------
;;; Metacontinuation Frames & Native Per-Thread Control State
;;;
;;; IMPORTANT: TCState field slot 5 MUST remain `rewind-escape` to match
;;; Gambit modern-c's C primitive `##continuation-try-rewind-oneshot!`
;;; which reads `___FIELD(STRUCTURE, tc, 5)`.

(defstruct %MCFrame
  (kind      ; 'prompt or 'underflow
   tag       ; ContinuationPromptTag or #f
   handler   ; abort handler proc or #f
   escape-k  ; native Gambit continuation
   marks     ; saved mark stack outside this frame
   barriers  ; saved barrier stack outside this frame
   handlers) ; saved effect handler stack outside this frame
  final: #t)

(defstruct %TCState
  (mc            ; slot 1: list of %MCFrame
   marks         ; slot 2: list of alists (innermost first)
   barriers      ; slot 3: list of barrier tokens
   handlers      ; slot 4: list of %HandlerFrame
   rewind-escape ; slot 5: escape-k for ##continuation-try-rewind-oneshot!
   rewind-frame) ; slot 6: %HandlerFrame for non-tail fallback
  final: #t)

(def (%tc-current)
  (let ((st (##thread-control-state)))
    (if (%TCState? st)
      st
      (let ((fresh (%TCState '() '() '() '() #f #f)))
        (##thread-control-state-set! fresh)
        fresh))))

;;;----------------------------------------------------------------------------
;;; Continuation Mark Sets

(defstruct ContinuationMarkSet (frames) final: #t)
(defalias continuation-mark-set? ContinuationMarkSet?)

;;;----------------------------------------------------------------------------
;;; Sharded Weak Table for SRFI-226 call/1cc Inspection & Promotion

(def %ONE-SHOT-SHARDS 64)

(def %one-shot-tables
  (let ((v (make-vector %ONE-SHOT-SHARDS #f)))
    (let loop ((i 0))
      (when (fx< i %ONE-SHOT-SHARDS)
        (vector-set! v i (make-table test: eq? weak-keys: #t))
        (loop (fx+ i 1))))
    v))

(def %one-shot-mutexes
  (let ((v (make-vector %ONE-SHOT-SHARDS #f)))
    (let loop ((i 0))
      (when (fx< i %ONE-SHOT-SHARDS)
        (vector-set! v i (make-mutex 'srfi-226-one-shot))
        (loop (fx+ i 1))))
    v))

(def (%register-one-shot! proc state-box)
  (let* ((slot (fxand (eq?-hash proc) (fx- %ONE-SHOT-SHARDS 1)))
         (mtx (vector-ref %one-shot-mutexes slot))
         (tbl (vector-ref %one-shot-tables slot)))
    (mutex-lock! mtx)
    (table-set! tbl proc state-box)
    (mutex-unlock! mtx)
    proc))

(def (%lookup-one-shot-box proc)
  (let* ((slot (fxand (eq?-hash proc) (fx- %ONE-SHOT-SHARDS 1)))
         (mtx (vector-ref %one-shot-mutexes slot))
         (tbl (vector-ref %one-shot-tables slot)))
    (mutex-lock! mtx)
    (let ((b (table-ref tbl proc #f)))
      (mutex-unlock! mtx)
      b)))

(def (one-shot-continuation? obj)
  => :boolean
  (and (procedure? obj)
       (if (%lookup-one-shot-box obj) #t #f)))

(def (one-shot-continuation-consumed? obj)
  => :boolean
  (let ((b (%lookup-one-shot-box obj)))
    (if b
      (fx= (atomic-fxbox-ref b (memory-order acquire)) %CONT-ONE-SHOT-CONSUMED)
      #f)))

(def (promote-one-shot-continuation! obj)
  => :boolean
  (let ((b (%lookup-one-shot-box obj)))
    (unless b
      (raise-bad-argument promote-one-shot-continuation! "one-shot continuation" obj))
    (let ((prev (atomic-fxbox-compare-and-swap! b
                                                %CONT-ONE-SHOT-LIVE
                                                %CONT-MULTISHOT-COW
                                                (memory-order acquire-release))))
      (cond
       ((or (fx= prev %CONT-ONE-SHOT-LIVE)
            (fx= prev %CONT-MULTISHOT-COW))
        #t)
       (else
        (raise-context-error promote-one-shot-continuation!
                             "cannot promote consumed one-shot continuation" obj))))))

;;;----------------------------------------------------------------------------
;;; Internal Metacontinuation Helpers

(def (%default-prompt-handler tag)
  (lambda (thunk)
    (call-with-continuation-prompt thunk tag)))

(def (%mc-return1 val)
  (let* ((st (%tc-current))
         (mc (&%TCState-mc st)))
    (if (null? mc)
      val
      (let ((top (##car mc))
            (rest (##cdr mc)))
        (set! (&%TCState-mc st) rest)
        (set! (&%TCState-marks st) (&%MCFrame-marks top))
        (set! (&%TCState-barriers st) (&%MCFrame-barriers top))
        (set! (&%TCState-handlers st) (&%MCFrame-handlers top))
        (##continuation-return (&%MCFrame-escape-k top) val)))))

(def (%mc-return-vals (v1 %ABSENT) (v2 %ABSENT) (v3 %ABSENT) . more)
  (let* ((st (%tc-current))
         (mc (&%TCState-mc st)))
    (if (null? mc)
      (cond
       ((eq? v1 %ABSENT) (values))
       ((eq? v2 %ABSENT) v1)
       ((eq? v3 %ABSENT) (values v1 v2))
       ((null? more) (values v1 v2 v3))
       (else (apply values v1 v2 v3 more)))
      (let ((top (##car mc))
            (rest (##cdr mc)))
        (set! (&%TCState-mc st) rest)
        (set! (&%TCState-marks st) (&%MCFrame-marks top))
        (set! (&%TCState-barriers st) (&%MCFrame-barriers top))
        (set! (&%TCState-handlers st) (&%MCFrame-handlers top))
        (let ((k (&%MCFrame-escape-k top)))
          (cond
           ((eq? v1 %ABSENT) (##continuation-return k))
           ((eq? v2 %ABSENT) (##continuation-return k v1))
           ((eq? v3 %ABSENT) (##continuation-return k v1 v2))
           ((null? more) (##continuation-return k v1 v2 v3))
           (else (##apply ##continuation-return k v1 v2 v3 more))))))))

(def (%mc-split-at-tag mc tag)
  (if (and (pair? mc)
           (eq? (&%MCFrame-kind (##car mc)) 'prompt)
           (eq? (&%MCFrame-tag (##car mc)) tag))
    (values '() (##car mc) (##cdr mc))
    (let loop ((cur mc) (rev-prefix '()))
      (cond
       ((null? cur)
        (values #f #f #f))
       ((and (eq? (&%MCFrame-kind (##car cur)) 'prompt)
             (eq? (&%MCFrame-tag (##car cur)) tag))
        (values (reverse rev-prefix) (##car cur) (##cdr cur)))
       (else
        (loop (##cdr cur) (cons (##car cur) rev-prefix)))))))

(def (%list-prefix-until xs stop-tail)
  (if (eq? xs stop-tail)
    '()
    (let loop ((cur xs) (acc '()))
      (if (or (eq? cur stop-tail) (null? cur))
        (reverse acc)
        (loop (##cdr cur) (cons (##car cur) acc))))))

(def (%entering-barrier? captured-barriers current-barriers)
  (let loop ((bs captured-barriers))
    (cond
     ((null? bs) #f)
     ((memq (##car bs) current-barriers) (loop (##cdr bs)))
     (else #t))))

(def (%barrier-between? current-barriers pframe-barriers)
  (not (eq? current-barriers pframe-barriers)))

;;;----------------------------------------------------------------------------
;;; Prompts & Barriers

(def (%call-with-prompt-exception-guard tag thunk)
  (let ((outer-eh (current-exception-handler)))
    (with-exception-handler
     (lambda (e)
       ;; Dynamically locate and pop up to `tag` on the CURRENT thread's %TCState
       ;; (critical for fibers migrated across OS carrier threads!) before forwarding
       ;; to `outer-eh`. Restores state only if a continuable handler returns.
       (let* ((cst (%tc-current))
              (prev-mc (&%TCState-mc cst))
              (prev-marks (&%TCState-marks cst))
              (prev-barriers (&%TCState-barriers cst))
              (prev-handlers (&%TCState-handlers cst)))
         (let-values (((_ pf rest) (%mc-split-at-tag prev-mc tag)))
           (when pf
             (set! (&%TCState-mc cst) rest)
             (set! (&%TCState-marks cst) (&%MCFrame-marks pf))
             (set! (&%TCState-barriers cst) (&%MCFrame-barriers pf))
             (set! (&%TCState-handlers cst) (&%MCFrame-handlers pf)))
           (let ((res (outer-eh e)))
             (when pf
               (let ((rst (%tc-current)))
                 (set! (&%TCState-mc rst) prev-mc)
                 (set! (&%TCState-marks rst) prev-marks)
                 (set! (&%TCState-barriers rst) prev-barriers)
                 (set! (&%TCState-handlers rst) prev-handlers)))
             res))))
     thunk)))

(def (call-with-continuation-prompt (proc : :procedure)
                                    (tag : ContinuationPromptTag := %default-prompt-tag)
                                    (handler : :t := (%default-prompt-handler tag)))
  (##continuation-capture
   (lambda (escape-k)
     (let* ((st (%tc-current))
            (saved-mc (&%TCState-mc st))
            (saved-marks (&%TCState-marks st))
            (saved-barriers (&%TCState-barriers st))
            (saved-handlers (&%TCState-handlers st))
            (frame (%MCFrame 'prompt
                             tag
                             handler
                             escape-k
                             saved-marks
                             saved-barriers
                             saved-handlers)))
       (set! (&%TCState-mc st) (cons frame saved-mc))
       (call-with-values
         (lambda () (%call-with-prompt-exception-guard tag proc))
         %mc-return-vals)))))

(def (continuation-prompt-available? (tag : ContinuationPromptTag := %default-prompt-tag))
  => :boolean
  (let ((st (##thread-control-state)))
    (if (not (%TCState? st))
      #f
      (let loop ((cur (&%TCState-mc st)))
        (cond
         ((null? cur) #f)
         ((and (eq? (&%MCFrame-kind (##car cur)) 'prompt)
               (eq? (&%MCFrame-tag (##car cur)) tag))
          #t)
         (else (loop (##cdr cur))))))))

(def (abort-current-continuation (tag : ContinuationPromptTag)
                                 (a1 : :t := %ABSENT)
                                 (a2 : :t := %ABSENT)
                                 (a3 : :t := %ABSENT)
                                 . more)
  (let ((st (%tc-current)))
    (let-values (((prefix pframe rest) (%mc-split-at-tag (&%TCState-mc st) tag)))
      (unless pframe
        (raise-context-error abort-current-continuation "no prompt found for tag" tag))
      (let ((escape-k (&%MCFrame-escape-k pframe))
            (handler (&%MCFrame-handler pframe)))
        (set! (&%TCState-mc st) rest)
        (set! (&%TCState-marks st) (&%MCFrame-marks pframe))
        (set! (&%TCState-barriers st) (&%MCFrame-barriers pframe))
        (set! (&%TCState-handlers st) (&%MCFrame-handlers pframe))
        (cond
         ((eq? a1 %ABSENT)
          (##continuation-graft escape-k handler))
         ((eq? a2 %ABSENT)
          (##continuation-graft escape-k handler a1))
         ((eq? a3 %ABSENT)
          (##continuation-graft escape-k handler a1 a2))
         ((null? more)
          (##continuation-graft escape-k handler a1 a2 a3))
         (else
          (##continuation-graft escape-k ##apply handler
                                (cons a1 (cons a2 (cons a3 more))))))))))

(def (call-with-continuation-barrier (thunk : :procedure))
  (let* ((st (%tc-current))
         (barrier-token (list 'continuation-barrier))
         (saved-barriers (&%TCState-barriers st))
         (new-barriers (cons barrier-token saved-barriers)))
    (dynamic-wind
      (lambda () (set! (&%TCState-barriers (%tc-current)) new-barriers))
      thunk
      (lambda () (set! (&%TCState-barriers (%tc-current)) saved-barriers)))))

;; Install SRFI-226 barrier hook into :gerbil/runtime/control so with-lock,
;; do-with-spin-lock, with-unwind-protect, and make-atomic-promise protect
;; critical sections against delimited continuation capture/re-entry.
(__set-continuation-barrier-hook! call-with-continuation-barrier)

;;;----------------------------------------------------------------------------
;;; Composable & Non-Composable Delimited Continuations

(def (call-with-composable-continuation (proc : :procedure)
                                        (tag : ContinuationPromptTag := %default-prompt-tag))
  (let ((st (%tc-current)))
    (let-values (((prefix pframe rest) (%mc-split-at-tag (&%TCState-mc st) tag)))
      (unless pframe
        (raise-context-error call-with-composable-continuation "no prompt found for tag" tag))
      (when (%barrier-between? (&%TCState-barriers st) (&%MCFrame-barriers pframe))
        (raise-context-error call-with-composable-continuation
                             "cannot capture across continuation barrier" tag))
      (let ((captured-marks (%list-prefix-until (&%TCState-marks st) (&%MCFrame-marks pframe)))
            (captured-handlers (%list-prefix-until (&%TCState-handlers st) (&%MCFrame-handlers pframe))))
        (##continuation-capture
         (lambda (sub-k)
           (let ((composable-k
                  (lambda ((v1 %ABSENT) (v2 %ABSENT) (v3 %ABSENT) . more)
                    (##continuation-capture
                     (lambda (caller-k)
                       (let* ((cst (%tc-current))
                              (caller-mc (&%TCState-mc cst))
                              (caller-marks (&%TCState-marks cst))
                              (caller-barriers (&%TCState-barriers cst))
                              (caller-handlers (&%TCState-handlers cst))
                              (uframe (%MCFrame 'underflow
                                                #f
                                                #f
                                                caller-k
                                                caller-marks
                                                caller-barriers
                                                caller-handlers)))
                         (set! (&%TCState-mc cst)
                           (if (null? prefix)
                             (cons uframe caller-mc)
                             (append prefix (cons uframe caller-mc))))
                         (set! (&%TCState-marks cst)
                           (if (null? captured-marks)
                             caller-marks
                             (append captured-marks caller-marks)))
                         (set! (&%TCState-barriers cst) caller-barriers)
                         (set! (&%TCState-handlers cst)
                           (if (null? captured-handlers)
                             caller-handlers
                             (append captured-handlers caller-handlers)))
                         (cond
                          ((eq? v1 %ABSENT) (##continuation-return sub-k))
                          ((eq? v2 %ABSENT) (##continuation-return sub-k v1))
                          ((eq? v3 %ABSENT) (##continuation-return sub-k v1 v2))
                          ((null? more) (##continuation-return sub-k v1 v2 v3))
                          (else (##apply ##continuation-return sub-k v1 v2 v3 more)))))))))
             (proc composable-k))))))))

(def (call-with-non-composable-continuation (proc : :procedure)
                                            (tag : ContinuationPromptTag := %default-prompt-tag))
  (let ((st (%tc-current)))
    (let-values (((prefix pframe rest) (%mc-split-at-tag (&%TCState-mc st) tag)))
      (unless pframe
        (raise-context-error call-with-non-composable-continuation "no prompt found for tag" tag))
      (let ((captured-marks (%list-prefix-until (&%TCState-marks st) (&%MCFrame-marks pframe)))
            (captured-barriers (&%TCState-barriers st))
            (captured-handlers (%list-prefix-until (&%TCState-handlers st) (&%MCFrame-handlers pframe))))
        (##continuation-capture
         (lambda (sub-k)
           (let ((noncomp-k
                  (lambda ((v1 %ABSENT) (v2 %ABSENT) (v3 %ABSENT) . more)
                    (let ((cst (%tc-current)))
                      (when (%entering-barrier? captured-barriers (&%TCState-barriers cst))
                        (raise-context-error call-with-non-composable-continuation
                                             "continuation invocation blocked by continuation barrier"))
                      (let-values (((cur-prefix cur-pframe cur-rest) (%mc-split-at-tag (&%TCState-mc cst) tag)))
                        (unless cur-pframe
                          (raise-context-error call-with-non-composable-continuation
                                               "target prompt not active" tag))
                        (set! (&%TCState-mc cst)
                          (if (null? prefix)
                            (cons cur-pframe cur-rest)
                            (append prefix (cons cur-pframe cur-rest))))
                        (set! (&%TCState-marks cst)
                          (if (null? captured-marks)
                            (&%MCFrame-marks cur-pframe)
                            (append captured-marks (&%MCFrame-marks cur-pframe))))
                        (set! (&%TCState-barriers cst) captured-barriers)
                        (set! (&%TCState-handlers cst)
                          (if (null? captured-handlers)
                            (&%MCFrame-handlers cur-pframe)
                            (append captured-handlers (&%MCFrame-handlers cur-pframe))))
                        (cond
                         ((eq? v1 %ABSENT) (##continuation-return sub-k))
                         ((eq? v2 %ABSENT) (##continuation-return sub-k v1))
                         ((eq? v3 %ABSENT) (##continuation-return sub-k v1 v2))
                         ((null? more) (##continuation-return sub-k v1 v2 v3))
                         (else (##apply ##continuation-return sub-k v1 v2 v3 more))))))))
             (proc noncomp-k))))))))

;;;----------------------------------------------------------------------------
;;; Atomic One-Shot Continuations (call/1cc & composable one-shot)

(def (%wrap-one-shot raw-k)
  (let ((state-box (make-atomic-fxbox %CONT-ONE-SHOT-LIVE)))
    (let ((guarded-k
           (lambda ((v1 %ABSENT) (v2 %ABSENT) (v3 %ABSENT) . more)
             (let ((prev (atomic-fxbox-compare-and-swap! state-box
                                                         %CONT-ONE-SHOT-LIVE
                                                         %CONT-ONE-SHOT-CONSUMED
                                                         (memory-order acquire-release))))
               (if (or (fx= prev %CONT-ONE-SHOT-LIVE)
                       (fx= prev %CONT-MULTISHOT-COW))
                 (cond
                  ((eq? v1 %ABSENT) (raw-k))
                  ((eq? v2 %ABSENT) (raw-k v1))
                  ((eq? v3 %ABSENT) (raw-k v1 v2))
                  ((null? more) (raw-k v1 v2 v3))
                  (else (apply raw-k v1 v2 v3 more)))
                 (raise-context-error call/1cc "one-shot continuation already consumed"))))))
      (%register-one-shot! guarded-k state-box))))

(def (call/1cc (proc : :procedure)
               (tag : ContinuationPromptTag := %default-prompt-tag))
  (if (continuation-prompt-available? tag)
    (call-with-non-composable-continuation
     (lambda (raw-k) (proc (%wrap-one-shot raw-k)))
     tag)
    (let ((captured-barriers (&%TCState-barriers (%tc-current))))
      (##continuation-capture
       (lambda (raw-k)
         (proc (%wrap-one-shot
                (lambda ((v1 %ABSENT) (v2 %ABSENT) (v3 %ABSENT) . more)
                  (when (%entering-barrier? captured-barriers (&%TCState-barriers (%tc-current)))
                    (raise-context-error call/1cc
                                         "continuation invocation blocked by continuation barrier"))
                  (cond
                   ((eq? v1 %ABSENT) (##continuation-return raw-k))
                   ((eq? v2 %ABSENT) (##continuation-return raw-k v1))
                   ((eq? v3 %ABSENT) (##continuation-return raw-k v1 v2))
                   ((null? more) (##continuation-return raw-k v1 v2 v3))
                   (else (##apply ##continuation-return raw-k v1 v2 v3 more)))))))))))

(def (call-with-one-shot-composable-continuation (proc : :procedure)
                                                 (tag : ContinuationPromptTag := %default-prompt-tag))
  (call-with-composable-continuation
   (lambda (raw-k) (proc (%wrap-one-shot raw-k)))
   tag))

;;;----------------------------------------------------------------------------
;;; Continuation Marks (O(1) per-thread slot; uses ##tail-call-with-r0 when present)

(def %tail-call-with-r0-prim
  (let ((gv (##global-var-ref (##make-global-var '##tail-call-with-r0))))
    (if (##unbound? gv) #f gv)))

(def %mark-pop-ra #f)

(def (%alist-replace alist key val)
  (let loop ((xs alist) (acc '()))
    (cond
     ((null? xs) (cons (cons key val) (reverse acc)))
     ((eq? (caar xs) key)
      (append (reverse acc) (cons (cons key val) (cdr xs))))
     (else
      (loop (cdr xs) (cons (car xs) acc))))))

(def (%mark-pop-frame res)
  (let* ((st (%tc-current))
         (ms (&%TCState-marks st)))
    (when (pair? ms)
      (set! (&%TCState-marks st) (##cdr ms)))
    res))

(def (%mark-dispatch caller-r0 kv thunk)
  (let* ((st (%tc-current))
         (ms (&%TCState-marks st))
         (key (##car kv))
         (val (##cdr kv)))
    (if (and %mark-pop-ra (eq? caller-r0 %mark-pop-ra) (pair? ms))
      (begin
        (set! (&%TCState-marks st) (cons (%alist-replace (##car ms) key val) (##cdr ms)))
        (thunk))
      (begin
        (set! (&%TCState-marks st) (cons (list (cons key val)) ms))
        (let ((eh (current-exception-handler)))
          (%mark-pop-frame
           (with-exception-handler
            (lambda (e)
              (%mark-pop-frame #f)
              (eh e))
            thunk)))))))

(def (call-with-continuation-mark key val (thunk : :procedure))
  (if %tail-call-with-r0-prim
    (%tail-call-with-r0-prim %mark-dispatch (cons key val) thunk)
    (let* ((st (%tc-current))
           (ms (&%TCState-marks st))
           (eh (current-exception-handler)))
      (set! (&%TCState-marks st) (cons (list (cons key val)) ms))
      (call-with-values
        (lambda ()
          (with-exception-handler
           (lambda (e)
             (let ((cst (%tc-current)))
               (when (pair? (&%TCState-marks cst))
                 (set! (&%TCState-marks cst) (##cdr (&%TCState-marks cst)))))
             (eh e))
           thunk))
        (lambda vals
          (let ((cst (%tc-current)))
            (when (pair? (&%TCState-marks cst))
              (set! (&%TCState-marks cst) (##cdr (&%TCState-marks cst)))))
          (apply values vals))))))

(when %tail-call-with-r0-prim
  (call-with-continuation-mark
   '%srfi226-init
   #t
   (lambda ()
     (%tail-call-with-r0-prim
      (lambda (r0 _ __) (set! %mark-pop-ra r0))
      #f
      #f))))

(defrule (with-continuation-mark key val expr)
  (call-with-continuation-mark key val (lambda () expr)))

(def (current-continuation-marks (tag : ContinuationPromptTag := %default-prompt-tag))
  => ContinuationMarkSet
  (let ((st (##thread-control-state)))
    (if (not (%TCState? st))
      (ContinuationMarkSet '())
      (let-values (((prefix pframe rest) (%mc-split-at-tag (&%TCState-mc st) tag)))
        (if pframe
          (ContinuationMarkSet (%list-prefix-until (&%TCState-marks st) (&%MCFrame-marks pframe)))
          (ContinuationMarkSet (&%TCState-marks st)))))))

(def (continuation-marks cont (tag : ContinuationPromptTag := %default-prompt-tag))
  => ContinuationMarkSet
  (if (ContinuationMarkSet? cont)
    cont
    (current-continuation-marks tag)))

(def (continuation-mark-set->list mark-set key (tag : ContinuationPromptTag := %default-prompt-tag))
  => :list
  (let ((frames (if (ContinuationMarkSet? mark-set)
                  (&ContinuationMarkSet-frames mark-set)
                  (&ContinuationMarkSet-frames (current-continuation-marks tag)))))
    (let loop ((fs frames) (acc '()))
      (if (null? fs)
        (reverse acc)
        (let ((entry (assq key (##car fs))))
          (loop (##cdr fs)
                (if entry (cons (##cdr entry) acc) acc)))))))

(def (continuation-mark-set->list* mark-set key-list (none-v : :t := #f) (tag : ContinuationPromptTag := %default-prompt-tag))
  => :list
  (let ((frames (if (ContinuationMarkSet? mark-set)
                  (&ContinuationMarkSet-frames mark-set)
                  (&ContinuationMarkSet-frames (current-continuation-marks tag))))
        (n (length key-list)))
    (let loop ((fs frames) (acc '()))
      (if (null? fs)
        (reverse acc)
        (let ((alist (##car fs))
              (vec (make-vector n none-v))
              (found? #f))
          (let kloop ((ks key-list) (i 0))
            (when (pair? ks)
              (let ((entry (assq (##car ks) alist)))
                (when entry
                  (vector-set! vec i (##cdr entry))
                  (set! found? #t)))
              (kloop (##cdr ks) (fx+ i 1))))
          (loop (##cdr fs)
                (if found? (cons vec acc) acc)))))))

(def (continuation-mark-set-first mark-set key (none-v : :t := #f) (tag : ContinuationPromptTag := %default-prompt-tag))
  (let ((frames (if (ContinuationMarkSet? mark-set)
                  (&ContinuationMarkSet-frames mark-set)
                  (&ContinuationMarkSet-frames (current-continuation-marks tag)))))
    (let loop ((fs frames))
      (if (null? fs)
        none-v
        (let ((entry (assq key (##car fs))))
          (if entry
            (##cdr entry)
            (loop (##cdr fs))))))))

(def (call-with-immediate-continuation-mark key (proc : :procedure) (default : :t := #f))
  (let ((st (##thread-control-state)))
    (if (or (not (%TCState? st)) (null? (&%TCState-marks st)))
      (proc default)
      (let ((entry (assq key (##car (&%TCState-marks st)))))
        (proc (if entry (##cdr entry) default))))))

;;;----------------------------------------------------------------------------
;;; Delimited Control Sugar: reset / shift

(defrule (reset body ...)
  (call-with-continuation-prompt (lambda () body ...)))

(defrule (shift k body ...)
  (call-with-composable-continuation
   (lambda (%srfi226-raw-k)
     (abort-current-continuation
      (default-continuation-prompt-tag)
      (lambda ()
        (let ((k (lambda %srfi226-args
                   (call-with-continuation-prompt
                    (lambda () (apply %srfi226-raw-k %srfi226-args))))))
          body ...))))))

;;;----------------------------------------------------------------------------
;;; Direct-Style Algebraic Effects (Koka Tail Fast Path + OCaml-5 Suspend + Lexa)

(defstruct Effect (name) final: #t)

(def (make-effect (name : :t := 'effect))
  => Effect
  (Effect name))

(defalias effect? Effect?)
(defalias effect-name Effect-name)

(defrule (define-effect name)
  (def name (make-effect 'name)))

(defstruct %HandlerEntry (effect kind proc) final: #t)
(def (%make-handler-entry eff kind proc)
  (%HandlerEntry eff kind proc))

(defstruct %HandlerFrame (tag entries) final: #t)

(defstruct EffectContinuation
  (sub-k    ; native Gambit continuation
   pframe   ; saved prompt frame for zero-alloc tail-resume
   prefix   ; metacontinuation prefix frames
   marks    ; captured continuation marks
   handlers ; captured inner effect handlers
   frame    ; deep handler frame to reinstall on resume
   thread   ; capturing carrier thread (guards C-runtime stack-rewind fast path)
   state)   ; AtomicFxBox (0=LIVE, 1=CONSUMED, 2=MULTISHOT_COW)
  final: #t)

(defalias effect-continuation? EffectContinuation?)

(def (%entries-lookup entries eff)
  (let loop ((es entries))
    (cond
     ((null? es) #f)
     ((eq? (&%HandlerEntry-effect (##car es)) eff) (##car es))
     (else (loop (##cdr es))))))

(def (%find-handler-frame handlers eff)
  (let loop ((hs handlers))
    (if (null? hs)
      (values #f #f)
      (let* ((frame (##car hs))
             (entry (%entries-lookup (&%HandlerFrame-entries frame) eff)))
        (if entry
          (values frame entry)
          (loop (##cdr hs)))))))

(def (%handlers-prefix-before handlers target-frame)
  (if (or (null? handlers) (eq? (##car handlers) target-frame))
    '()
    (let loop ((hs handlers) (acc '()))
      (if (or (null? hs) (eq? (##car hs) target-frame))
        (reverse acc)
        (loop (##cdr hs) (cons (##car hs) acc))))))

(def (%all-tail-entries? entries)
  (let loop ((es entries))
    (cond
     ((null? es) #t)
     ((eq? (&%HandlerEntry-kind (##car es)) 'tail) (loop (##cdr es)))
     (else #f))))

(def (%call-with-handler-entries entries return-fn thunk)
  (if (%all-tail-entries? entries)
    ;; Koka ICFP '21 Tail-Resumptive Fast Path: zero prompt, zero capture!
    (let* ((st (%tc-current))
           (saved-handlers (&%TCState-handlers st))
           (frame (%HandlerFrame #f entries))
           (eh (current-exception-handler)))
      (set! (&%TCState-handlers st) (cons frame saved-handlers))
      (let ((res (with-exception-handler
                  (lambda (e)
                    (set! (&%TCState-handlers (%tc-current)) saved-handlers)
                    (eh e))
                  thunk)))
        (set! (&%TCState-handlers (%tc-current)) saved-handlers)
        (if return-fn (return-fn res) res)))
    ;; Suspending Handler Path: single ##continuation-capture prompt
    (let* ((tag (make-continuation-prompt-tag 'effect-handler))
           (frame (%HandlerFrame tag entries)))
      (##continuation-capture
       (lambda (escape-k)
         (let* ((st (%tc-current))
                (saved-mc (&%TCState-mc st))
                (saved-marks (&%TCState-marks st))
                (saved-barriers (&%TCState-barriers st))
                (saved-handlers (&%TCState-handlers st))
                (pframe (%MCFrame 'prompt
                                  tag
                                  #f
                                  escape-k
                                  saved-marks
                                  saved-barriers
                                  saved-handlers)))
           (set! (&%TCState-mc st) (cons pframe saved-mc))
           (set! (&%TCState-handlers st) (cons frame saved-handlers))
           (let ((res (%call-with-prompt-exception-guard tag thunk)))
             (if return-fn
               (%mc-return1 (return-fn res))
               (%mc-return1 res)))))))))

(def (perform (eff : Effect) (a1 : :t := %ABSENT) (a2 : :t := %ABSENT) . more)
  (let* ((st (%tc-current))
         (handlers (&%TCState-handlers st)))
    (let-values (((frame entry) (%find-handler-frame handlers eff)))
      (unless frame
        (raise-context-error perform "unhandled effect" (effect-name eff)))
      (if (eq? (&%HandlerEntry-kind entry) 'tail)
        ;; Koka Tail-Resumptive Fast Path: direct call, zero capture!
        (let ((proc (&%HandlerEntry-proc entry)))
          (cond
           ((eq? a1 %ABSENT) (proc))
           ((eq? a2 %ABSENT) (proc a1))
           ((null? more)     (proc a1 a2))
           (else             (apply proc a1 a2 more))))
        ;; Suspending Effect: 1 ##continuation-capture + 1 ##continuation-graft!
        (let ((tag (&%HandlerFrame-tag frame))
              (proc (&%HandlerEntry-proc entry))
              (mc (&%TCState-mc st)))
          (if (and (pair? mc)
                   (eq? (&%MCFrame-kind (##car mc)) 'prompt)
                   (eq? (&%MCFrame-tag (##car mc)) tag)
                   (not (%barrier-between? (&%TCState-barriers st)
                                           (&%MCFrame-barriers (##car mc)))))
            (let* ((pframe (##car mc))
                   (rest (##cdr mc))
                   (cap-marks (%list-prefix-until (&%TCState-marks st)
                                                  (&%MCFrame-marks pframe)))
                   (cap-handlers (%handlers-prefix-before handlers frame))
                   (escape-k (&%MCFrame-escape-k pframe)))
              (##continuation-capture
               (lambda (sub-k)
                 (let ((ek (EffectContinuation
                            sub-k
                            pframe
                            '()
                            cap-marks
                            cap-handlers
                            frame
                            (current-thread)
                            (make-atomic-fxbox %CONT-ONE-SHOT-LIVE))))
                   (set! (&%TCState-mc st) rest)
                   (set! (&%TCState-marks st) (&%MCFrame-marks pframe))
                   (set! (&%TCState-barriers st) (&%MCFrame-barriers pframe))
                   (set! (&%TCState-handlers st) (&%MCFrame-handlers pframe))
                   (cond
                    ((eq? a1 %ABSENT)
                     (##continuation-graft escape-k proc ek))
                    ((eq? a2 %ABSENT)
                     (##continuation-graft escape-k proc ek a1))
                    ((null? more)
                     (##continuation-graft escape-k proc ek a1 a2))
                    (else
                     (##continuation-graft escape-k ##apply proc
                                           (cons ek (cons a1 (cons a2 more))))))))))
            (let-values (((prefix pframe rest) (%mc-split-at-tag mc tag)))
              (unless pframe
                (raise-context-error perform "handler prompt not active" (effect-name eff)))
              (when (%barrier-between? (&%TCState-barriers st)
                                       (&%MCFrame-barriers pframe))
                (raise-context-error perform "cannot suspend across continuation barrier"
                                     (effect-name eff)))
              (let ((cap-marks (%list-prefix-until (&%TCState-marks st)
                                                   (&%MCFrame-marks pframe)))
                    (cap-handlers (%handlers-prefix-before handlers frame))
                    (escape-k (&%MCFrame-escape-k pframe)))
                (##continuation-capture
                 (lambda (sub-k)
                   (let ((ek (EffectContinuation
                              sub-k
                              pframe
                              prefix
                              cap-marks
                              cap-handlers
                              frame
                              (current-thread)
                              (make-atomic-fxbox %CONT-ONE-SHOT-LIVE))))
                     (set! (&%TCState-mc st) rest)
                     (set! (&%TCState-marks st) (&%MCFrame-marks pframe))
                     (set! (&%TCState-barriers st) (&%MCFrame-barriers pframe))
                     (set! (&%TCState-handlers st) (&%MCFrame-handlers pframe))
                     (cond
                      ((eq? a1 %ABSENT)
                       (##continuation-graft escape-k proc ek))
                      ((eq? a2 %ABSENT)
                       (##continuation-graft escape-k proc ek a1))
                      ((null? more)
                       (##continuation-graft escape-k proc ek a1 a2))
                      (else
                       (##continuation-graft escape-k ##apply proc
                                             (cons ek (cons a1 (cons a2 more)))))))))))))))))

(def (%resume-non-tail-fallback sub-k v1)
  (let* ((st (%tc-current))
         (frame (&%TCState-rewind-frame st))
         (mc (&%TCState-mc st))
         (hs (&%TCState-handlers st)))
    ;; Undo speculative pframe reinstall before capturing caller-k
    (set! (&%TCState-rewind-frame st) #f)
    (set! (&%TCState-mc st) (##cdr mc))
    (set! (&%TCState-handlers st) (##cdr hs))
    (##continuation-capture
     (lambda (caller-k)
       (let* ((caller-mc (&%TCState-mc st))
              (caller-marks (&%TCState-marks st))
              (caller-barriers (&%TCState-barriers st))
              (caller-handlers (&%TCState-handlers st))
              (pframe (%MCFrame 'prompt
                                (&%HandlerFrame-tag frame)
                                #f
                                caller-k
                                caller-marks
                                caller-barriers
                                caller-handlers)))
         (set! (&%TCState-mc st) (cons pframe caller-mc))
         (set! (&%TCState-handlers st) (cons frame caller-handlers))
         (##continuation-return sub-k v1))))))

(def (%resume-checked ek v1 v2 more)
  (let ((sub-k (&EffectContinuation-sub-k ek))
        (prefix (&EffectContinuation-prefix ek))
        (cap-marks (&EffectContinuation-marks ek))
        (cap-handlers (&EffectContinuation-handlers ek))
        (frame (&EffectContinuation-frame ek)))
    (##continuation-capture
     (lambda (caller-k)
       (let* ((cst (%tc-current))
              (caller-mc (&%TCState-mc cst))
              (caller-marks (&%TCState-marks cst))
              (caller-barriers (&%TCState-barriers cst))
              (caller-handlers (&%TCState-handlers cst))
              (pframe (%MCFrame 'prompt
                                (&%HandlerFrame-tag frame)
                                #f
                                caller-k
                                caller-marks
                                caller-barriers
                                caller-handlers)))
         (set! (&%TCState-mc cst)
           (if (null? prefix)
             (cons pframe caller-mc)
             (append prefix (cons pframe caller-mc))))
         (set! (&%TCState-marks cst)
           (if (null? cap-marks)
             caller-marks
             (append cap-marks caller-marks)))
         (set! (&%TCState-barriers cst) caller-barriers)
         (set! (&%TCState-handlers cst)
           (if (null? cap-handlers)
             (cons frame caller-handlers)
             (append cap-handlers (cons frame caller-handlers))))
         (cond
          ((eq? v1 %ABSENT) (##continuation-return sub-k))
          ((eq? v2 %ABSENT) (##continuation-return sub-k v1))
          ((null? more)     (##continuation-return sub-k v1 v2))
          (else             (##apply ##continuation-return sub-k v1 v2 more))))))))

(def (resume (ek : EffectContinuation) (v1 : :t := %ABSENT) (v2 : :t := %ABSENT) . more)
  (let* ((state-box (&EffectContinuation-state ek))
         (prev (atomic-fxbox-compare-and-swap! state-box
                                               %CONT-ONE-SHOT-LIVE
                                               %CONT-ONE-SHOT-CONSUMED
                                               (memory-order acquire-release))))
    (unless (or (fx= prev %CONT-ONE-SHOT-LIVE)
                (fx= prev %CONT-MULTISHOT-COW))
      (raise-context-error resume "effect continuation already consumed" ek))
    ;; Phase C3 Fast Path: C-runtime one-shot stack rewind on single-value same-thread resume!
    ;; Cross-thread fiber steals bypass speculative pframe reuse and go directly to %resume-checked.
    (if (and (fx= prev %CONT-ONE-SHOT-LIVE)
             (not (eq? v1 %ABSENT))
             (eq? v2 %ABSENT)
             (null? more)
             (null? (&EffectContinuation-prefix ek))
             (null? (&EffectContinuation-marks ek))
             (null? (&EffectContinuation-handlers ek))
             (&EffectContinuation-pframe ek)
             (eq? (&EffectContinuation-thread ek) (current-thread)))
      (let* ((sub-k (&EffectContinuation-sub-k ek))
             (pframe (&EffectContinuation-pframe ek))
             (frame (&EffectContinuation-frame ek))
             (st (%tc-current)))
        ;; Sever heap references to sub-k before C-runtime stack rewind!
        (set! (&EffectContinuation-sub-k ek) #f)
        (set! (&EffectContinuation-pframe ek) #f)
        (set! (&EffectContinuation-frame ek) #f)
        (set! (&EffectContinuation-thread ek) #f)
        (set! (&%TCState-mc st) (cons pframe (&%TCState-mc st)))
        (set! (&%TCState-handlers st) (cons frame (&%TCState-handlers st)))
        (set! (&%TCState-rewind-escape st) (&%MCFrame-escape-k pframe))
        (set! (&%TCState-rewind-frame st) frame)
        (##continuation-try-rewind-oneshot! sub-k v1 %resume-non-tail-fallback))
      (%resume-checked ek v1 v2 more))))

(def (resume-multishot (ek : EffectContinuation) (v1 : :t := %ABSENT) (v2 : :t := %ABSENT) . more)
  (let* ((state-box (&EffectContinuation-state ek))
         (prev (atomic-fxbox-compare-and-swap! state-box
                                               %CONT-ONE-SHOT-LIVE
                                               %CONT-MULTISHOT-COW
                                               (memory-order acquire-release))))
    (unless (or (fx= prev %CONT-ONE-SHOT-LIVE)
                (fx= prev %CONT-MULTISHOT-COW))
      (raise-context-error resume-multishot "cannot promote consumed one-shot continuation" ek))
    (%resume-checked ek v1 v2 more)))

;;;----------------------------------------------------------------------------
;;; Lexa O(1) Lexical Capability Handles

(defstruct EffectCapability (kind proc frame) final: #t)
(defalias effect-capability? EffectCapability?)

(def (call-with-tail-capability (handler-proc : :procedure) (body-proc : :procedure))
  (body-proc (EffectCapability 'tail handler-proc #f)))

(def (call-with-suspend-capability (handler-proc : :procedure) (body-proc : :procedure))
  (let* ((eff (Effect 'capability))
         (tag (make-continuation-prompt-tag 'cap-handler))
         (entry (%HandlerEntry eff 'suspend handler-proc))
         (frame (%HandlerFrame tag (list entry)))
         (cap (EffectCapability 'suspend handler-proc frame)))
    (##continuation-capture
     (lambda (escape-k)
       (let* ((st (%tc-current))
              (saved-mc (&%TCState-mc st))
              (saved-marks (&%TCState-marks st))
              (saved-barriers (&%TCState-barriers st))
              (saved-handlers (&%TCState-handlers st))
              (pframe (%MCFrame 'prompt
                                tag
                                #f
                                escape-k
                                saved-marks
                                saved-barriers
                                saved-handlers)))
         (set! (&%TCState-mc st) (cons pframe saved-mc))
         (set! (&%TCState-handlers st) (cons frame saved-handlers))
         (%mc-return1 (%call-with-prompt-exception-guard tag (lambda () (body-proc cap)))))))))

(def (perform-cap (cap : EffectCapability) (a1 : :t := %ABSENT) (a2 : :t := %ABSENT) . more)
  (if (eq? (&EffectCapability-kind cap) 'tail)
    (let ((proc (&EffectCapability-proc cap)))
      (cond
       ((eq? a1 %ABSENT) (proc))
       ((eq? a2 %ABSENT) (proc a1))
       ((null? more)     (proc a1 a2))
       (else             (apply proc a1 a2 more))))
    (let* ((st (%tc-current))
           (frame (&EffectCapability-frame cap))
           (tag (&%HandlerFrame-tag frame))
           (proc (&EffectCapability-proc cap))
           (mc (&%TCState-mc st))
           (handlers (&%TCState-handlers st)))
      (if (and (pair? mc)
               (eq? (&%MCFrame-kind (##car mc)) 'prompt)
               (eq? (&%MCFrame-tag (##car mc)) tag)
               (not (%barrier-between? (&%TCState-barriers st)
                                       (&%MCFrame-barriers (##car mc)))))
        (let* ((pframe (##car mc))
               (rest (##cdr mc))
               (cap-marks (%list-prefix-until (&%TCState-marks st)
                                              (&%MCFrame-marks pframe)))
               (cap-handlers (%handlers-prefix-before handlers frame))
               (escape-k (&%MCFrame-escape-k pframe)))
          (##continuation-capture
           (lambda (sub-k)
             (let ((ek (EffectContinuation
                        sub-k pframe '() cap-marks cap-handlers frame (current-thread)
                        (make-atomic-fxbox %CONT-ONE-SHOT-LIVE))))
               (set! (&%TCState-mc st) rest)
               (set! (&%TCState-marks st) (&%MCFrame-marks pframe))
               (set! (&%TCState-barriers st) (&%MCFrame-barriers pframe))
               (set! (&%TCState-handlers st) (&%MCFrame-handlers pframe))
               (cond
                ((eq? a1 %ABSENT) (##continuation-graft escape-k proc ek))
                ((eq? a2 %ABSENT) (##continuation-graft escape-k proc ek a1))
                ((null? more)     (##continuation-graft escape-k proc ek a1 a2))
                (else             (##continuation-graft escape-k ##apply proc
                                                        (cons ek (cons a1 (cons a2 more))))))))))
        (let-values (((prefix pframe rest) (%mc-split-at-tag mc tag)))
          (unless pframe
            (raise-context-error perform-cap "capability prompt not active"))
          (when (%barrier-between? (&%TCState-barriers st) (&%MCFrame-barriers pframe))
            (raise-context-error perform-cap "cannot suspend across continuation barrier"))
          (let ((cap-marks (%list-prefix-until (&%TCState-marks st) (&%MCFrame-marks pframe)))
                (cap-handlers (%handlers-prefix-before handlers frame))
                (escape-k (&%MCFrame-escape-k pframe)))
            (##continuation-capture
             (lambda (sub-k)
               (let ((ek (EffectContinuation
                          sub-k pframe prefix cap-marks cap-handlers frame (current-thread)
                          (make-atomic-fxbox %CONT-ONE-SHOT-LIVE))))
                 (set! (&%TCState-mc st) rest)
                 (set! (&%TCState-marks st) (&%MCFrame-marks pframe))
                 (set! (&%TCState-barriers st) (&%MCFrame-barriers pframe))
                 (set! (&%TCState-handlers st) (&%MCFrame-handlers pframe))
                 (cond
                  ((eq? a1 %ABSENT) (##continuation-graft escape-k proc ek))
                  ((eq? a2 %ABSENT) (##continuation-graft escape-k proc ek a1))
                  ((null? more)     (##continuation-graft escape-k proc ek a1 a2))
                  (else             (##continuation-graft escape-k ##apply proc
                                                          (cons ek (cons a1 (cons a2 more)))))))))))))))

;;;----------------------------------------------------------------------------
;;; with-handler Syntax

(defsyntax (with-handler stx)
  (syntax-case stx ()
    ((_ (clause ...) body ...)
     (let loop ((cs (syntax->list #'(clause ...)))
                (entries '())
                (ret-fn #'#f))
       (if (null? cs)
         (with-syntax (((entry-expr ...) (reverse entries))
                       (ret-expr ret-fn))
           #'(%call-with-handler-entries
              (list entry-expr ...)
              ret-expr
              (lambda () body ...)))
         (syntax-case (car cs) ()
           ((return: (x) rbody ...)
            (loop (cdr cs) entries #'(lambda (x) rbody ...)))
           ((tail: (eff args ...) hbody ...)
            (loop (cdr cs)
                  (cons #'(%make-handler-entry eff 'tail (lambda (args ...) hbody ...))
                        entries)
                  ret-fn))
           (((eff args ...) hbody ...)
            (loop (cdr cs)
                  (cons #'(%make-handler-entry eff 'suspend (lambda (args ...) hbody ...))
                        entries)
                  ret-fn))))))))

;;;----------------------------------------------------------------------------
;;; Direct-Style Generators (Zero-Closure Reuse via One-Shot Continuation Rewind)

(def %eff-yield (make-effect 'generator-yield))

(def (yield val)
  (perform %eff-yield val))

(def (make-generator (thunk : :procedure))
  (let ((state 'init)
        (saved-k #f))
    (lambda ((send-val (void)))
      (cond
       ((eq? state 'done)
        #!eof)
       ((eq? state 'init)
        (set! state 'running)
        (with-handler
          ((( %eff-yield k val)
            (set! saved-k k)
            (set! state 'suspended)
            val)
           (return: (_)
            (set! saved-k #f)
            (set! state 'done)
            #!eof))
          (thunk)))
       ((eq? state 'suspended)
        (let ((k saved-k))
          (set! saved-k #f)
          (set! state 'running)
          (resume k send-val)))
       (else
        (raise-context-error make-generator "cannot reenter running generator"))))))

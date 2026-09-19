(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1789839226)
  (begin
    (declare (not safe))
    (define gx#*core-syntax-expanders*
      (list (list '%#begin
                  'top:
                  gx#core-expand-begin%
                  gx#core-compile-top-begin%)
            (list '%#begin-syntax
                  'top:
                  gx#core-expand-begin-syntax%
                  gx#core-compile-top-begin-syntax%)
            (list '%#begin-foreign
                  'top:
                  gx#core-expand-begin-foreign%
                  gx#core-compile-top-begin-foreign%)
            (cons '%#begin-module
                  (cons 'top: (cons gx#core-expand-begin-module% '(#f))))
            (list '%#extern
                  'top:
                  gx#core-expand-extern%
                  gx#core-compile-top-extern%)
            (list '%#import
                  'top:
                  gx#core-expand-import%
                  gx#core-compile-top-import%)
            (list '%#module
                  'top:
                  gx#core-expand-module%
                  gx#core-compile-top-module%)
            (list '%#export
                  'top:
                  gx#core-expand-export%
                  gx#core-compile-top-export%)
            (list '%#provide
                  'module:
                  gx#core-expand-provide%
                  gx#core-compile-top-provide%)
            (list '%#declare
                  'module:
                  gx#core-expand-declare%
                  gx#core-compile-top-declare%)
            (cons '%#cond-expand
                  (cons 'special: (cons gx#core-expand-cond-expand% '(#f))))
            (cons '%#include
                  (cons 'special: (cons gx#core-expand-include% '(#f))))
            (list '%#define-values
                  'define:
                  gx#core-expand-define-values%
                  gx#core-compile-top-define-values%)
            (list '%#define-syntax
                  'define:
                  gx#core-expand-define-syntax%
                  gx#core-compile-top-define-syntax%)
            (list '%#define-alias
                  'define:
                  gx#core-expand-define-alias%
                  gx#core-compile-top-define-alias%)
            (list '%#define-runtime
                  'define:
                  gx#core-expand-define-runtime%
                  gx#core-compile-top-define-runtime%)
            (list '%#begin-annotation
                  'expr:
                  gx#core-expand-begin-annotation%
                  gx#core-compile-top-begin-annotation%)
            (list '%#lambda
                  'expr:
                  gx#core-expand-lambda%
                  gx#core-compile-top-lambda%)
            (list '%#case-lambda
                  'expr:
                  gx#core-expand-case-lambda%
                  gx#core-compile-top-case-lambda%)
            (list '%#let-values
                  'expr:
                  gx#core-expand-let-values%
                  gx#core-compile-top-let-values%)
            (list '%#letrec-values
                  'expr:
                  gx#core-expand-letrec-values%
                  gx#core-compile-top-letrec-values%)
            (list '%#letrec*-values
                  'expr:
                  gx#core-expand-letrec*-values%
                  gx#core-compile-top-letrec*-values%)
            (cons '%#let-syntax
                  (cons 'expr: (cons gx#core-expand-let-syntax% '(#f))))
            (cons '%#letrec-syntax
                  (cons 'expr: (cons gx#core-expand-letrec-syntax% '(#f))))
            (list '%#quote
                  'expr:
                  gx#core-expand-quote%
                  gx#core-compile-top-quote%)
            (list '%#quote-syntax
                  'expr:
                  gx#core-expand-quote-syntax%
                  gx#core-compile-top-quote-syntax%)
            (list '%#call
                  'expr:
                  gx#core-expand-call%
                  gx#core-compile-top-call%)
            (list '%#if 'expr: gx#core-expand-if% gx#core-compile-top-if%)
            (list '%#ref 'expr: gx#core-expand-ref% gx#core-compile-top-ref%)
            (list '%#set!
                  'expr:
                  gx#core-expand-setq%
                  gx#core-compile-top-setq%)
            (cons '%#expression
                  (cons 'expr: (cons gx#core-expand-expression% '(#f))))
            (cons '%#bind-runtime-properties!
                  (cons 'special:
                        (cons gx#core-expand-bind-runtime-properties%
                              '(#f))))))
    (define gx#*core-macro-expanders*
      (cons '(begin => %#begin)
            (cons '(begin-syntax => %#begin-syntax)
                  (cons '(begin-foreign => %#begin-foreign)
                        (cons '(begin-annotation => %#begin-annotation)
                              (cons '(import => %#import)
                                    (cons '(module => %#module)
                                          (cons '(export => %#export)
                                                (cons '(provide => %#provide)
                                                      (cons '(declare
                                                               =>
                                                               %#declare)
                                                            (cons '(include =>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    %#include)
                          (cons '(cond-expand => %#cond-expand)
                                (cons '(quote => %#quote)
                                      (cons '(quote-syntax => %#quote-syntax)
                                            (cons '(let-syntax => %#let-syntax)
                                                  (cons '(letrec-syntax
                                                          =>
                                                          %#letrec-syntax)
                                                        (cons '(define-values =>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         %#define-values)
                      (cons '(define-runtime => %#define-runtime)
                            (cons '(define-syntax => %#define-syntax)
                                  (cons '(define-alias => %#define-alias)
                                        (cons (list 'extern
                                                    gx#macro-expand-extern)
                                              (cons (list 'lambda%
                                                          gx#macro-expand-lambda%)
                                                    (cons (list 'case-lambda
                                                                gx#macro-expand-case-lambda)
                                                          (cons (list 'let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#macro-expand-let-values)
                        (cons (list 'letrec-values
                                    gx#macro-expand-letrec-values)
                              (cons (list 'letrec*-values
                                          gx#macro-expand-letrec*-values)
                                    (cons (list 'if gx#macro-expand-if)
                                          '((%%app => %#call)
                                            (%%ref => %#ref)
                                            (%%begin-module => %#begin-module)
                                            (_)
                                            (...)
                                            (else)
                                            (=>)
                                            (unquote)
                                            (unquote-splicing)
                                            (unsyntax)
                                            (unsyntax-splicing)))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define gx#root-context:::init!__%
      (lambda (_%self200250%_ _%bind?200251%_)
        (let ((_%self200254%_ _%self200250%_))
          (if (##fx< '2 (##structure-length _%self200254%_))
              (begin
                (##unchecked-structure-set! _%self200254%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self200254%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self200254%_
                     '2
                     (##structure-length _%self200254%_)))
          (if _%bind?200251%_
              (begin
                (let ((__method200318
                       (__method-ref
                        _%self200254%_
                        'bind-core-syntax-expanders!)))
                  (if __method200318
                      (__method200318 _%self200254%_)
                      (begin
                        (error '"Missing method"
                               _%self200254%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method200319
                       (__method-ref
                        _%self200254%_
                        'bind-core-macro-expanders!)))
                  (if __method200319
                      (__method200319 _%self200254%_)
                      (begin
                        (error '"Missing method"
                               _%self200254%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method200320
                       (__method-ref _%self200254%_ 'bind-core-features!)))
                  (if __method200320
                      (__method200320 _%self200254%_)
                      (begin
                        (error '"Missing method"
                               _%self200254%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self200268%_)
        (let ((_%bind?200270%_ '#t))
          (gx#root-context:::init!__% _%self200268%_ _%bind?200270%_))))
    (define gx#root-context:::init!
      (lambda _g200324_
        (let ((_g200325_ (##length _g200324_)))
          (cond ((##fx= _g200325_ 1)
                 (apply gx#root-context:::init!__0 _g200324_))
                ((##fx= _g200325_ 2)
                 (apply gx#root-context:::init!__% _g200324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g200324_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass200274 __method-table200275)
        (let ((__bind-core-syntax-expanders!200276
               (__make-promise
                (lambda ()
                  (let ((__method200279
                         (symbolic-table-ref
                          __method-table200275
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method200279
                        __method200279
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!200277
               (__make-promise
                (lambda ()
                  (let ((__method200280
                         (symbolic-table-ref
                          __method-table200275
                          'bind-core-features!
                          '#f)))
                    (if __method200280
                        __method200280
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!200278
               (__make-promise
                (lambda ()
                  (let ((__method200281
                         (symbolic-table-ref
                          __method-table200275
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method200281
                        __method200281
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%$%opt-lambda200248200265%_
                 (lambda (_%self200250%_ _%bind?200251%_)
                   (let ((_%self200254%_ _%self200250%_))
                     (if (##fx< '2 (##structure-length _%self200254%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self200254%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self200254%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self200254%_
                                '2
                                (##structure-length _%self200254%_)))
                     (if _%bind?200251%_
                         (begin
                           ((force __bind-core-syntax-expanders!200276)
                            _%self200254%_)
                           ((force __bind-core-macro-expanders!200278)
                            _%self200254%_)
                           ((force __bind-core-features!200277)
                            _%self200254%_))
                         '#!void)))))
            (lambda _g200326_
              (let ((_g200327_ (##length _g200326_)))
                (cond ((##fx= _g200327_ 1)
                       (apply (lambda (_%self200268%_)
                                (let ((_%bind?200270%_ '#t))
                                  (_%$%opt-lambda200248200265%_
                                   _%self200268%_
                                   _%bind?200270%_)))
                              _g200326_))
                      ((##fx= _g200327_ 2)
                       (apply _%$%opt-lambda200248200265%_ _g200326_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g200326_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self200095%_ _%super200096%_)
        (let* ((_%self200099%_ _%self200095%_)
               (_%super200115%_
                (let ((_%$e200109%_ _%super200096%_))
                  (if _%$e200109%_
                      _%$e200109%_
                      (let ((_%$e200112%_ (gx#core-context-root__0)))
                        (if _%$e200112%_
                            _%$e200112%_
                            (let ((__obj200321
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj200321)
                              __obj200321)))))))
          (if (##fx< '5 (##structure-length _%self200099%_))
              (begin
                (##unchecked-structure-set! _%self200099%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self200099%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self200099%_
                 _%super200115%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self200099%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self200099%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self200099%_
                     '5
                     (##structure-length _%self200099%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self200120%_)
        (let ((_%super200122%_ '#f))
          (gx#top-context:::init!__% _%self200120%_ _%super200122%_))))
    (define gx#top-context:::init!
      (lambda _g200328_
        (let ((_g200329_ (##length _g200328_)))
          (cond ((##fx= _g200329_ 1)
                 (apply gx#top-context:::init!__0 _g200328_))
                ((##fx= _g200329_ 2)
                 (apply gx#top-context:::init!__% _g200328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g200328_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self199816%_ _%bindings199817%_)
        (let ((_%self199820%_ _%self199816%_))
          (for-each
           (lambda (_%bind199830%_)
             (let* ((_%$%bind199831199838%_ _%bind199830%_)
                    (_%$%E199833199841%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind199831199838%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K199834199950%_
                     (lambda (_%rest199844%_ _%id199845%_)
                       (gx#core-context-put!
                        _%self199820%_
                        _%id199845%_
                        (let ((__obj200322
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj200322
                           _%id199845%_
                           _%id199845%_
                           '#f
                           (let* ((_%$%rest199846199857%_ _%rest199844%_)
                                  (_%$%E199848199861%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest199846199857%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K199849199926%_
                                   (lambda (_%compiler199864%_
                                            _%expander199865%_
                                            _%key199866%_)
                                     ((let* ((_%$%key199867199880%_
                                              _%key199866%_)
                                             (_%$%E199873199884%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key199867199880%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K199878199920%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K199877199913%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K199876199905%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K199875199897%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K199874199889%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match199872199892%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key199867199880%_
                                                               'expr:)
                                                        (_%$%K199874199889%_)
                                                        (_%$%E199873199884%_))))
                                                 (_%$%try-match199871199900%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key199867199880%_
                                                               'special:)
                                                        (_%$%K199875199897%_)
                                                        (_%$%try-match199872199892%_))))
                                                 (_%$%try-match199870199908%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key199867199880%_
                                                               'define:)
                                                        (_%$%K199876199905%_)
                                                        (_%$%try-match199871199900%_))))
                                                 (_%$%try-match199869199916%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key199867199880%_
                                                               'module:)
                                                        (_%$%K199877199913%_)
                                                        (_%$%try-match199870199908%_)))))
                                            (if (##eq? _%$%key199867199880%_
                                                       'top:)
                                                (_%$%K199878199920%_)
                                                (_%$%try-match199869199916%_)))))
                                      _%expander199865%_
                                      _%id199845%_
                                      (let ((_%$e199923%_ _%compiler199864%_))
                                        (if _%$e199923%_
                                            _%$e199923%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest199846199857%_)
                                 (let ((_%$%hd199850199929%_
                                        (##car _%$%rest199846199857%_))
                                       (_%$%tl199851199931%_
                                        (##cdr _%$%rest199846199857%_)))
                                   (let ((_%key199934%_ _%$%hd199850199929%_))
                                     (if (pair? _%$%tl199851199931%_)
                                         (let ((_%$%hd199852199936%_
                                                (##car _%$%tl199851199931%_))
                                               (_%$%tl199853199938%_
                                                (##cdr _%$%tl199851199931%_)))
                                           (let ((_%expander199941%_
                                                  _%$%hd199852199936%_))
                                             (if (pair? _%$%tl199853199938%_)
                                                 (let ((_%$%hd199854199943%_
                                                        (##car _%$%tl199853199938%_))
                                                       (_%$%tl199855199945%_
                                                        (##cdr _%$%tl199853199938%_)))
                                                   (let ((_%compiler199948%_
                                                          _%$%hd199854199943%_))
                                                     (if (null? _%$%tl199855199945%_)
                                                         (_%$%K199849199926%_
                                                          _%compiler199948%_
                                                          _%expander199941%_
                                                          _%key199934%_)
                                                         (_%$%E199848199861%_))))
                                                 (_%$%E199848199861%_))))
                                         (_%$%E199848199861%_))))
                                 (_%$%E199848199861%_))))
                          __obj200322)))))
               (if (pair? _%$%bind199831199838%_)
                   (let ((_%$%hd199835199953%_ (##car _%$%bind199831199838%_))
                         (_%$%tl199836199955%_ (##cdr _%$%bind199831199838%_)))
                     (let* ((_%id199958%_ _%$%hd199835199953%_)
                            (_%rest199960%_ _%$%tl199836199955%_))
                       (_%$%K199834199950%_ _%rest199960%_ _%id199958%_)))
                   (_%$%E199833199841%_))))
           _%bindings199817%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self199965%_)
        (let ((_%bindings199967%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self199965%_
           _%bindings199967%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g200330_
        (let ((_g200331_ (##length _g200330_)))
          (cond ((##fx= _g200331_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g200330_))
                ((##fx= _g200331_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g200330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g200330_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self199578%_ _%bindings199579%_)
        (let ((_%self199582%_ _%self199578%_))
          (for-each
           (lambda (_%bind199592%_)
             (let* ((_%$%bind199593199600%_ _%bind199592%_)
                    (_%$%E199595199603%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind199593199600%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K199596199671%_
                     (lambda (_%rest199606%_ _%id199607%_)
                       (gx#core-context-put!
                        _%self199582%_
                        _%id199607%_
                        (let ((__obj200323
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj200323
                           _%id199607%_
                           _%id199607%_
                           '#f
                           (let* ((_%$%rest199608199623%_ _%rest199606%_)
                                  (_%$%E199612199627%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest199608199623%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K199617199656%_
                                    (lambda (_%core-id199654%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id199654%_)))
                                   (_%$%K199614199641%_
                                    (lambda (_%proc199639%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc199639%_)))
                                   (_%$%K199613199632%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id199607%_))))
                               (let ((_%$%try-match199611199635%_
                                      (lambda ()
                                        (if (null? _%$%rest199608199623%_)
                                            (_%$%K199613199632%_)
                                            (_%$%E199612199627%_)))))
                                 (if (pair? _%$%rest199608199623%_)
                                     (let ((_%$%tl199619199661%_
                                            (##cdr _%$%rest199608199623%_))
                                           (_%$%hd199618199659%_
                                            (##car _%$%rest199608199623%_)))
                                       (if (##eq? _%$%hd199618199659%_ '=>)
                                           (if (pair? _%$%tl199619199661%_)
                                               (let ((_%$%tl199621199666%_
                                                      (##cdr _%$%tl199619199661%_))
                                                     (_%$%hd199620199664%_
                                                      (##car _%$%tl199619199661%_)))
                                                 (if (null? _%$%tl199621199666%_)
                                                     (let ((_%core-id199669%_
                                                            _%$%hd199620199664%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id199669%_))
                                                     (_%$%E199612199627%_)))
                                               (if (null? _%$%tl199619199661%_)
                                                   (let ((_%proc199649%_
                                                          _%$%hd199618199659%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc199649%_))
                                                   (_%$%E199612199627%_)))
                                           (if (null? _%$%tl199619199661%_)
                                               (let ((_%proc199649%_
                                                      _%$%hd199618199659%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc199649%_))
                                               (_%$%E199612199627%_))))
                                     (_%$%try-match199611199635%_))))))
                          __obj200323)))))
               (if (pair? _%$%bind199593199600%_)
                   (let ((_%$%hd199597199674%_ (##car _%$%bind199593199600%_))
                         (_%$%tl199598199676%_ (##cdr _%$%bind199593199600%_)))
                     (let* ((_%id199679%_ _%$%hd199597199674%_)
                            (_%rest199681%_ _%$%tl199598199676%_))
                       (_%$%K199596199671%_ _%rest199681%_ _%id199679%_)))
                   (_%$%E199595199603%_))))
           _%bindings199579%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self199686%_)
        (let ((_%bindings199688%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self199686%_
           _%bindings199688%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g200332_
        (let ((_g200333_ (##length _g200332_)))
          (cond ((##fx= _g200333_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g200332_))
                ((##fx= _g200333_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g200332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g200332_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self199309%_)
        (let ((_%self199312%_ _%self199309%_))
          (letrec ((_%linux-variant?199323%_
                    (lambda (_%sys-type199423%_)
                      (let* ((_%$%g199424199432%_
                              (__string-split
                               (symbol->string _%sys-type199423%_)
                               '#\-))
                             (_%$%else199426199440%_ (lambda () '#f))
                             (_%$%K199428199445%_
                              (lambda (_%rest199443%_)
                                (not (null? _%rest199443%_)))))
                        (if (pair? _%$%g199424199432%_)
                            (let ((_%$%hd199429199448%_
                                   (##car _%$%g199424199432%_))
                                  (_%$%tl199430199450%_
                                   (##cdr _%$%g199424199432%_)))
                              (if (equal? _%$%hd199429199448%_ '"linux")
                                  (let ((_%rest199453%_ _%$%tl199430199450%_))
                                    (_%$%K199428199445%_ _%rest199453%_))
                                  (_%$%else199426199440%_)))
                            (_%$%else199426199440%_)))))
                   (_%bsd-variant199324%_
                    (lambda (_%sys-type199382%_)
                      (let ((_%sys-type-str199384%_
                             (symbol->string _%sys-type199382%_)))
                        (let _%lp199386%_ ((_%rest199388%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest199389199397%_ _%rest199388%_)
                                 (_%$%else199391199405%_ (lambda () '#f))
                                 (_%$%K199393199411%_
                                  (lambda (_%rest199408%_ _%sys199409%_)
                                    (if (string-prefix?
                                         _%sys199409%_
                                         _%sys-type-str199384%_)
                                        _%sys199409%_
                                        (_%lp199386%_ _%rest199408%_)))))
                            (if (pair? _%$%rest199389199397%_)
                                (let ((_%$%hd199394199414%_
                                       (##car _%$%rest199389199397%_))
                                      (_%$%tl199395199416%_
                                       (##cdr _%$%rest199389199397%_)))
                                  (let* ((_%sys199419%_ _%$%hd199394199414%_)
                                         (_%rest199421%_ _%$%tl199395199416%_))
                                    (_%$%K199393199411%_
                                     _%rest199421%_
                                     _%sys199419%_)))
                                (_%$%else199391199405%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self199312%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self199312%_)
            (let* ((_%$%g199325199337%_ (system-type))
                   (_%$%else199327199345%_ (lambda () '#!void))
                   (_%$%K199329199358%_
                    (lambda (_%sys-type199348%_
                             _%sys-vendor199349%_
                             _%sys-cpu199350%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu199350%_
                       '#f
                       '0
                       _%self199312%_)
                      (gx#core-bind-feature!__%
                       _%sys-type199348%_
                       '#f
                       '0
                       _%self199312%_)
                      (if (_%linux-variant?199323%_ _%sys-type199348%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self199312%_)
                          (let ((_%$e199353%_
                                 (_%bsd-variant199324%_ _%sys-type199348%_)))
                            (if _%$e199353%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self199312%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e199353%_)
                                   '#f
                                   '0
                                   _%self199312%_))
                                '#!void))))))
              (if (pair? _%$%g199325199337%_)
                  (let ((_%$%hd199330199361%_ (##car _%$%g199325199337%_))
                        (_%$%tl199331199363%_ (##cdr _%$%g199325199337%_)))
                    (let ((_%sys-cpu199366%_ _%$%hd199330199361%_))
                      (if (pair? _%$%tl199331199363%_)
                          (let ((_%$%hd199332199368%_
                                 (##car _%$%tl199331199363%_))
                                (_%$%tl199333199370%_
                                 (##cdr _%$%tl199331199363%_)))
                            (let ((_%sys-vendor199373%_ _%$%hd199332199368%_))
                              (if (pair? _%$%tl199333199370%_)
                                  (let ((_%$%hd199334199375%_
                                         (##car _%$%tl199333199370%_))
                                        (_%$%tl199335199377%_
                                         (##cdr _%$%tl199333199370%_)))
                                    (let ((_%sys-type199380%_
                                           _%$%hd199334199375%_))
                                      (if (null? _%$%tl199335199377%_)
                                          (_%$%K199329199358%_
                                           _%sys-type199380%_
                                           _%sys-vendor199373%_
                                           _%sys-cpu199366%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self199312%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))

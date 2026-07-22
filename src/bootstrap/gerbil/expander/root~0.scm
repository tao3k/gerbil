(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1784758125)
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
      (lambda (_%self198075%_ _%bind?198076%_)
        (let ((_%self198079%_ _%self198075%_))
          (if (##fx< '2 (##structure-length _%self198079%_))
              (begin
                (##unchecked-structure-set! _%self198079%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self198079%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self198079%_
                     '2
                     (##structure-length _%self198079%_)))
          (if _%bind?198076%_
              (begin
                (let ((__method198143
                       (__method-ref
                        _%self198079%_
                        'bind-core-syntax-expanders!)))
                  (if __method198143
                      (__method198143 _%self198079%_)
                      (begin
                        (error '"Missing method"
                               _%self198079%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method198144
                       (__method-ref
                        _%self198079%_
                        'bind-core-macro-expanders!)))
                  (if __method198144
                      (__method198144 _%self198079%_)
                      (begin
                        (error '"Missing method"
                               _%self198079%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method198145
                       (__method-ref _%self198079%_ 'bind-core-features!)))
                  (if __method198145
                      (__method198145 _%self198079%_)
                      (begin
                        (error '"Missing method"
                               _%self198079%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self198093%_)
        (let ((_%bind?198095%_ '#t))
          (gx#root-context:::init!__% _%self198093%_ _%bind?198095%_))))
    (define gx#root-context:::init!
      (lambda _g198149_
        (let ((_g198150_ (##length _g198149_)))
          (cond ((##fx= _g198150_ 1)
                 (apply gx#root-context:::init!__0 _g198149_))
                ((##fx= _g198150_ 2)
                 (apply gx#root-context:::init!__% _g198149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g198149_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass198099 __method-table198100)
        (let ((__bind-core-features!198101
               (__make-promise
                (lambda ()
                  (let ((__method198104
                         (symbolic-table-ref
                          __method-table198100
                          'bind-core-features!
                          '#f)))
                    (if __method198104
                        __method198104
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!198102
               (__make-promise
                (lambda ()
                  (let ((__method198105
                         (symbolic-table-ref
                          __method-table198100
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method198105
                        __method198105
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!198103
               (__make-promise
                (lambda ()
                  (let ((__method198106
                         (symbolic-table-ref
                          __method-table198100
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method198106
                        __method198106
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%$%opt-lambda198073198090%_
                 (lambda (_%self198075%_ _%bind?198076%_)
                   (let ((_%self198079%_ _%self198075%_))
                     (if (##fx< '2 (##structure-length _%self198079%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self198079%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self198079%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self198079%_
                                '2
                                (##structure-length _%self198079%_)))
                     (if _%bind?198076%_
                         (begin
                           ((force __bind-core-syntax-expanders!198102)
                            _%self198079%_)
                           ((force __bind-core-macro-expanders!198103)
                            _%self198079%_)
                           ((force __bind-core-features!198101)
                            _%self198079%_))
                         '#!void)))))
            (lambda _g198151_
              (let ((_g198152_ (##length _g198151_)))
                (cond ((##fx= _g198152_ 1)
                       (apply (lambda (_%self198093%_)
                                (let ((_%bind?198095%_ '#t))
                                  (_%$%opt-lambda198073198090%_
                                   _%self198093%_
                                   _%bind?198095%_)))
                              _g198151_))
                      ((##fx= _g198152_ 2)
                       (apply _%$%opt-lambda198073198090%_ _g198151_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g198151_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self197920%_ _%super197921%_)
        (let* ((_%self197924%_ _%self197920%_)
               (_%super197940%_
                (let ((_%$e197934%_ _%super197921%_))
                  (if _%$e197934%_
                      _%$e197934%_
                      (let ((_%$e197937%_ (gx#core-context-root__0)))
                        (if _%$e197937%_
                            _%$e197937%_
                            (let ((__obj198146
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj198146)
                              __obj198146)))))))
          (if (##fx< '5 (##structure-length _%self197924%_))
              (begin
                (##unchecked-structure-set! _%self197924%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self197924%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197924%_
                 _%super197940%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self197924%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self197924%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self197924%_
                     '5
                     (##structure-length _%self197924%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self197945%_)
        (let ((_%super197947%_ '#f))
          (gx#top-context:::init!__% _%self197945%_ _%super197947%_))))
    (define gx#top-context:::init!
      (lambda _g198153_
        (let ((_g198154_ (##length _g198153_)))
          (cond ((##fx= _g198154_ 1)
                 (apply gx#top-context:::init!__0 _g198153_))
                ((##fx= _g198154_ 2)
                 (apply gx#top-context:::init!__% _g198153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g198153_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self197641%_ _%bindings197642%_)
        (let ((_%self197645%_ _%self197641%_))
          (for-each
           (lambda (_%bind197655%_)
             (let* ((_%$%bind197656197663%_ _%bind197655%_)
                    (_%$%E197658197666%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind197656197663%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K197659197775%_
                     (lambda (_%rest197669%_ _%id197670%_)
                       (gx#core-context-put!
                        _%self197645%_
                        _%id197670%_
                        (let ((__obj198147
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj198147
                           _%id197670%_
                           _%id197670%_
                           '#f
                           (let* ((_%$%rest197671197682%_ _%rest197669%_)
                                  (_%$%E197673197686%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest197671197682%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K197674197751%_
                                   (lambda (_%compiler197689%_
                                            _%expander197690%_
                                            _%key197691%_)
                                     ((let* ((_%$%key197692197705%_
                                              _%key197691%_)
                                             (_%$%E197698197709%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key197692197705%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K197703197745%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K197702197738%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K197701197730%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K197700197722%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K197699197714%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match197697197717%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197692197705%_
                                                               'expr:)
                                                        (_%$%K197699197714%_)
                                                        (_%$%E197698197709%_))))
                                                 (_%$%try-match197696197725%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197692197705%_
                                                               'special:)
                                                        (_%$%K197700197722%_)
                                                        (_%$%try-match197697197717%_))))
                                                 (_%$%try-match197695197733%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197692197705%_
                                                               'define:)
                                                        (_%$%K197701197730%_)
                                                        (_%$%try-match197696197725%_))))
                                                 (_%$%try-match197694197741%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197692197705%_
                                                               'module:)
                                                        (_%$%K197702197738%_)
                                                        (_%$%try-match197695197733%_)))))
                                            (if (##eq? _%$%key197692197705%_
                                                       'top:)
                                                (_%$%K197703197745%_)
                                                (_%$%try-match197694197741%_)))))
                                      _%expander197690%_
                                      _%id197670%_
                                      (let ((_%$e197748%_ _%compiler197689%_))
                                        (if _%$e197748%_
                                            _%$e197748%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest197671197682%_)
                                 (let ((_%$%hd197675197754%_
                                        (##car _%$%rest197671197682%_))
                                       (_%$%tl197676197756%_
                                        (##cdr _%$%rest197671197682%_)))
                                   (let ((_%key197759%_ _%$%hd197675197754%_))
                                     (if (pair? _%$%tl197676197756%_)
                                         (let ((_%$%hd197677197761%_
                                                (##car _%$%tl197676197756%_))
                                               (_%$%tl197678197763%_
                                                (##cdr _%$%tl197676197756%_)))
                                           (let ((_%expander197766%_
                                                  _%$%hd197677197761%_))
                                             (if (pair? _%$%tl197678197763%_)
                                                 (let ((_%$%hd197679197768%_
                                                        (##car _%$%tl197678197763%_))
                                                       (_%$%tl197680197770%_
                                                        (##cdr _%$%tl197678197763%_)))
                                                   (let ((_%compiler197773%_
                                                          _%$%hd197679197768%_))
                                                     (if (null? _%$%tl197680197770%_)
                                                         (_%$%K197674197751%_
                                                          _%compiler197773%_
                                                          _%expander197766%_
                                                          _%key197759%_)
                                                         (_%$%E197673197686%_))))
                                                 (_%$%E197673197686%_))))
                                         (_%$%E197673197686%_))))
                                 (_%$%E197673197686%_))))
                          __obj198147)))))
               (if (pair? _%$%bind197656197663%_)
                   (let ((_%$%hd197660197778%_ (##car _%$%bind197656197663%_))
                         (_%$%tl197661197780%_ (##cdr _%$%bind197656197663%_)))
                     (let* ((_%id197783%_ _%$%hd197660197778%_)
                            (_%rest197785%_ _%$%tl197661197780%_))
                       (_%$%K197659197775%_ _%rest197785%_ _%id197783%_)))
                   (_%$%E197658197666%_))))
           _%bindings197642%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self197790%_)
        (let ((_%bindings197792%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self197790%_
           _%bindings197792%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g198155_
        (let ((_g198156_ (##length _g198155_)))
          (cond ((##fx= _g198156_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g198155_))
                ((##fx= _g198156_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g198155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g198155_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self197403%_ _%bindings197404%_)
        (let ((_%self197407%_ _%self197403%_))
          (for-each
           (lambda (_%bind197417%_)
             (let* ((_%$%bind197418197425%_ _%bind197417%_)
                    (_%$%E197420197428%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind197418197425%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K197421197496%_
                     (lambda (_%rest197431%_ _%id197432%_)
                       (gx#core-context-put!
                        _%self197407%_
                        _%id197432%_
                        (let ((__obj198148
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj198148
                           _%id197432%_
                           _%id197432%_
                           '#f
                           (let* ((_%$%rest197433197448%_ _%rest197431%_)
                                  (_%$%E197437197452%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest197433197448%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K197442197481%_
                                    (lambda (_%core-id197479%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id197479%_)))
                                   (_%$%K197439197466%_
                                    (lambda (_%proc197464%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc197464%_)))
                                   (_%$%K197438197457%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id197432%_))))
                               (let ((_%$%try-match197436197460%_
                                      (lambda ()
                                        (if (null? _%$%rest197433197448%_)
                                            (_%$%K197438197457%_)
                                            (_%$%E197437197452%_)))))
                                 (if (pair? _%$%rest197433197448%_)
                                     (let ((_%$%tl197444197486%_
                                            (##cdr _%$%rest197433197448%_))
                                           (_%$%hd197443197484%_
                                            (##car _%$%rest197433197448%_)))
                                       (if (##eq? _%$%hd197443197484%_ '=>)
                                           (if (pair? _%$%tl197444197486%_)
                                               (let ((_%$%tl197446197491%_
                                                      (##cdr _%$%tl197444197486%_))
                                                     (_%$%hd197445197489%_
                                                      (##car _%$%tl197444197486%_)))
                                                 (if (null? _%$%tl197446197491%_)
                                                     (let ((_%core-id197494%_
                                                            _%$%hd197445197489%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id197494%_))
                                                     (_%$%E197437197452%_)))
                                               (if (null? _%$%tl197444197486%_)
                                                   (let ((_%proc197474%_
                                                          _%$%hd197443197484%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc197474%_))
                                                   (_%$%E197437197452%_)))
                                           (if (null? _%$%tl197444197486%_)
                                               (let ((_%proc197474%_
                                                      _%$%hd197443197484%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc197474%_))
                                               (_%$%E197437197452%_))))
                                     (_%$%try-match197436197460%_))))))
                          __obj198148)))))
               (if (pair? _%$%bind197418197425%_)
                   (let ((_%$%hd197422197499%_ (##car _%$%bind197418197425%_))
                         (_%$%tl197423197501%_ (##cdr _%$%bind197418197425%_)))
                     (let* ((_%id197504%_ _%$%hd197422197499%_)
                            (_%rest197506%_ _%$%tl197423197501%_))
                       (_%$%K197421197496%_ _%rest197506%_ _%id197504%_)))
                   (_%$%E197420197428%_))))
           _%bindings197404%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self197511%_)
        (let ((_%bindings197513%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self197511%_
           _%bindings197513%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g198157_
        (let ((_g198158_ (##length _g198157_)))
          (cond ((##fx= _g198158_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g198157_))
                ((##fx= _g198158_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g198157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g198157_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self197134%_)
        (let ((_%self197137%_ _%self197134%_))
          (letrec ((_%linux-variant?197148%_
                    (lambda (_%sys-type197248%_)
                      (let* ((_%$%g197249197257%_
                              (__string-split
                               (symbol->string _%sys-type197248%_)
                               '#\-))
                             (_%$%else197251197265%_ (lambda () '#f))
                             (_%$%K197253197270%_
                              (lambda (_%rest197268%_)
                                (not (null? _%rest197268%_)))))
                        (if (pair? _%$%g197249197257%_)
                            (let ((_%$%hd197254197273%_
                                   (##car _%$%g197249197257%_))
                                  (_%$%tl197255197275%_
                                   (##cdr _%$%g197249197257%_)))
                              (if (equal? _%$%hd197254197273%_ '"linux")
                                  (let ((_%rest197278%_ _%$%tl197255197275%_))
                                    (_%$%K197253197270%_ _%rest197278%_))
                                  (_%$%else197251197265%_)))
                            (_%$%else197251197265%_)))))
                   (_%bsd-variant197149%_
                    (lambda (_%sys-type197207%_)
                      (let ((_%sys-type-str197209%_
                             (symbol->string _%sys-type197207%_)))
                        (let _%lp197211%_ ((_%rest197213%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest197214197222%_ _%rest197213%_)
                                 (_%$%else197216197230%_ (lambda () '#f))
                                 (_%$%K197218197236%_
                                  (lambda (_%rest197233%_ _%sys197234%_)
                                    (if (string-prefix?
                                         _%sys197234%_
                                         _%sys-type-str197209%_)
                                        _%sys197234%_
                                        (_%lp197211%_ _%rest197233%_)))))
                            (if (pair? _%$%rest197214197222%_)
                                (let ((_%$%hd197219197239%_
                                       (##car _%$%rest197214197222%_))
                                      (_%$%tl197220197241%_
                                       (##cdr _%$%rest197214197222%_)))
                                  (let* ((_%sys197244%_ _%$%hd197219197239%_)
                                         (_%rest197246%_ _%$%tl197220197241%_))
                                    (_%$%K197218197236%_
                                     _%rest197246%_
                                     _%sys197244%_)))
                                (_%$%else197216197230%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self197137%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self197137%_)
            (let* ((_%$%g197150197162%_ (system-type))
                   (_%$%else197152197170%_ (lambda () '#!void))
                   (_%$%K197154197183%_
                    (lambda (_%sys-type197173%_
                             _%sys-vendor197174%_
                             _%sys-cpu197175%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu197175%_
                       '#f
                       '0
                       _%self197137%_)
                      (gx#core-bind-feature!__%
                       _%sys-type197173%_
                       '#f
                       '0
                       _%self197137%_)
                      (if (_%linux-variant?197148%_ _%sys-type197173%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self197137%_)
                          (let ((_%$e197178%_
                                 (_%bsd-variant197149%_ _%sys-type197173%_)))
                            (if _%$e197178%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self197137%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e197178%_)
                                   '#f
                                   '0
                                   _%self197137%_))
                                '#!void))))))
              (if (pair? _%$%g197150197162%_)
                  (let ((_%$%hd197155197186%_ (##car _%$%g197150197162%_))
                        (_%$%tl197156197188%_ (##cdr _%$%g197150197162%_)))
                    (let ((_%sys-cpu197191%_ _%$%hd197155197186%_))
                      (if (pair? _%$%tl197156197188%_)
                          (let ((_%$%hd197157197193%_
                                 (##car _%$%tl197156197188%_))
                                (_%$%tl197158197195%_
                                 (##cdr _%$%tl197156197188%_)))
                            (let ((_%sys-vendor197198%_ _%$%hd197157197193%_))
                              (if (pair? _%$%tl197158197195%_)
                                  (let ((_%$%hd197159197200%_
                                         (##car _%$%tl197158197195%_))
                                        (_%$%tl197160197202%_
                                         (##cdr _%$%tl197158197195%_)))
                                    (let ((_%sys-type197205%_
                                           _%$%hd197159197200%_))
                                      (if (null? _%$%tl197160197202%_)
                                          (_%$%K197154197183%_
                                           _%sys-type197205%_
                                           _%sys-vendor197198%_
                                           _%sys-cpu197191%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self197137%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))

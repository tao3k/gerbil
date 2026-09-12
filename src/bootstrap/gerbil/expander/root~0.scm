(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1789188908)
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
      (lambda (_%self198058%_ _%bind?198059%_)
        (let ((_%self198062%_ _%self198058%_))
          (if (##fx< '2 (##structure-length _%self198062%_))
              (begin
                (##unchecked-structure-set! _%self198062%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self198062%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self198062%_
                     '2
                     (##structure-length _%self198062%_)))
          (if _%bind?198059%_
              (begin
                (let ((__method198126
                       (__method-ref
                        _%self198062%_
                        'bind-core-syntax-expanders!)))
                  (if __method198126
                      (__method198126 _%self198062%_)
                      (begin
                        (error '"Missing method"
                               _%self198062%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method198127
                       (__method-ref
                        _%self198062%_
                        'bind-core-macro-expanders!)))
                  (if __method198127
                      (__method198127 _%self198062%_)
                      (begin
                        (error '"Missing method"
                               _%self198062%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method198128
                       (__method-ref _%self198062%_ 'bind-core-features!)))
                  (if __method198128
                      (__method198128 _%self198062%_)
                      (begin
                        (error '"Missing method"
                               _%self198062%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self198076%_)
        (let ((_%bind?198078%_ '#t))
          (gx#root-context:::init!__% _%self198076%_ _%bind?198078%_))))
    (define gx#root-context:::init!
      (lambda _g198132_
        (let ((_g198133_ (##length _g198132_)))
          (cond ((##fx= _g198133_ 1)
                 (apply gx#root-context:::init!__0 _g198132_))
                ((##fx= _g198133_ 2)
                 (apply gx#root-context:::init!__% _g198132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g198132_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass198082 __method-table198083)
        (let ((__bind-core-macro-expanders!198084
               (__make-promise
                (lambda ()
                  (let ((__method198087
                         (symbolic-table-ref
                          __method-table198083
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method198087
                        __method198087
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!198085
               (__make-promise
                (lambda ()
                  (let ((__method198088
                         (symbolic-table-ref
                          __method-table198083
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method198088
                        __method198088
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!198086
               (__make-promise
                (lambda ()
                  (let ((__method198089
                         (symbolic-table-ref
                          __method-table198083
                          'bind-core-features!
                          '#f)))
                    (if __method198089
                        __method198089
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%$%opt-lambda198056198073%_
                 (lambda (_%self198058%_ _%bind?198059%_)
                   (let ((_%self198062%_ _%self198058%_))
                     (if (##fx< '2 (##structure-length _%self198062%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self198062%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self198062%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self198062%_
                                '2
                                (##structure-length _%self198062%_)))
                     (if _%bind?198059%_
                         (begin
                           ((force __bind-core-syntax-expanders!198085)
                            _%self198062%_)
                           ((force __bind-core-macro-expanders!198084)
                            _%self198062%_)
                           ((force __bind-core-features!198086)
                            _%self198062%_))
                         '#!void)))))
            (lambda _g198134_
              (let ((_g198135_ (##length _g198134_)))
                (cond ((##fx= _g198135_ 1)
                       (apply (lambda (_%self198076%_)
                                (let ((_%bind?198078%_ '#t))
                                  (_%$%opt-lambda198056198073%_
                                   _%self198076%_
                                   _%bind?198078%_)))
                              _g198134_))
                      ((##fx= _g198135_ 2)
                       (apply _%$%opt-lambda198056198073%_ _g198134_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g198134_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self197903%_ _%super197904%_)
        (let* ((_%self197907%_ _%self197903%_)
               (_%super197923%_
                (let ((_%$e197917%_ _%super197904%_))
                  (if _%$e197917%_
                      _%$e197917%_
                      (let ((_%$e197920%_ (gx#core-context-root__0)))
                        (if _%$e197920%_
                            _%$e197920%_
                            (let ((__obj198129
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj198129)
                              __obj198129)))))))
          (if (##fx< '5 (##structure-length _%self197907%_))
              (begin
                (##unchecked-structure-set! _%self197907%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self197907%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197907%_
                 _%super197923%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self197907%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self197907%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self197907%_
                     '5
                     (##structure-length _%self197907%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self197928%_)
        (let ((_%super197930%_ '#f))
          (gx#top-context:::init!__% _%self197928%_ _%super197930%_))))
    (define gx#top-context:::init!
      (lambda _g198136_
        (let ((_g198137_ (##length _g198136_)))
          (cond ((##fx= _g198137_ 1)
                 (apply gx#top-context:::init!__0 _g198136_))
                ((##fx= _g198137_ 2)
                 (apply gx#top-context:::init!__% _g198136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g198136_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self197624%_ _%bindings197625%_)
        (let ((_%self197628%_ _%self197624%_))
          (for-each
           (lambda (_%bind197638%_)
             (let* ((_%$%bind197639197646%_ _%bind197638%_)
                    (_%$%E197641197649%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind197639197646%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K197642197758%_
                     (lambda (_%rest197652%_ _%id197653%_)
                       (gx#core-context-put!
                        _%self197628%_
                        _%id197653%_
                        (let ((__obj198130
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj198130
                           _%id197653%_
                           _%id197653%_
                           '#f
                           (let* ((_%$%rest197654197665%_ _%rest197652%_)
                                  (_%$%E197656197669%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest197654197665%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K197657197734%_
                                   (lambda (_%compiler197672%_
                                            _%expander197673%_
                                            _%key197674%_)
                                     ((let* ((_%$%key197675197688%_
                                              _%key197674%_)
                                             (_%$%E197681197692%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key197675197688%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K197686197728%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K197685197721%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K197684197713%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K197683197705%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K197682197697%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match197680197700%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197675197688%_
                                                               'expr:)
                                                        (_%$%K197682197697%_)
                                                        (_%$%E197681197692%_))))
                                                 (_%$%try-match197679197708%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197675197688%_
                                                               'special:)
                                                        (_%$%K197683197705%_)
                                                        (_%$%try-match197680197700%_))))
                                                 (_%$%try-match197678197716%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197675197688%_
                                                               'define:)
                                                        (_%$%K197684197713%_)
                                                        (_%$%try-match197679197708%_))))
                                                 (_%$%try-match197677197724%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197675197688%_
                                                               'module:)
                                                        (_%$%K197685197721%_)
                                                        (_%$%try-match197678197716%_)))))
                                            (if (##eq? _%$%key197675197688%_
                                                       'top:)
                                                (_%$%K197686197728%_)
                                                (_%$%try-match197677197724%_)))))
                                      _%expander197673%_
                                      _%id197653%_
                                      (let ((_%$e197731%_ _%compiler197672%_))
                                        (if _%$e197731%_
                                            _%$e197731%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest197654197665%_)
                                 (let ((_%$%hd197658197737%_
                                        (##car _%$%rest197654197665%_))
                                       (_%$%tl197659197739%_
                                        (##cdr _%$%rest197654197665%_)))
                                   (let ((_%key197742%_ _%$%hd197658197737%_))
                                     (if (pair? _%$%tl197659197739%_)
                                         (let ((_%$%hd197660197744%_
                                                (##car _%$%tl197659197739%_))
                                               (_%$%tl197661197746%_
                                                (##cdr _%$%tl197659197739%_)))
                                           (let ((_%expander197749%_
                                                  _%$%hd197660197744%_))
                                             (if (pair? _%$%tl197661197746%_)
                                                 (let ((_%$%hd197662197751%_
                                                        (##car _%$%tl197661197746%_))
                                                       (_%$%tl197663197753%_
                                                        (##cdr _%$%tl197661197746%_)))
                                                   (let ((_%compiler197756%_
                                                          _%$%hd197662197751%_))
                                                     (if (null? _%$%tl197663197753%_)
                                                         (_%$%K197657197734%_
                                                          _%compiler197756%_
                                                          _%expander197749%_
                                                          _%key197742%_)
                                                         (_%$%E197656197669%_))))
                                                 (_%$%E197656197669%_))))
                                         (_%$%E197656197669%_))))
                                 (_%$%E197656197669%_))))
                          __obj198130)))))
               (if (pair? _%$%bind197639197646%_)
                   (let ((_%$%hd197643197761%_ (##car _%$%bind197639197646%_))
                         (_%$%tl197644197763%_ (##cdr _%$%bind197639197646%_)))
                     (let* ((_%id197766%_ _%$%hd197643197761%_)
                            (_%rest197768%_ _%$%tl197644197763%_))
                       (_%$%K197642197758%_ _%rest197768%_ _%id197766%_)))
                   (_%$%E197641197649%_))))
           _%bindings197625%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self197773%_)
        (let ((_%bindings197775%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self197773%_
           _%bindings197775%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g198138_
        (let ((_g198139_ (##length _g198138_)))
          (cond ((##fx= _g198139_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g198138_))
                ((##fx= _g198139_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g198138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g198138_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self197386%_ _%bindings197387%_)
        (let ((_%self197390%_ _%self197386%_))
          (for-each
           (lambda (_%bind197400%_)
             (let* ((_%$%bind197401197408%_ _%bind197400%_)
                    (_%$%E197403197411%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind197401197408%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K197404197479%_
                     (lambda (_%rest197414%_ _%id197415%_)
                       (gx#core-context-put!
                        _%self197390%_
                        _%id197415%_
                        (let ((__obj198131
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj198131
                           _%id197415%_
                           _%id197415%_
                           '#f
                           (let* ((_%$%rest197416197431%_ _%rest197414%_)
                                  (_%$%E197420197435%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest197416197431%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K197425197464%_
                                    (lambda (_%core-id197462%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id197462%_)))
                                   (_%$%K197422197449%_
                                    (lambda (_%proc197447%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc197447%_)))
                                   (_%$%K197421197440%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id197415%_))))
                               (let ((_%$%try-match197419197443%_
                                      (lambda ()
                                        (if (null? _%$%rest197416197431%_)
                                            (_%$%K197421197440%_)
                                            (_%$%E197420197435%_)))))
                                 (if (pair? _%$%rest197416197431%_)
                                     (let ((_%$%tl197427197469%_
                                            (##cdr _%$%rest197416197431%_))
                                           (_%$%hd197426197467%_
                                            (##car _%$%rest197416197431%_)))
                                       (if (##eq? _%$%hd197426197467%_ '=>)
                                           (if (pair? _%$%tl197427197469%_)
                                               (let ((_%$%tl197429197474%_
                                                      (##cdr _%$%tl197427197469%_))
                                                     (_%$%hd197428197472%_
                                                      (##car _%$%tl197427197469%_)))
                                                 (if (null? _%$%tl197429197474%_)
                                                     (let ((_%core-id197477%_
                                                            _%$%hd197428197472%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id197477%_))
                                                     (_%$%E197420197435%_)))
                                               (if (null? _%$%tl197427197469%_)
                                                   (let ((_%proc197457%_
                                                          _%$%hd197426197467%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc197457%_))
                                                   (_%$%E197420197435%_)))
                                           (if (null? _%$%tl197427197469%_)
                                               (let ((_%proc197457%_
                                                      _%$%hd197426197467%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc197457%_))
                                               (_%$%E197420197435%_))))
                                     (_%$%try-match197419197443%_))))))
                          __obj198131)))))
               (if (pair? _%$%bind197401197408%_)
                   (let ((_%$%hd197405197482%_ (##car _%$%bind197401197408%_))
                         (_%$%tl197406197484%_ (##cdr _%$%bind197401197408%_)))
                     (let* ((_%id197487%_ _%$%hd197405197482%_)
                            (_%rest197489%_ _%$%tl197406197484%_))
                       (_%$%K197404197479%_ _%rest197489%_ _%id197487%_)))
                   (_%$%E197403197411%_))))
           _%bindings197387%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self197494%_)
        (let ((_%bindings197496%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self197494%_
           _%bindings197496%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g198140_
        (let ((_g198141_ (##length _g198140_)))
          (cond ((##fx= _g198141_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g198140_))
                ((##fx= _g198141_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g198140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g198140_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self197117%_)
        (let ((_%self197120%_ _%self197117%_))
          (letrec ((_%linux-variant?197131%_
                    (lambda (_%sys-type197231%_)
                      (let* ((_%$%g197232197240%_
                              (__string-split
                               (symbol->string _%sys-type197231%_)
                               '#\-))
                             (_%$%else197234197248%_ (lambda () '#f))
                             (_%$%K197236197253%_
                              (lambda (_%rest197251%_)
                                (not (null? _%rest197251%_)))))
                        (if (pair? _%$%g197232197240%_)
                            (let ((_%$%hd197237197256%_
                                   (##car _%$%g197232197240%_))
                                  (_%$%tl197238197258%_
                                   (##cdr _%$%g197232197240%_)))
                              (if (equal? _%$%hd197237197256%_ '"linux")
                                  (let ((_%rest197261%_ _%$%tl197238197258%_))
                                    (_%$%K197236197253%_ _%rest197261%_))
                                  (_%$%else197234197248%_)))
                            (_%$%else197234197248%_)))))
                   (_%bsd-variant197132%_
                    (lambda (_%sys-type197190%_)
                      (let ((_%sys-type-str197192%_
                             (symbol->string _%sys-type197190%_)))
                        (let _%lp197194%_ ((_%rest197196%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest197197197205%_ _%rest197196%_)
                                 (_%$%else197199197213%_ (lambda () '#f))
                                 (_%$%K197201197219%_
                                  (lambda (_%rest197216%_ _%sys197217%_)
                                    (if (string-prefix?
                                         _%sys197217%_
                                         _%sys-type-str197192%_)
                                        _%sys197217%_
                                        (_%lp197194%_ _%rest197216%_)))))
                            (if (pair? _%$%rest197197197205%_)
                                (let ((_%$%hd197202197222%_
                                       (##car _%$%rest197197197205%_))
                                      (_%$%tl197203197224%_
                                       (##cdr _%$%rest197197197205%_)))
                                  (let* ((_%sys197227%_ _%$%hd197202197222%_)
                                         (_%rest197229%_ _%$%tl197203197224%_))
                                    (_%$%K197201197219%_
                                     _%rest197229%_
                                     _%sys197227%_)))
                                (_%$%else197199197213%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self197120%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self197120%_)
            (let* ((_%$%g197133197145%_ (system-type))
                   (_%$%else197135197153%_ (lambda () '#!void))
                   (_%$%K197137197166%_
                    (lambda (_%sys-type197156%_
                             _%sys-vendor197157%_
                             _%sys-cpu197158%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu197158%_
                       '#f
                       '0
                       _%self197120%_)
                      (gx#core-bind-feature!__%
                       _%sys-type197156%_
                       '#f
                       '0
                       _%self197120%_)
                      (if (_%linux-variant?197131%_ _%sys-type197156%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self197120%_)
                          (let ((_%$e197161%_
                                 (_%bsd-variant197132%_ _%sys-type197156%_)))
                            (if _%$e197161%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self197120%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e197161%_)
                                   '#f
                                   '0
                                   _%self197120%_))
                                '#!void))))))
              (if (pair? _%$%g197133197145%_)
                  (let ((_%$%hd197138197169%_ (##car _%$%g197133197145%_))
                        (_%$%tl197139197171%_ (##cdr _%$%g197133197145%_)))
                    (let ((_%sys-cpu197174%_ _%$%hd197138197169%_))
                      (if (pair? _%$%tl197139197171%_)
                          (let ((_%$%hd197140197176%_
                                 (##car _%$%tl197139197171%_))
                                (_%$%tl197141197178%_
                                 (##cdr _%$%tl197139197171%_)))
                            (let ((_%sys-vendor197181%_ _%$%hd197140197176%_))
                              (if (pair? _%$%tl197141197178%_)
                                  (let ((_%$%hd197142197183%_
                                         (##car _%$%tl197141197178%_))
                                        (_%$%tl197143197185%_
                                         (##cdr _%$%tl197141197178%_)))
                                    (let ((_%sys-type197188%_
                                           _%$%hd197142197183%_))
                                      (if (null? _%$%tl197143197185%_)
                                          (_%$%K197137197166%_
                                           _%sys-type197188%_
                                           _%sys-vendor197181%_
                                           _%sys-cpu197174%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self197120%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))

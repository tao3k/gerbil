(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1784461444)
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
      (lambda (_%self197854%_ _%bind?197855%_)
        (let ((_%self197858%_ _%self197854%_))
          (if (##fx< '2 (##structure-length _%self197858%_))
              (begin
                (##unchecked-structure-set! _%self197858%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self197858%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self197858%_
                     '2
                     (##structure-length _%self197858%_)))
          (if _%bind?197855%_
              (begin
                (let ((__method197922
                       (__method-ref
                        _%self197858%_
                        'bind-core-syntax-expanders!)))
                  (if __method197922
                      (__method197922 _%self197858%_)
                      (begin
                        (error '"Missing method"
                               _%self197858%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method197923
                       (__method-ref
                        _%self197858%_
                        'bind-core-macro-expanders!)))
                  (if __method197923
                      (__method197923 _%self197858%_)
                      (begin
                        (error '"Missing method"
                               _%self197858%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method197924
                       (__method-ref _%self197858%_ 'bind-core-features!)))
                  (if __method197924
                      (__method197924 _%self197858%_)
                      (begin
                        (error '"Missing method"
                               _%self197858%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self197872%_)
        (let ((_%bind?197874%_ '#t))
          (gx#root-context:::init!__% _%self197872%_ _%bind?197874%_))))
    (define gx#root-context:::init!
      (lambda _g197928_
        (let ((_g197929_ (##length _g197928_)))
          (cond ((##fx= _g197929_ 1)
                 (apply gx#root-context:::init!__0 _g197928_))
                ((##fx= _g197929_ 2)
                 (apply gx#root-context:::init!__% _g197928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g197928_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass197878 __method-table197879)
        (let ((__bind-core-syntax-expanders!197880
               (__make-promise
                (lambda ()
                  (let ((__method197883
                         (symbolic-table-ref
                          __method-table197879
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method197883
                        __method197883
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!197881
               (__make-promise
                (lambda ()
                  (let ((__method197884
                         (symbolic-table-ref
                          __method-table197879
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method197884
                        __method197884
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!197882
               (__make-promise
                (lambda ()
                  (let ((__method197885
                         (symbolic-table-ref
                          __method-table197879
                          'bind-core-features!
                          '#f)))
                    (if __method197885
                        __method197885
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%$%opt-lambda197852197869%_
                 (lambda (_%self197854%_ _%bind?197855%_)
                   (let ((_%self197858%_ _%self197854%_))
                     (if (##fx< '2 (##structure-length _%self197858%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self197858%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self197858%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self197858%_
                                '2
                                (##structure-length _%self197858%_)))
                     (if _%bind?197855%_
                         (begin
                           ((force __bind-core-syntax-expanders!197880)
                            _%self197858%_)
                           ((force __bind-core-macro-expanders!197881)
                            _%self197858%_)
                           ((force __bind-core-features!197882)
                            _%self197858%_))
                         '#!void)))))
            (lambda _g197930_
              (let ((_g197931_ (##length _g197930_)))
                (cond ((##fx= _g197931_ 1)
                       (apply (lambda (_%self197872%_)
                                (let ((_%bind?197874%_ '#t))
                                  (_%$%opt-lambda197852197869%_
                                   _%self197872%_
                                   _%bind?197874%_)))
                              _g197930_))
                      ((##fx= _g197931_ 2)
                       (apply _%$%opt-lambda197852197869%_ _g197930_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g197930_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self197699%_ _%super197700%_)
        (let* ((_%self197703%_ _%self197699%_)
               (_%super197719%_
                (let ((_%$e197713%_ _%super197700%_))
                  (if _%$e197713%_
                      _%$e197713%_
                      (let ((_%$e197716%_ (gx#core-context-root__0)))
                        (if _%$e197716%_
                            _%$e197716%_
                            (let ((__obj197925
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj197925)
                              __obj197925)))))))
          (if (##fx< '5 (##structure-length _%self197703%_))
              (begin
                (##unchecked-structure-set! _%self197703%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self197703%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197703%_
                 _%super197719%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self197703%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self197703%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self197703%_
                     '5
                     (##structure-length _%self197703%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self197724%_)
        (let ((_%super197726%_ '#f))
          (gx#top-context:::init!__% _%self197724%_ _%super197726%_))))
    (define gx#top-context:::init!
      (lambda _g197932_
        (let ((_g197933_ (##length _g197932_)))
          (cond ((##fx= _g197933_ 1)
                 (apply gx#top-context:::init!__0 _g197932_))
                ((##fx= _g197933_ 2)
                 (apply gx#top-context:::init!__% _g197932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g197932_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self197420%_ _%bindings197421%_)
        (let ((_%self197424%_ _%self197420%_))
          (for-each
           (lambda (_%bind197434%_)
             (let* ((_%$%bind197435197442%_ _%bind197434%_)
                    (_%$%E197437197445%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind197435197442%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K197438197554%_
                     (lambda (_%rest197448%_ _%id197449%_)
                       (gx#core-context-put!
                        _%self197424%_
                        _%id197449%_
                        (let ((__obj197926
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj197926
                           _%id197449%_
                           _%id197449%_
                           '#f
                           (let* ((_%$%rest197450197461%_ _%rest197448%_)
                                  (_%$%E197452197465%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest197450197461%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K197453197530%_
                                   (lambda (_%compiler197468%_
                                            _%expander197469%_
                                            _%key197470%_)
                                     ((let* ((_%$%key197471197484%_
                                              _%key197470%_)
                                             (_%$%E197477197488%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key197471197484%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K197482197524%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K197481197517%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K197480197509%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K197479197501%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K197478197493%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match197476197496%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197471197484%_
                                                               'expr:)
                                                        (_%$%K197478197493%_)
                                                        (_%$%E197477197488%_))))
                                                 (_%$%try-match197475197504%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197471197484%_
                                                               'special:)
                                                        (_%$%K197479197501%_)
                                                        (_%$%try-match197476197496%_))))
                                                 (_%$%try-match197474197512%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197471197484%_
                                                               'define:)
                                                        (_%$%K197480197509%_)
                                                        (_%$%try-match197475197504%_))))
                                                 (_%$%try-match197473197520%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key197471197484%_
                                                               'module:)
                                                        (_%$%K197481197517%_)
                                                        (_%$%try-match197474197512%_)))))
                                            (if (##eq? _%$%key197471197484%_
                                                       'top:)
                                                (_%$%K197482197524%_)
                                                (_%$%try-match197473197520%_)))))
                                      _%expander197469%_
                                      _%id197449%_
                                      (let ((_%$e197527%_ _%compiler197468%_))
                                        (if _%$e197527%_
                                            _%$e197527%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest197450197461%_)
                                 (let ((_%$%hd197454197533%_
                                        (##car _%$%rest197450197461%_))
                                       (_%$%tl197455197535%_
                                        (##cdr _%$%rest197450197461%_)))
                                   (let ((_%key197538%_ _%$%hd197454197533%_))
                                     (if (pair? _%$%tl197455197535%_)
                                         (let ((_%$%hd197456197540%_
                                                (##car _%$%tl197455197535%_))
                                               (_%$%tl197457197542%_
                                                (##cdr _%$%tl197455197535%_)))
                                           (let ((_%expander197545%_
                                                  _%$%hd197456197540%_))
                                             (if (pair? _%$%tl197457197542%_)
                                                 (let ((_%$%hd197458197547%_
                                                        (##car _%$%tl197457197542%_))
                                                       (_%$%tl197459197549%_
                                                        (##cdr _%$%tl197457197542%_)))
                                                   (let ((_%compiler197552%_
                                                          _%$%hd197458197547%_))
                                                     (if (null? _%$%tl197459197549%_)
                                                         (_%$%K197453197530%_
                                                          _%compiler197552%_
                                                          _%expander197545%_
                                                          _%key197538%_)
                                                         (_%$%E197452197465%_))))
                                                 (_%$%E197452197465%_))))
                                         (_%$%E197452197465%_))))
                                 (_%$%E197452197465%_))))
                          __obj197926)))))
               (if (pair? _%$%bind197435197442%_)
                   (let ((_%$%hd197439197557%_ (##car _%$%bind197435197442%_))
                         (_%$%tl197440197559%_ (##cdr _%$%bind197435197442%_)))
                     (let* ((_%id197562%_ _%$%hd197439197557%_)
                            (_%rest197564%_ _%$%tl197440197559%_))
                       (_%$%K197438197554%_ _%rest197564%_ _%id197562%_)))
                   (_%$%E197437197445%_))))
           _%bindings197421%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self197569%_)
        (let ((_%bindings197571%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self197569%_
           _%bindings197571%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g197934_
        (let ((_g197935_ (##length _g197934_)))
          (cond ((##fx= _g197935_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g197934_))
                ((##fx= _g197935_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g197934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g197934_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self197182%_ _%bindings197183%_)
        (let ((_%self197186%_ _%self197182%_))
          (for-each
           (lambda (_%bind197196%_)
             (let* ((_%$%bind197197197204%_ _%bind197196%_)
                    (_%$%E197199197207%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind197197197204%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K197200197275%_
                     (lambda (_%rest197210%_ _%id197211%_)
                       (gx#core-context-put!
                        _%self197186%_
                        _%id197211%_
                        (let ((__obj197927
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj197927
                           _%id197211%_
                           _%id197211%_
                           '#f
                           (let* ((_%$%rest197212197227%_ _%rest197210%_)
                                  (_%$%E197216197231%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest197212197227%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K197221197260%_
                                    (lambda (_%core-id197258%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id197258%_)))
                                   (_%$%K197218197245%_
                                    (lambda (_%proc197243%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc197243%_)))
                                   (_%$%K197217197236%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id197211%_))))
                               (let ((_%$%try-match197215197239%_
                                      (lambda ()
                                        (if (null? _%$%rest197212197227%_)
                                            (_%$%K197217197236%_)
                                            (_%$%E197216197231%_)))))
                                 (if (pair? _%$%rest197212197227%_)
                                     (let ((_%$%tl197223197265%_
                                            (##cdr _%$%rest197212197227%_))
                                           (_%$%hd197222197263%_
                                            (##car _%$%rest197212197227%_)))
                                       (if (##eq? _%$%hd197222197263%_ '=>)
                                           (if (pair? _%$%tl197223197265%_)
                                               (let ((_%$%tl197225197270%_
                                                      (##cdr _%$%tl197223197265%_))
                                                     (_%$%hd197224197268%_
                                                      (##car _%$%tl197223197265%_)))
                                                 (if (null? _%$%tl197225197270%_)
                                                     (let ((_%core-id197273%_
                                                            _%$%hd197224197268%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id197273%_))
                                                     (_%$%E197216197231%_)))
                                               (if (null? _%$%tl197223197265%_)
                                                   (let ((_%proc197253%_
                                                          _%$%hd197222197263%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc197253%_))
                                                   (_%$%E197216197231%_)))
                                           (if (null? _%$%tl197223197265%_)
                                               (let ((_%proc197253%_
                                                      _%$%hd197222197263%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc197253%_))
                                               (_%$%E197216197231%_))))
                                     (_%$%try-match197215197239%_))))))
                          __obj197927)))))
               (if (pair? _%$%bind197197197204%_)
                   (let ((_%$%hd197201197278%_ (##car _%$%bind197197197204%_))
                         (_%$%tl197202197280%_ (##cdr _%$%bind197197197204%_)))
                     (let* ((_%id197283%_ _%$%hd197201197278%_)
                            (_%rest197285%_ _%$%tl197202197280%_))
                       (_%$%K197200197275%_ _%rest197285%_ _%id197283%_)))
                   (_%$%E197199197207%_))))
           _%bindings197183%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self197290%_)
        (let ((_%bindings197292%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self197290%_
           _%bindings197292%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g197936_
        (let ((_g197937_ (##length _g197936_)))
          (cond ((##fx= _g197937_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g197936_))
                ((##fx= _g197937_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g197936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g197936_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self196913%_)
        (let ((_%self196916%_ _%self196913%_))
          (letrec ((_%linux-variant?196927%_
                    (lambda (_%sys-type197027%_)
                      (let* ((_%$%g197028197036%_
                              (__string-split
                               (symbol->string _%sys-type197027%_)
                               '#\-))
                             (_%$%else197030197044%_ (lambda () '#f))
                             (_%$%K197032197049%_
                              (lambda (_%rest197047%_)
                                (not (null? _%rest197047%_)))))
                        (if (pair? _%$%g197028197036%_)
                            (let ((_%$%hd197033197052%_
                                   (##car _%$%g197028197036%_))
                                  (_%$%tl197034197054%_
                                   (##cdr _%$%g197028197036%_)))
                              (if (equal? _%$%hd197033197052%_ '"linux")
                                  (let ((_%rest197057%_ _%$%tl197034197054%_))
                                    (_%$%K197032197049%_ _%rest197057%_))
                                  (_%$%else197030197044%_)))
                            (_%$%else197030197044%_)))))
                   (_%bsd-variant196928%_
                    (lambda (_%sys-type196986%_)
                      (let ((_%sys-type-str196988%_
                             (symbol->string _%sys-type196986%_)))
                        (let _%lp196990%_ ((_%rest196992%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest196993197001%_ _%rest196992%_)
                                 (_%$%else196995197009%_ (lambda () '#f))
                                 (_%$%K196997197015%_
                                  (lambda (_%rest197012%_ _%sys197013%_)
                                    (if (string-prefix?
                                         _%sys197013%_
                                         _%sys-type-str196988%_)
                                        _%sys197013%_
                                        (_%lp196990%_ _%rest197012%_)))))
                            (if (pair? _%$%rest196993197001%_)
                                (let ((_%$%hd196998197018%_
                                       (##car _%$%rest196993197001%_))
                                      (_%$%tl196999197020%_
                                       (##cdr _%$%rest196993197001%_)))
                                  (let* ((_%sys197023%_ _%$%hd196998197018%_)
                                         (_%rest197025%_ _%$%tl196999197020%_))
                                    (_%$%K196997197015%_
                                     _%rest197025%_
                                     _%sys197023%_)))
                                (_%$%else196995197009%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self196916%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self196916%_)
            (let* ((_%$%g196929196941%_ (system-type))
                   (_%$%else196931196949%_ (lambda () '#!void))
                   (_%$%K196933196962%_
                    (lambda (_%sys-type196952%_
                             _%sys-vendor196953%_
                             _%sys-cpu196954%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu196954%_
                       '#f
                       '0
                       _%self196916%_)
                      (gx#core-bind-feature!__%
                       _%sys-type196952%_
                       '#f
                       '0
                       _%self196916%_)
                      (if (_%linux-variant?196927%_ _%sys-type196952%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self196916%_)
                          (let ((_%$e196957%_
                                 (_%bsd-variant196928%_ _%sys-type196952%_)))
                            (if _%$e196957%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self196916%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e196957%_)
                                   '#f
                                   '0
                                   _%self196916%_))
                                '#!void))))))
              (if (pair? _%$%g196929196941%_)
                  (let ((_%$%hd196934196965%_ (##car _%$%g196929196941%_))
                        (_%$%tl196935196967%_ (##cdr _%$%g196929196941%_)))
                    (let ((_%sys-cpu196970%_ _%$%hd196934196965%_))
                      (if (pair? _%$%tl196935196967%_)
                          (let ((_%$%hd196936196972%_
                                 (##car _%$%tl196935196967%_))
                                (_%$%tl196937196974%_
                                 (##cdr _%$%tl196935196967%_)))
                            (let ((_%sys-vendor196977%_ _%$%hd196936196972%_))
                              (if (pair? _%$%tl196937196974%_)
                                  (let ((_%$%hd196938196979%_
                                         (##car _%$%tl196937196974%_))
                                        (_%$%tl196939196981%_
                                         (##cdr _%$%tl196937196974%_)))
                                    (let ((_%sys-type196984%_
                                           _%$%hd196938196979%_))
                                      (if (null? _%$%tl196939196981%_)
                                          (_%$%K196933196962%_
                                           _%sys-type196984%_
                                           _%sys-vendor196977%_
                                           _%sys-cpu196970%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self196916%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))

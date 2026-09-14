(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1789371531)
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
      (lambda (_%self200088%_ _%bind?200089%_)
        (let ((_%self200092%_ _%self200088%_))
          (if (##fx< '2 (##structure-length _%self200092%_))
              (begin
                (##unchecked-structure-set! _%self200092%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self200092%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self200092%_
                     '2
                     (##structure-length _%self200092%_)))
          (if _%bind?200089%_
              (begin
                (let ((__method200156
                       (__method-ref
                        _%self200092%_
                        'bind-core-syntax-expanders!)))
                  (if __method200156
                      (__method200156 _%self200092%_)
                      (begin
                        (error '"Missing method"
                               _%self200092%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method200157
                       (__method-ref
                        _%self200092%_
                        'bind-core-macro-expanders!)))
                  (if __method200157
                      (__method200157 _%self200092%_)
                      (begin
                        (error '"Missing method"
                               _%self200092%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method200158
                       (__method-ref _%self200092%_ 'bind-core-features!)))
                  (if __method200158
                      (__method200158 _%self200092%_)
                      (begin
                        (error '"Missing method"
                               _%self200092%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self200106%_)
        (let ((_%bind?200108%_ '#t))
          (gx#root-context:::init!__% _%self200106%_ _%bind?200108%_))))
    (define gx#root-context:::init!
      (lambda _g200162_
        (let ((_g200163_ (##length _g200162_)))
          (cond ((##fx= _g200163_ 1)
                 (apply gx#root-context:::init!__0 _g200162_))
                ((##fx= _g200163_ 2)
                 (apply gx#root-context:::init!__% _g200162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g200162_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass200112 __method-table200113)
        (let ((__bind-core-syntax-expanders!200114
               (__make-promise
                (lambda ()
                  (let ((__method200117
                         (symbolic-table-ref
                          __method-table200113
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method200117
                        __method200117
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!200115
               (__make-promise
                (lambda ()
                  (let ((__method200118
                         (symbolic-table-ref
                          __method-table200113
                          'bind-core-features!
                          '#f)))
                    (if __method200118
                        __method200118
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!200116
               (__make-promise
                (lambda ()
                  (let ((__method200119
                         (symbolic-table-ref
                          __method-table200113
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method200119
                        __method200119
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%$%opt-lambda200086200103%_
                 (lambda (_%self200088%_ _%bind?200089%_)
                   (let ((_%self200092%_ _%self200088%_))
                     (if (##fx< '2 (##structure-length _%self200092%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self200092%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self200092%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self200092%_
                                '2
                                (##structure-length _%self200092%_)))
                     (if _%bind?200089%_
                         (begin
                           ((force __bind-core-syntax-expanders!200114)
                            _%self200092%_)
                           ((force __bind-core-macro-expanders!200116)
                            _%self200092%_)
                           ((force __bind-core-features!200115)
                            _%self200092%_))
                         '#!void)))))
            (lambda _g200164_
              (let ((_g200165_ (##length _g200164_)))
                (cond ((##fx= _g200165_ 1)
                       (apply (lambda (_%self200106%_)
                                (let ((_%bind?200108%_ '#t))
                                  (_%$%opt-lambda200086200103%_
                                   _%self200106%_
                                   _%bind?200108%_)))
                              _g200164_))
                      ((##fx= _g200165_ 2)
                       (apply _%$%opt-lambda200086200103%_ _g200164_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g200164_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self199933%_ _%super199934%_)
        (let* ((_%self199937%_ _%self199933%_)
               (_%super199953%_
                (let ((_%$e199947%_ _%super199934%_))
                  (if _%$e199947%_
                      _%$e199947%_
                      (let ((_%$e199950%_ (gx#core-context-root__0)))
                        (if _%$e199950%_
                            _%$e199950%_
                            (let ((__obj200159
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj200159)
                              __obj200159)))))))
          (if (##fx< '5 (##structure-length _%self199937%_))
              (begin
                (##unchecked-structure-set! _%self199937%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self199937%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self199937%_
                 _%super199953%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self199937%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self199937%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self199937%_
                     '5
                     (##structure-length _%self199937%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self199958%_)
        (let ((_%super199960%_ '#f))
          (gx#top-context:::init!__% _%self199958%_ _%super199960%_))))
    (define gx#top-context:::init!
      (lambda _g200166_
        (let ((_g200167_ (##length _g200166_)))
          (cond ((##fx= _g200167_ 1)
                 (apply gx#top-context:::init!__0 _g200166_))
                ((##fx= _g200167_ 2)
                 (apply gx#top-context:::init!__% _g200166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g200166_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self199654%_ _%bindings199655%_)
        (let ((_%self199658%_ _%self199654%_))
          (for-each
           (lambda (_%bind199668%_)
             (let* ((_%$%bind199669199676%_ _%bind199668%_)
                    (_%$%E199671199679%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind199669199676%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K199672199788%_
                     (lambda (_%rest199682%_ _%id199683%_)
                       (gx#core-context-put!
                        _%self199658%_
                        _%id199683%_
                        (let ((__obj200160
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj200160
                           _%id199683%_
                           _%id199683%_
                           '#f
                           (let* ((_%$%rest199684199695%_ _%rest199682%_)
                                  (_%$%E199686199699%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest199684199695%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K199687199764%_
                                   (lambda (_%compiler199702%_
                                            _%expander199703%_
                                            _%key199704%_)
                                     ((let* ((_%$%key199705199718%_
                                              _%key199704%_)
                                             (_%$%E199711199722%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key199705199718%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K199716199758%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K199715199751%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K199714199743%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K199713199735%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K199712199727%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match199710199730%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key199705199718%_
                                                               'expr:)
                                                        (_%$%K199712199727%_)
                                                        (_%$%E199711199722%_))))
                                                 (_%$%try-match199709199738%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key199705199718%_
                                                               'special:)
                                                        (_%$%K199713199735%_)
                                                        (_%$%try-match199710199730%_))))
                                                 (_%$%try-match199708199746%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key199705199718%_
                                                               'define:)
                                                        (_%$%K199714199743%_)
                                                        (_%$%try-match199709199738%_))))
                                                 (_%$%try-match199707199754%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key199705199718%_
                                                               'module:)
                                                        (_%$%K199715199751%_)
                                                        (_%$%try-match199708199746%_)))))
                                            (if (##eq? _%$%key199705199718%_
                                                       'top:)
                                                (_%$%K199716199758%_)
                                                (_%$%try-match199707199754%_)))))
                                      _%expander199703%_
                                      _%id199683%_
                                      (let ((_%$e199761%_ _%compiler199702%_))
                                        (if _%$e199761%_
                                            _%$e199761%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest199684199695%_)
                                 (let ((_%$%hd199688199767%_
                                        (##car _%$%rest199684199695%_))
                                       (_%$%tl199689199769%_
                                        (##cdr _%$%rest199684199695%_)))
                                   (let ((_%key199772%_ _%$%hd199688199767%_))
                                     (if (pair? _%$%tl199689199769%_)
                                         (let ((_%$%hd199690199774%_
                                                (##car _%$%tl199689199769%_))
                                               (_%$%tl199691199776%_
                                                (##cdr _%$%tl199689199769%_)))
                                           (let ((_%expander199779%_
                                                  _%$%hd199690199774%_))
                                             (if (pair? _%$%tl199691199776%_)
                                                 (let ((_%$%hd199692199781%_
                                                        (##car _%$%tl199691199776%_))
                                                       (_%$%tl199693199783%_
                                                        (##cdr _%$%tl199691199776%_)))
                                                   (let ((_%compiler199786%_
                                                          _%$%hd199692199781%_))
                                                     (if (null? _%$%tl199693199783%_)
                                                         (_%$%K199687199764%_
                                                          _%compiler199786%_
                                                          _%expander199779%_
                                                          _%key199772%_)
                                                         (_%$%E199686199699%_))))
                                                 (_%$%E199686199699%_))))
                                         (_%$%E199686199699%_))))
                                 (_%$%E199686199699%_))))
                          __obj200160)))))
               (if (pair? _%$%bind199669199676%_)
                   (let ((_%$%hd199673199791%_ (##car _%$%bind199669199676%_))
                         (_%$%tl199674199793%_ (##cdr _%$%bind199669199676%_)))
                     (let* ((_%id199796%_ _%$%hd199673199791%_)
                            (_%rest199798%_ _%$%tl199674199793%_))
                       (_%$%K199672199788%_ _%rest199798%_ _%id199796%_)))
                   (_%$%E199671199679%_))))
           _%bindings199655%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self199803%_)
        (let ((_%bindings199805%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self199803%_
           _%bindings199805%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g200168_
        (let ((_g200169_ (##length _g200168_)))
          (cond ((##fx= _g200169_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g200168_))
                ((##fx= _g200169_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g200168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g200168_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self199416%_ _%bindings199417%_)
        (let ((_%self199420%_ _%self199416%_))
          (for-each
           (lambda (_%bind199430%_)
             (let* ((_%$%bind199431199438%_ _%bind199430%_)
                    (_%$%E199433199441%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind199431199438%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K199434199509%_
                     (lambda (_%rest199444%_ _%id199445%_)
                       (gx#core-context-put!
                        _%self199420%_
                        _%id199445%_
                        (let ((__obj200161
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj200161
                           _%id199445%_
                           _%id199445%_
                           '#f
                           (let* ((_%$%rest199446199461%_ _%rest199444%_)
                                  (_%$%E199450199465%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest199446199461%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K199455199494%_
                                    (lambda (_%core-id199492%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id199492%_)))
                                   (_%$%K199452199479%_
                                    (lambda (_%proc199477%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc199477%_)))
                                   (_%$%K199451199470%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id199445%_))))
                               (let ((_%$%try-match199449199473%_
                                      (lambda ()
                                        (if (null? _%$%rest199446199461%_)
                                            (_%$%K199451199470%_)
                                            (_%$%E199450199465%_)))))
                                 (if (pair? _%$%rest199446199461%_)
                                     (let ((_%$%tl199457199499%_
                                            (##cdr _%$%rest199446199461%_))
                                           (_%$%hd199456199497%_
                                            (##car _%$%rest199446199461%_)))
                                       (if (##eq? _%$%hd199456199497%_ '=>)
                                           (if (pair? _%$%tl199457199499%_)
                                               (let ((_%$%tl199459199504%_
                                                      (##cdr _%$%tl199457199499%_))
                                                     (_%$%hd199458199502%_
                                                      (##car _%$%tl199457199499%_)))
                                                 (if (null? _%$%tl199459199504%_)
                                                     (let ((_%core-id199507%_
                                                            _%$%hd199458199502%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id199507%_))
                                                     (_%$%E199450199465%_)))
                                               (if (null? _%$%tl199457199499%_)
                                                   (let ((_%proc199487%_
                                                          _%$%hd199456199497%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc199487%_))
                                                   (_%$%E199450199465%_)))
                                           (if (null? _%$%tl199457199499%_)
                                               (let ((_%proc199487%_
                                                      _%$%hd199456199497%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc199487%_))
                                               (_%$%E199450199465%_))))
                                     (_%$%try-match199449199473%_))))))
                          __obj200161)))))
               (if (pair? _%$%bind199431199438%_)
                   (let ((_%$%hd199435199512%_ (##car _%$%bind199431199438%_))
                         (_%$%tl199436199514%_ (##cdr _%$%bind199431199438%_)))
                     (let* ((_%id199517%_ _%$%hd199435199512%_)
                            (_%rest199519%_ _%$%tl199436199514%_))
                       (_%$%K199434199509%_ _%rest199519%_ _%id199517%_)))
                   (_%$%E199433199441%_))))
           _%bindings199417%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self199524%_)
        (let ((_%bindings199526%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self199524%_
           _%bindings199526%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g200170_
        (let ((_g200171_ (##length _g200170_)))
          (cond ((##fx= _g200171_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g200170_))
                ((##fx= _g200171_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g200170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g200170_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self199147%_)
        (let ((_%self199150%_ _%self199147%_))
          (letrec ((_%linux-variant?199161%_
                    (lambda (_%sys-type199261%_)
                      (let* ((_%$%g199262199270%_
                              (__string-split
                               (symbol->string _%sys-type199261%_)
                               '#\-))
                             (_%$%else199264199278%_ (lambda () '#f))
                             (_%$%K199266199283%_
                              (lambda (_%rest199281%_)
                                (not (null? _%rest199281%_)))))
                        (if (pair? _%$%g199262199270%_)
                            (let ((_%$%hd199267199286%_
                                   (##car _%$%g199262199270%_))
                                  (_%$%tl199268199288%_
                                   (##cdr _%$%g199262199270%_)))
                              (if (equal? _%$%hd199267199286%_ '"linux")
                                  (let ((_%rest199291%_ _%$%tl199268199288%_))
                                    (_%$%K199266199283%_ _%rest199291%_))
                                  (_%$%else199264199278%_)))
                            (_%$%else199264199278%_)))))
                   (_%bsd-variant199162%_
                    (lambda (_%sys-type199220%_)
                      (let ((_%sys-type-str199222%_
                             (symbol->string _%sys-type199220%_)))
                        (let _%lp199224%_ ((_%rest199226%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest199227199235%_ _%rest199226%_)
                                 (_%$%else199229199243%_ (lambda () '#f))
                                 (_%$%K199231199249%_
                                  (lambda (_%rest199246%_ _%sys199247%_)
                                    (if (string-prefix?
                                         _%sys199247%_
                                         _%sys-type-str199222%_)
                                        _%sys199247%_
                                        (_%lp199224%_ _%rest199246%_)))))
                            (if (pair? _%$%rest199227199235%_)
                                (let ((_%$%hd199232199252%_
                                       (##car _%$%rest199227199235%_))
                                      (_%$%tl199233199254%_
                                       (##cdr _%$%rest199227199235%_)))
                                  (let* ((_%sys199257%_ _%$%hd199232199252%_)
                                         (_%rest199259%_ _%$%tl199233199254%_))
                                    (_%$%K199231199249%_
                                     _%rest199259%_
                                     _%sys199257%_)))
                                (_%$%else199229199243%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self199150%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self199150%_)
            (let* ((_%$%g199163199175%_ (system-type))
                   (_%$%else199165199183%_ (lambda () '#!void))
                   (_%$%K199167199196%_
                    (lambda (_%sys-type199186%_
                             _%sys-vendor199187%_
                             _%sys-cpu199188%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu199188%_
                       '#f
                       '0
                       _%self199150%_)
                      (gx#core-bind-feature!__%
                       _%sys-type199186%_
                       '#f
                       '0
                       _%self199150%_)
                      (if (_%linux-variant?199161%_ _%sys-type199186%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self199150%_)
                          (let ((_%$e199191%_
                                 (_%bsd-variant199162%_ _%sys-type199186%_)))
                            (if _%$e199191%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self199150%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e199191%_)
                                   '#f
                                   '0
                                   _%self199150%_))
                                '#!void))))))
              (if (pair? _%$%g199163199175%_)
                  (let ((_%$%hd199168199199%_ (##car _%$%g199163199175%_))
                        (_%$%tl199169199201%_ (##cdr _%$%g199163199175%_)))
                    (let ((_%sys-cpu199204%_ _%$%hd199168199199%_))
                      (if (pair? _%$%tl199169199201%_)
                          (let ((_%$%hd199170199206%_
                                 (##car _%$%tl199169199201%_))
                                (_%$%tl199171199208%_
                                 (##cdr _%$%tl199169199201%_)))
                            (let ((_%sys-vendor199211%_ _%$%hd199170199206%_))
                              (if (pair? _%$%tl199171199208%_)
                                  (let ((_%$%hd199172199213%_
                                         (##car _%$%tl199171199208%_))
                                        (_%$%tl199173199215%_
                                         (##cdr _%$%tl199171199208%_)))
                                    (let ((_%sys-type199218%_
                                           _%$%hd199172199213%_))
                                      (if (null? _%$%tl199173199215%_)
                                          (_%$%K199167199196%_
                                           _%sys-type199218%_
                                           _%sys-vendor199211%_
                                           _%sys-cpu199204%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self199150%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1789839226)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx199151%_)
        (let* ((_%$%e199152199159%_ _%stx199151%_)
               (_%$%E199154199163%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e199152199159%_)))
               (_%$%E199153199177%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e199152199159%_)
                      (let ((_%$%e199155199167%_
                             (gx#syntax-e _%$%e199152199159%_)))
                        (let ((_%$%hd199156199170%_
                               (##car _%$%e199155199167%_))
                              (_%$%tl199157199172%_
                               (##cdr _%$%e199155199167%_)))
                          (let* ((_%form199175%_ _%$%hd199156199170%_)
                                 (__self199180
                                  (gx#syntax-local-e__0 _%form199175%_))
                                 (__method199181
                                  (__method-ref
                                   __self199180
                                   'compile-top-syntax)))
                            (if __method199181
                                (__method199181 __self199180 _%stx199151%_)
                                (begin
                                  (error '"Missing method"
                                         __self199180
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E199154199163%_)))))
          (_%$%E199153199177%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self199100%_ _%stx199101%_)
        (let* ((_%self199104%_ _%self199100%_)
               (_%$%self199113199121%_ _%self199104%_)
               (_%$%E199115199124%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self199113199121%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K199116199137%_
                (lambda (_%K199127%_)
                  (let ((_%$e199129%_ (gx#stx-source _%stx199101%_)))
                    (if _%$e199129%_
                        (gx#stx-wrap-source
                         (_%K199127%_ _%stx199101%_)
                         _%$e199129%_)
                        (_%K199127%_ _%stx199101%_)))))
               (_%$%e199117199140%_
                (##unchecked-structure-ref _%$%self199113199121%_ '1 '#f '#f))
               (_%$%e199118199143%_
                (##unchecked-structure-ref _%$%self199113199121%_ '2 '#f '#f))
               (_%$%e199119199146%_
                (##unchecked-structure-ref _%$%self199113199121%_ '3 '#f '#f))
               (_%K199149%_ _%$%e199119199146%_))
          (_%$%K199116199137%_ _%K199149%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx198974%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx198974%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx198944%_)
        (let* ((_%$%e198945198952%_ _%stx198944%_)
               (_%$%E198947198956%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198945198952%_)))
               (_%$%E198946198970%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198945198952%_)
                      (let ((_%$%e198948198960%_
                             (gx#syntax-e _%$%e198945198952%_)))
                        (let ((_%$%hd198949198963%_
                               (##car _%$%e198948198960%_))
                              (_%$%tl198950198965%_
                               (##cdr _%$%e198948198960%_)))
                          (let ((_%body198968%_ _%$%tl198950198965%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body198968%_)))))
                      (_%$%E198947198956%_)))))
          (_%$%E198946198970%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx198913%_)
        (let* ((_%$%e198914198921%_ _%stx198913%_)
               (_%$%E198916198925%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198914198921%_)))
               (_%$%E198915198940%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198914198921%_)
                      (let ((_%$%e198917198929%_
                             (gx#syntax-e _%$%e198914198921%_)))
                        (let ((_%$%hd198918198932%_
                               (##car _%$%e198917198929%_))
                              (_%$%tl198919198934%_
                               (##cdr _%$%e198917198929%_)))
                          (let ((_%body198937%_ _%$%tl198919198934%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body198937%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E198916198925%_)))))
          (_%$%E198915198940%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx198883%_)
        (let* ((_%$%e198884198891%_ _%stx198883%_)
               (_%$%E198886198895%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198884198891%_)))
               (_%$%E198885198909%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198884198891%_)
                      (let ((_%$%e198887198899%_
                             (gx#syntax-e _%$%e198884198891%_)))
                        (let ((_%$%hd198888198902%_
                               (##car _%$%e198887198899%_))
                              (_%$%tl198889198904%_
                               (##cdr _%$%e198887198899%_)))
                          (let ((_%body198907%_ _%$%tl198889198904%_))
                            (cons '%#begin-foreign _%body198907%_))))
                      (_%$%E198886198895%_)))))
          (_%$%E198885198909%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx198829%_)
        (let* ((_%$%e198830198843%_ _%stx198829%_)
               (_%$%E198832198847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198830198843%_)))
               (_%$%E198831198879%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198830198843%_)
                      (let ((_%$%e198833198851%_
                             (gx#syntax-e _%$%e198830198843%_)))
                        (let ((_%$%hd198834198854%_
                               (##car _%$%e198833198851%_))
                              (_%$%tl198835198856%_
                               (##cdr _%$%e198833198851%_)))
                          (if (gx#stx-pair? _%$%tl198835198856%_)
                              (let ((_%$%e198836198859%_
                                     (gx#syntax-e _%$%tl198835198856%_)))
                                (let ((_%$%hd198837198862%_
                                       (##car _%$%e198836198859%_))
                                      (_%$%tl198838198864%_
                                       (##cdr _%$%e198836198859%_)))
                                  (let ((_%ann198867%_ _%$%hd198837198862%_))
                                    (if (gx#stx-pair? _%$%tl198838198864%_)
                                        (let ((_%$%e198839198869%_
                                               (gx#syntax-e
                                                _%$%tl198838198864%_)))
                                          (let ((_%$%hd198840198872%_
                                                 (##car _%$%e198839198869%_))
                                                (_%$%tl198841198874%_
                                                 (##cdr _%$%e198839198869%_)))
                                            (let ((_%expr198877%_
                                                   _%$%hd198840198872%_))
                                              (if (gx#stx-null?
                                                   _%$%tl198841198874%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr198877%_)
                                                  (_%$%E198832198847%_)))))
                                        (_%$%E198832198847%_)))))
                              (_%$%E198832198847%_))))
                      (_%$%E198832198847%_)))))
          (_%$%E198831198879%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx198799%_)
        (let* ((_%$%e198800198807%_ _%stx198799%_)
               (_%$%E198802198811%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198800198807%_)))
               (_%$%E198801198825%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198800198807%_)
                      (let ((_%$%e198803198815%_
                             (gx#syntax-e _%$%e198800198807%_)))
                        (let ((_%$%hd198804198818%_
                               (##car _%$%e198803198815%_))
                              (_%$%tl198805198820%_
                               (##cdr _%$%e198803198815%_)))
                          (let ((_%body198823%_ _%$%tl198805198820%_))
                            (cons '%#import _%body198823%_))))
                      (_%$%E198802198811%_)))))
          (_%$%E198801198825%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx198756%_)
        (let* ((_%$%e198757198767%_ _%stx198756%_)
               (_%$%E198759198771%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198757198767%_)))
               (_%$%E198758198795%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198757198767%_)
                      (let ((_%$%e198760198775%_
                             (gx#syntax-e _%$%e198757198767%_)))
                        (let ((_%$%hd198761198778%_
                               (##car _%$%e198760198775%_))
                              (_%$%tl198762198780%_
                               (##cdr _%$%e198760198775%_)))
                          (if (gx#stx-pair? _%$%tl198762198780%_)
                              (let ((_%$%e198763198783%_
                                     (gx#syntax-e _%$%tl198762198780%_)))
                                (let ((_%$%hd198764198786%_
                                       (##car _%$%e198763198783%_))
                                      (_%$%tl198765198788%_
                                       (##cdr _%$%e198763198783%_)))
                                  (let* ((_%hd198791%_ _%$%hd198764198786%_)
                                         (_%body198793%_ _%$%tl198765198788%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd198791%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body198793%_))))))
                              (_%$%E198759198771%_))))
                      (_%$%E198759198771%_)))))
          (_%$%E198758198795%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx198726%_)
        (let* ((_%$%e198727198734%_ _%stx198726%_)
               (_%$%E198729198738%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198727198734%_)))
               (_%$%E198728198752%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198727198734%_)
                      (let ((_%$%e198730198742%_
                             (gx#syntax-e _%$%e198727198734%_)))
                        (let ((_%$%hd198731198745%_
                               (##car _%$%e198730198742%_))
                              (_%$%tl198732198747%_
                               (##cdr _%$%e198730198742%_)))
                          (let ((_%body198750%_ _%$%tl198732198747%_))
                            (cons '%#export _%body198750%_))))
                      (_%$%E198729198738%_)))))
          (_%$%E198728198752%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx198696%_)
        (let* ((_%$%e198697198704%_ _%stx198696%_)
               (_%$%E198699198708%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198697198704%_)))
               (_%$%E198698198722%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198697198704%_)
                      (let ((_%$%e198700198712%_
                             (gx#syntax-e _%$%e198697198704%_)))
                        (let ((_%$%hd198701198715%_
                               (##car _%$%e198700198712%_))
                              (_%$%tl198702198717%_
                               (##cdr _%$%e198700198712%_)))
                          (let ((_%body198720%_ _%$%tl198702198717%_))
                            (cons '%#provide _%body198720%_))))
                      (_%$%E198699198708%_)))))
          (_%$%E198698198722%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx198666%_)
        (let* ((_%$%e198667198674%_ _%stx198666%_)
               (_%$%E198669198678%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198667198674%_)))
               (_%$%E198668198692%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198667198674%_)
                      (let ((_%$%e198670198682%_
                             (gx#syntax-e _%$%e198667198674%_)))
                        (let ((_%$%hd198671198685%_
                               (##car _%$%e198670198682%_))
                              (_%$%tl198672198687%_
                               (##cdr _%$%e198670198682%_)))
                          (let ((_%body198690%_ _%$%tl198672198687%_))
                            (cons '%#extern _%body198690%_))))
                      (_%$%E198669198678%_)))))
          (_%$%E198668198692%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx198612%_)
        (let* ((_%$%e198613198626%_ _%stx198612%_)
               (_%$%E198615198630%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198613198626%_)))
               (_%$%E198614198662%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198613198626%_)
                      (let ((_%$%e198616198634%_
                             (gx#syntax-e _%$%e198613198626%_)))
                        (let ((_%$%hd198617198637%_
                               (##car _%$%e198616198634%_))
                              (_%$%tl198618198639%_
                               (##cdr _%$%e198616198634%_)))
                          (if (gx#stx-pair? _%$%tl198618198639%_)
                              (let ((_%$%e198619198642%_
                                     (gx#syntax-e _%$%tl198618198639%_)))
                                (let ((_%$%hd198620198645%_
                                       (##car _%$%e198619198642%_))
                                      (_%$%tl198621198647%_
                                       (##cdr _%$%e198619198642%_)))
                                  (let ((_%hd198650%_ _%$%hd198620198645%_))
                                    (if (gx#stx-pair? _%$%tl198621198647%_)
                                        (let ((_%$%e198622198652%_
                                               (gx#syntax-e
                                                _%$%tl198621198647%_)))
                                          (let ((_%$%hd198623198655%_
                                                 (##car _%$%e198622198652%_))
                                                (_%$%tl198624198657%_
                                                 (##cdr _%$%e198622198652%_)))
                                            (let ((_%expr198660%_
                                                   _%$%hd198623198655%_))
                                              (if (gx#stx-null?
                                                   _%$%tl198624198657%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd198650%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr198660%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198615198630%_)))))
                                        (_%$%E198615198630%_)))))
                              (_%$%E198615198630%_))))
                      (_%$%E198615198630%_)))))
          (_%$%E198614198662%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx198557%_)
        (let* ((_%$%e198558198571%_ _%stx198557%_)
               (_%$%E198560198575%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198558198571%_)))
               (_%$%E198559198608%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198558198571%_)
                      (let ((_%$%e198561198579%_
                             (gx#syntax-e _%$%e198558198571%_)))
                        (let ((_%$%hd198562198582%_
                               (##car _%$%e198561198579%_))
                              (_%$%tl198563198584%_
                               (##cdr _%$%e198561198579%_)))
                          (if (gx#stx-pair? _%$%tl198563198584%_)
                              (let ((_%$%e198564198587%_
                                     (gx#syntax-e _%$%tl198563198584%_)))
                                (let ((_%$%hd198565198590%_
                                       (##car _%$%e198564198587%_))
                                      (_%$%tl198566198592%_
                                       (##cdr _%$%e198564198587%_)))
                                  (let ((_%hd198595%_ _%$%hd198565198590%_))
                                    (if (gx#stx-pair? _%$%tl198566198592%_)
                                        (let ((_%$%e198567198597%_
                                               (gx#syntax-e
                                                _%$%tl198566198592%_)))
                                          (let ((_%$%hd198568198600%_
                                                 (##car _%$%e198567198597%_))
                                                (_%$%tl198569198602%_
                                                 (##cdr _%$%e198567198597%_)))
                                            (let ((_%expr198605%_
                                                   _%$%hd198568198600%_))
                                              (if (gx#stx-null?
                                                   _%$%tl198569198602%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd198595%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr198605%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198560198575%_)))))
                                        (_%$%E198560198575%_)))))
                              (_%$%E198560198575%_))))
                      (_%$%E198560198575%_)))))
          (_%$%E198559198608%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx198527%_)
        (let* ((_%$%e198528198535%_ _%stx198527%_)
               (_%$%E198530198539%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198528198535%_)))
               (_%$%E198529198553%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198528198535%_)
                      (let ((_%$%e198531198543%_
                             (gx#syntax-e _%$%e198528198535%_)))
                        (let ((_%$%hd198532198546%_
                               (##car _%$%e198531198543%_))
                              (_%$%tl198533198548%_
                               (##cdr _%$%e198531198543%_)))
                          (let ((_%body198551%_ _%$%tl198533198548%_))
                            (cons '%#define-alias _%body198551%_))))
                      (_%$%E198530198539%_)))))
          (_%$%E198529198553%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx198497%_)
        (let* ((_%$%e198498198505%_ _%stx198497%_)
               (_%$%E198500198509%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198498198505%_)))
               (_%$%E198499198523%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198498198505%_)
                      (let ((_%$%e198501198513%_
                             (gx#syntax-e _%$%e198498198505%_)))
                        (let ((_%$%hd198502198516%_
                               (##car _%$%e198501198513%_))
                              (_%$%tl198503198518%_
                               (##cdr _%$%e198501198513%_)))
                          (let ((_%body198521%_ _%$%tl198503198518%_))
                            (cons '%#define-runtime _%body198521%_))))
                      (_%$%E198500198509%_)))))
          (_%$%E198499198523%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx198467%_)
        (let* ((_%$%e198468198475%_ _%stx198467%_)
               (_%$%E198470198479%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198468198475%_)))
               (_%$%E198469198493%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198468198475%_)
                      (let ((_%$%e198471198483%_
                             (gx#syntax-e _%$%e198468198475%_)))
                        (let ((_%$%hd198472198486%_
                               (##car _%$%e198471198483%_))
                              (_%$%tl198473198488%_
                               (##cdr _%$%e198471198483%_)))
                          (let ((_%decls198491%_ _%$%tl198473198488%_))
                            (cons '%#declare _%decls198491%_))))
                      (_%$%E198470198479%_)))))
          (_%$%E198469198493%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx198437%_)
        (let* ((_%$%e198438198445%_ _%stx198437%_)
               (_%$%E198440198449%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198438198445%_)))
               (_%$%E198439198463%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198438198445%_)
                      (let ((_%$%e198441198453%_
                             (gx#syntax-e _%$%e198438198445%_)))
                        (let ((_%$%hd198442198456%_
                               (##car _%$%e198441198453%_))
                              (_%$%tl198443198458%_
                               (##cdr _%$%e198441198453%_)))
                          (let ((_%clause198461%_ _%$%tl198443198458%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause198461%_)))))
                      (_%$%E198440198449%_)))))
          (_%$%E198439198463%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx198394%_)
        (let* ((_%$%e198395198405%_ _%stx198394%_)
               (_%$%E198397198409%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198395198405%_)))
               (_%$%E198396198433%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198395198405%_)
                      (let ((_%$%e198398198413%_
                             (gx#syntax-e _%$%e198395198405%_)))
                        (let ((_%$%hd198399198416%_
                               (##car _%$%e198398198413%_))
                              (_%$%tl198400198418%_
                               (##cdr _%$%e198398198413%_)))
                          (let ((_%hd198421%_ _%$%hd198399198416%_))
                            (if (gx#stx-pair? _%$%tl198400198418%_)
                                (let ((_%$%e198401198423%_
                                       (gx#syntax-e _%$%tl198400198418%_)))
                                  (let ((_%$%hd198402198426%_
                                         (##car _%$%e198401198423%_))
                                        (_%$%tl198403198428%_
                                         (##cdr _%$%e198401198423%_)))
                                    (let ((_%body198431%_
                                           _%$%hd198402198426%_))
                                      (if (gx#stx-null? _%$%tl198403198428%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd198421%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body198431%_)
                                                      '()))
                                          (_%$%E198397198409%_)))))
                                (_%$%E198397198409%_)))))
                      (_%$%E198397198409%_)))))
          (_%$%E198396198433%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx198364%_)
        (let* ((_%$%e198365198372%_ _%stx198364%_)
               (_%$%E198367198376%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198365198372%_)))
               (_%$%E198366198390%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198365198372%_)
                      (let ((_%$%e198368198380%_
                             (gx#syntax-e _%$%e198365198372%_)))
                        (let ((_%$%hd198369198383%_
                               (##car _%$%e198368198380%_))
                              (_%$%tl198370198385%_
                               (##cdr _%$%e198368198380%_)))
                          (let ((_%clauses198388%_ _%$%tl198370198385%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses198388%_)))))
                      (_%$%E198367198376%_)))))
          (_%$%E198366198390%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx198299%_ _%form198300%_)
        (let* ((_%$%e198301198314%_ _%stx198299%_)
               (_%$%E198303198318%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198301198314%_)))
               (_%$%E198302198350%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198301198314%_)
                      (let ((_%$%e198304198322%_
                             (gx#syntax-e _%$%e198301198314%_)))
                        (let ((_%$%hd198305198325%_
                               (##car _%$%e198304198322%_))
                              (_%$%tl198306198327%_
                               (##cdr _%$%e198304198322%_)))
                          (if (gx#stx-pair? _%$%tl198306198327%_)
                              (let ((_%$%e198307198330%_
                                     (gx#syntax-e _%$%tl198306198327%_)))
                                (let ((_%$%hd198308198333%_
                                       (##car _%$%e198307198330%_))
                                      (_%$%tl198309198335%_
                                       (##cdr _%$%e198307198330%_)))
                                  (let ((_%hd198338%_ _%$%hd198308198333%_))
                                    (if (gx#stx-pair? _%$%tl198309198335%_)
                                        (let ((_%$%e198310198340%_
                                               (gx#syntax-e
                                                _%$%tl198309198335%_)))
                                          (let ((_%$%hd198311198343%_
                                                 (##car _%$%e198310198340%_))
                                                (_%$%tl198312198345%_
                                                 (##cdr _%$%e198310198340%_)))
                                            (let ((_%body198348%_
                                                   _%$%hd198311198343%_))
                                              (if (gx#stx-null?
                                                   _%$%tl198312198345%_)
                                                  (cons _%form198300%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd198338%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body198348%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198303198318%_)))))
                                        (_%$%E198303198318%_)))))
                              (_%$%E198303198318%_))))
                      (_%$%E198303198318%_)))))
          (_%$%E198302198350%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx198357%_)
        (let ((_%form198359%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx198357%_ _%form198359%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g199182_
        (let ((_g199183_ (##length _g199182_)))
          (cond ((##fx= _g199183_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g199182_))
                ((##fx= _g199183_ 2)
                 (apply gx#core-compile-top-let-values%__% _g199182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g199182_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx198296%_)
        (gx#core-compile-top-let-values%__% _%stx198296%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx198294%_)
        (gx#core-compile-top-let-values%__% _%stx198294%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx198253%_)
        (let* ((_%$%e198254198264%_ _%stx198253%_)
               (_%$%E198256198268%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198254198264%_)))
               (_%$%E198255198290%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198254198264%_)
                      (let ((_%$%e198257198272%_
                             (gx#syntax-e _%$%e198254198264%_)))
                        (let ((_%$%hd198258198275%_
                               (##car _%$%e198257198272%_))
                              (_%$%tl198259198277%_
                               (##cdr _%$%e198257198272%_)))
                          (if (gx#stx-pair? _%$%tl198259198277%_)
                              (let ((_%$%e198260198280%_
                                     (gx#syntax-e _%$%tl198259198277%_)))
                                (let ((_%$%hd198261198283%_
                                       (##car _%$%e198260198280%_))
                                      (_%$%tl198262198285%_
                                       (##cdr _%$%e198260198280%_)))
                                  (let ((_%e198288%_ _%$%hd198261198283%_))
                                    (if (gx#stx-null? _%$%tl198262198285%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e198288%_)
                                                    '()))
                                        (_%$%E198256198268%_)))))
                              (_%$%E198256198268%_))))
                      (_%$%E198256198268%_)))))
          (_%$%E198255198290%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx198212%_)
        (let* ((_%$%e198213198223%_ _%stx198212%_)
               (_%$%E198215198227%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198213198223%_)))
               (_%$%E198214198249%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198213198223%_)
                      (let ((_%$%e198216198231%_
                             (gx#syntax-e _%$%e198213198223%_)))
                        (let ((_%$%hd198217198234%_
                               (##car _%$%e198216198231%_))
                              (_%$%tl198218198236%_
                               (##cdr _%$%e198216198231%_)))
                          (if (gx#stx-pair? _%$%tl198218198236%_)
                              (let ((_%$%e198219198239%_
                                     (gx#syntax-e _%$%tl198218198236%_)))
                                (let ((_%$%hd198220198242%_
                                       (##car _%$%e198219198239%_))
                                      (_%$%tl198221198244%_
                                       (##cdr _%$%e198219198239%_)))
                                  (let ((_%e198247%_ _%$%hd198220198242%_))
                                    (if (gx#stx-null? _%$%tl198221198244%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e198247%_)
                                                    '()))
                                        (_%$%E198215198227%_)))))
                              (_%$%E198215198227%_))))
                      (_%$%E198215198227%_)))))
          (_%$%E198214198249%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx198169%_)
        (let* ((_%$%e198170198180%_ _%stx198169%_)
               (_%$%E198172198184%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198170198180%_)))
               (_%$%E198171198208%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198170198180%_)
                      (let ((_%$%e198173198188%_
                             (gx#syntax-e _%$%e198170198180%_)))
                        (let ((_%$%hd198174198191%_
                               (##car _%$%e198173198188%_))
                              (_%$%tl198175198193%_
                               (##cdr _%$%e198173198188%_)))
                          (if (gx#stx-pair? _%$%tl198175198193%_)
                              (let ((_%$%e198176198196%_
                                     (gx#syntax-e _%$%tl198175198193%_)))
                                (let ((_%$%hd198177198199%_
                                       (##car _%$%e198176198196%_))
                                      (_%$%tl198178198201%_
                                       (##cdr _%$%e198176198196%_)))
                                  (let* ((_%rator198204%_ _%$%hd198177198199%_)
                                         (_%args198206%_ _%$%tl198178198201%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator198204%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args198206%_))))))
                              (_%$%E198172198184%_))))
                      (_%$%E198172198184%_)))))
          (_%$%E198171198208%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx198102%_)
        (let* ((_%$%e198103198119%_ _%stx198102%_)
               (_%$%E198105198123%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198103198119%_)))
               (_%$%E198104198165%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198103198119%_)
                      (let ((_%$%e198106198127%_
                             (gx#syntax-e _%$%e198103198119%_)))
                        (let ((_%$%hd198107198130%_
                               (##car _%$%e198106198127%_))
                              (_%$%tl198108198132%_
                               (##cdr _%$%e198106198127%_)))
                          (if (gx#stx-pair? _%$%tl198108198132%_)
                              (let ((_%$%e198109198135%_
                                     (gx#syntax-e _%$%tl198108198132%_)))
                                (let ((_%$%hd198110198138%_
                                       (##car _%$%e198109198135%_))
                                      (_%$%tl198111198140%_
                                       (##cdr _%$%e198109198135%_)))
                                  (let ((_%test198143%_ _%$%hd198110198138%_))
                                    (if (gx#stx-pair? _%$%tl198111198140%_)
                                        (let ((_%$%e198112198145%_
                                               (gx#syntax-e
                                                _%$%tl198111198140%_)))
                                          (let ((_%$%hd198113198148%_
                                                 (##car _%$%e198112198145%_))
                                                (_%$%tl198114198150%_
                                                 (##cdr _%$%e198112198145%_)))
                                            (let ((_%K198153%_
                                                   _%$%hd198113198148%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl198114198150%_)
                                                  (let ((_%$%e198115198155%_
                                                         (gx#syntax-e
                                                          _%$%tl198114198150%_)))
                                                    (let ((_%$%hd198116198158%_
                                                           (##car _%$%e198115198155%_))
                                                          (_%$%tl198117198160%_
                                                           (##cdr _%$%e198115198155%_)))
                                                      (let ((_%E198163%_
                                                             _%$%hd198116198158%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl198117198160%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test198143%_)
                                (cons (gx#core-compile-top-syntax _%K198153%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E198163%_)
                                            '()))))
                    (_%$%E198105198123%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198105198123%_)))))
                                        (_%$%E198105198123%_)))))
                              (_%$%E198105198123%_))))
                      (_%$%E198105198123%_)))))
          (_%$%E198104198165%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx198061%_)
        (let* ((_%$%e198062198072%_ _%stx198061%_)
               (_%$%E198064198076%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198062198072%_)))
               (_%$%E198063198098%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198062198072%_)
                      (let ((_%$%e198065198080%_
                             (gx#syntax-e _%$%e198062198072%_)))
                        (let ((_%$%hd198066198083%_
                               (##car _%$%e198065198080%_))
                              (_%$%tl198067198085%_
                               (##cdr _%$%e198065198080%_)))
                          (if (gx#stx-pair? _%$%tl198067198085%_)
                              (let ((_%$%e198068198088%_
                                     (gx#syntax-e _%$%tl198067198085%_)))
                                (let ((_%$%hd198069198091%_
                                       (##car _%$%e198068198088%_))
                                      (_%$%tl198070198093%_
                                       (##cdr _%$%e198068198088%_)))
                                  (let ((_%id198096%_ _%$%hd198069198091%_))
                                    (if (gx#stx-null? _%$%tl198070198093%_)
                                        (if (gx#identifier? _%id198096%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id198096%_)
                                                        '()))
                                            (_%$%E198064198076%_))
                                        (_%$%E198064198076%_)))))
                              (_%$%E198064198076%_))))
                      (_%$%E198064198076%_)))))
          (_%$%E198063198098%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx198007%_)
        (let* ((_%$%e198008198021%_ _%stx198007%_)
               (_%$%E198010198025%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198008198021%_)))
               (_%$%E198009198057%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198008198021%_)
                      (let ((_%$%e198011198029%_
                             (gx#syntax-e _%$%e198008198021%_)))
                        (let ((_%$%hd198012198032%_
                               (##car _%$%e198011198029%_))
                              (_%$%tl198013198034%_
                               (##cdr _%$%e198011198029%_)))
                          (if (gx#stx-pair? _%$%tl198013198034%_)
                              (let ((_%$%e198014198037%_
                                     (gx#syntax-e _%$%tl198013198034%_)))
                                (let ((_%$%hd198015198040%_
                                       (##car _%$%e198014198037%_))
                                      (_%$%tl198016198042%_
                                       (##cdr _%$%e198014198037%_)))
                                  (let ((_%id198045%_ _%$%hd198015198040%_))
                                    (if (gx#stx-pair? _%$%tl198016198042%_)
                                        (let ((_%$%e198017198047%_
                                               (gx#syntax-e
                                                _%$%tl198016198042%_)))
                                          (let ((_%$%hd198018198050%_
                                                 (##car _%$%e198017198047%_))
                                                (_%$%tl198019198052%_
                                                 (##cdr _%$%e198017198047%_)))
                                            (let ((_%expr198055%_
                                                   _%$%hd198018198050%_))
                                              (if (gx#stx-null?
                                                   _%$%tl198019198052%_)
                                                  (if (gx#identifier?
                                                       _%id198045%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id198045%_)
                          (cons (gx#core-compile-top-syntax _%expr198055%_)
                                '())))
              (_%$%E198010198025%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198010198025%_)))))
                                        (_%$%E198010198025%_)))))
                              (_%$%E198010198025%_))))
                      (_%$%E198010198025%_)))))
          (_%$%E198009198057%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id198001%_)
        (let ((_%$e198003%_ (gx#resolve-identifier__0 _%id198001%_)))
          (if _%$e198003%_
              (##unchecked-structure-ref _%$e198003%_ '1 '#f '#f)
              _%id198001%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd197999%_)
        (if (gx#identifier? _%hd197999%_)
            (gx#core-compile-top-runtime-ref _%hd197999%_)
            '#f)))))

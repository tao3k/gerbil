(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1789552480)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx198989%_)
        (let* ((_%$%e198990198997%_ _%stx198989%_)
               (_%$%E198992199001%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198990198997%_)))
               (_%$%E198991199015%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198990198997%_)
                      (let ((_%$%e198993199005%_
                             (gx#syntax-e _%$%e198990198997%_)))
                        (let ((_%$%hd198994199008%_
                               (##car _%$%e198993199005%_))
                              (_%$%tl198995199010%_
                               (##cdr _%$%e198993199005%_)))
                          (let* ((_%form199013%_ _%$%hd198994199008%_)
                                 (__self199018
                                  (gx#syntax-local-e__0 _%form199013%_))
                                 (__method199019
                                  (__method-ref
                                   __self199018
                                   'compile-top-syntax)))
                            (if __method199019
                                (__method199019 __self199018 _%stx198989%_)
                                (begin
                                  (error '"Missing method"
                                         __self199018
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E198992199001%_)))))
          (_%$%E198991199015%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self198938%_ _%stx198939%_)
        (let* ((_%self198942%_ _%self198938%_)
               (_%$%self198951198959%_ _%self198942%_)
               (_%$%E198953198962%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self198951198959%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K198954198975%_
                (lambda (_%K198965%_)
                  (let ((_%$e198967%_ (gx#stx-source _%stx198939%_)))
                    (if _%$e198967%_
                        (gx#stx-wrap-source
                         (_%K198965%_ _%stx198939%_)
                         _%$e198967%_)
                        (_%K198965%_ _%stx198939%_)))))
               (_%$%e198955198978%_
                (##unchecked-structure-ref _%$%self198951198959%_ '1 '#f '#f))
               (_%$%e198956198981%_
                (##unchecked-structure-ref _%$%self198951198959%_ '2 '#f '#f))
               (_%$%e198957198984%_
                (##unchecked-structure-ref _%$%self198951198959%_ '3 '#f '#f))
               (_%K198987%_ _%$%e198957198984%_))
          (_%$%K198954198975%_ _%K198987%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx198812%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx198812%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx198782%_)
        (let* ((_%$%e198783198790%_ _%stx198782%_)
               (_%$%E198785198794%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198783198790%_)))
               (_%$%E198784198808%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198783198790%_)
                      (let ((_%$%e198786198798%_
                             (gx#syntax-e _%$%e198783198790%_)))
                        (let ((_%$%hd198787198801%_
                               (##car _%$%e198786198798%_))
                              (_%$%tl198788198803%_
                               (##cdr _%$%e198786198798%_)))
                          (let ((_%body198806%_ _%$%tl198788198803%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body198806%_)))))
                      (_%$%E198785198794%_)))))
          (_%$%E198784198808%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx198751%_)
        (let* ((_%$%e198752198759%_ _%stx198751%_)
               (_%$%E198754198763%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198752198759%_)))
               (_%$%E198753198778%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198752198759%_)
                      (let ((_%$%e198755198767%_
                             (gx#syntax-e _%$%e198752198759%_)))
                        (let ((_%$%hd198756198770%_
                               (##car _%$%e198755198767%_))
                              (_%$%tl198757198772%_
                               (##cdr _%$%e198755198767%_)))
                          (let ((_%body198775%_ _%$%tl198757198772%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body198775%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E198754198763%_)))))
          (_%$%E198753198778%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx198721%_)
        (let* ((_%$%e198722198729%_ _%stx198721%_)
               (_%$%E198724198733%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198722198729%_)))
               (_%$%E198723198747%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198722198729%_)
                      (let ((_%$%e198725198737%_
                             (gx#syntax-e _%$%e198722198729%_)))
                        (let ((_%$%hd198726198740%_
                               (##car _%$%e198725198737%_))
                              (_%$%tl198727198742%_
                               (##cdr _%$%e198725198737%_)))
                          (let ((_%body198745%_ _%$%tl198727198742%_))
                            (cons '%#begin-foreign _%body198745%_))))
                      (_%$%E198724198733%_)))))
          (_%$%E198723198747%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx198667%_)
        (let* ((_%$%e198668198681%_ _%stx198667%_)
               (_%$%E198670198685%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198668198681%_)))
               (_%$%E198669198717%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198668198681%_)
                      (let ((_%$%e198671198689%_
                             (gx#syntax-e _%$%e198668198681%_)))
                        (let ((_%$%hd198672198692%_
                               (##car _%$%e198671198689%_))
                              (_%$%tl198673198694%_
                               (##cdr _%$%e198671198689%_)))
                          (if (gx#stx-pair? _%$%tl198673198694%_)
                              (let ((_%$%e198674198697%_
                                     (gx#syntax-e _%$%tl198673198694%_)))
                                (let ((_%$%hd198675198700%_
                                       (##car _%$%e198674198697%_))
                                      (_%$%tl198676198702%_
                                       (##cdr _%$%e198674198697%_)))
                                  (let ((_%ann198705%_ _%$%hd198675198700%_))
                                    (if (gx#stx-pair? _%$%tl198676198702%_)
                                        (let ((_%$%e198677198707%_
                                               (gx#syntax-e
                                                _%$%tl198676198702%_)))
                                          (let ((_%$%hd198678198710%_
                                                 (##car _%$%e198677198707%_))
                                                (_%$%tl198679198712%_
                                                 (##cdr _%$%e198677198707%_)))
                                            (let ((_%expr198715%_
                                                   _%$%hd198678198710%_))
                                              (if (gx#stx-null?
                                                   _%$%tl198679198712%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr198715%_)
                                                  (_%$%E198670198685%_)))))
                                        (_%$%E198670198685%_)))))
                              (_%$%E198670198685%_))))
                      (_%$%E198670198685%_)))))
          (_%$%E198669198717%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx198637%_)
        (let* ((_%$%e198638198645%_ _%stx198637%_)
               (_%$%E198640198649%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198638198645%_)))
               (_%$%E198639198663%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198638198645%_)
                      (let ((_%$%e198641198653%_
                             (gx#syntax-e _%$%e198638198645%_)))
                        (let ((_%$%hd198642198656%_
                               (##car _%$%e198641198653%_))
                              (_%$%tl198643198658%_
                               (##cdr _%$%e198641198653%_)))
                          (let ((_%body198661%_ _%$%tl198643198658%_))
                            (cons '%#import _%body198661%_))))
                      (_%$%E198640198649%_)))))
          (_%$%E198639198663%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx198594%_)
        (let* ((_%$%e198595198605%_ _%stx198594%_)
               (_%$%E198597198609%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198595198605%_)))
               (_%$%E198596198633%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198595198605%_)
                      (let ((_%$%e198598198613%_
                             (gx#syntax-e _%$%e198595198605%_)))
                        (let ((_%$%hd198599198616%_
                               (##car _%$%e198598198613%_))
                              (_%$%tl198600198618%_
                               (##cdr _%$%e198598198613%_)))
                          (if (gx#stx-pair? _%$%tl198600198618%_)
                              (let ((_%$%e198601198621%_
                                     (gx#syntax-e _%$%tl198600198618%_)))
                                (let ((_%$%hd198602198624%_
                                       (##car _%$%e198601198621%_))
                                      (_%$%tl198603198626%_
                                       (##cdr _%$%e198601198621%_)))
                                  (let* ((_%hd198629%_ _%$%hd198602198624%_)
                                         (_%body198631%_ _%$%tl198603198626%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd198629%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body198631%_))))))
                              (_%$%E198597198609%_))))
                      (_%$%E198597198609%_)))))
          (_%$%E198596198633%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx198564%_)
        (let* ((_%$%e198565198572%_ _%stx198564%_)
               (_%$%E198567198576%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198565198572%_)))
               (_%$%E198566198590%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198565198572%_)
                      (let ((_%$%e198568198580%_
                             (gx#syntax-e _%$%e198565198572%_)))
                        (let ((_%$%hd198569198583%_
                               (##car _%$%e198568198580%_))
                              (_%$%tl198570198585%_
                               (##cdr _%$%e198568198580%_)))
                          (let ((_%body198588%_ _%$%tl198570198585%_))
                            (cons '%#export _%body198588%_))))
                      (_%$%E198567198576%_)))))
          (_%$%E198566198590%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx198534%_)
        (let* ((_%$%e198535198542%_ _%stx198534%_)
               (_%$%E198537198546%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198535198542%_)))
               (_%$%E198536198560%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198535198542%_)
                      (let ((_%$%e198538198550%_
                             (gx#syntax-e _%$%e198535198542%_)))
                        (let ((_%$%hd198539198553%_
                               (##car _%$%e198538198550%_))
                              (_%$%tl198540198555%_
                               (##cdr _%$%e198538198550%_)))
                          (let ((_%body198558%_ _%$%tl198540198555%_))
                            (cons '%#provide _%body198558%_))))
                      (_%$%E198537198546%_)))))
          (_%$%E198536198560%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx198504%_)
        (let* ((_%$%e198505198512%_ _%stx198504%_)
               (_%$%E198507198516%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198505198512%_)))
               (_%$%E198506198530%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198505198512%_)
                      (let ((_%$%e198508198520%_
                             (gx#syntax-e _%$%e198505198512%_)))
                        (let ((_%$%hd198509198523%_
                               (##car _%$%e198508198520%_))
                              (_%$%tl198510198525%_
                               (##cdr _%$%e198508198520%_)))
                          (let ((_%body198528%_ _%$%tl198510198525%_))
                            (cons '%#extern _%body198528%_))))
                      (_%$%E198507198516%_)))))
          (_%$%E198506198530%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx198450%_)
        (let* ((_%$%e198451198464%_ _%stx198450%_)
               (_%$%E198453198468%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198451198464%_)))
               (_%$%E198452198500%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198451198464%_)
                      (let ((_%$%e198454198472%_
                             (gx#syntax-e _%$%e198451198464%_)))
                        (let ((_%$%hd198455198475%_
                               (##car _%$%e198454198472%_))
                              (_%$%tl198456198477%_
                               (##cdr _%$%e198454198472%_)))
                          (if (gx#stx-pair? _%$%tl198456198477%_)
                              (let ((_%$%e198457198480%_
                                     (gx#syntax-e _%$%tl198456198477%_)))
                                (let ((_%$%hd198458198483%_
                                       (##car _%$%e198457198480%_))
                                      (_%$%tl198459198485%_
                                       (##cdr _%$%e198457198480%_)))
                                  (let ((_%hd198488%_ _%$%hd198458198483%_))
                                    (if (gx#stx-pair? _%$%tl198459198485%_)
                                        (let ((_%$%e198460198490%_
                                               (gx#syntax-e
                                                _%$%tl198459198485%_)))
                                          (let ((_%$%hd198461198493%_
                                                 (##car _%$%e198460198490%_))
                                                (_%$%tl198462198495%_
                                                 (##cdr _%$%e198460198490%_)))
                                            (let ((_%expr198498%_
                                                   _%$%hd198461198493%_))
                                              (if (gx#stx-null?
                                                   _%$%tl198462198495%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd198488%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr198498%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198453198468%_)))))
                                        (_%$%E198453198468%_)))))
                              (_%$%E198453198468%_))))
                      (_%$%E198453198468%_)))))
          (_%$%E198452198500%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx198395%_)
        (let* ((_%$%e198396198409%_ _%stx198395%_)
               (_%$%E198398198413%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198396198409%_)))
               (_%$%E198397198446%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198396198409%_)
                      (let ((_%$%e198399198417%_
                             (gx#syntax-e _%$%e198396198409%_)))
                        (let ((_%$%hd198400198420%_
                               (##car _%$%e198399198417%_))
                              (_%$%tl198401198422%_
                               (##cdr _%$%e198399198417%_)))
                          (if (gx#stx-pair? _%$%tl198401198422%_)
                              (let ((_%$%e198402198425%_
                                     (gx#syntax-e _%$%tl198401198422%_)))
                                (let ((_%$%hd198403198428%_
                                       (##car _%$%e198402198425%_))
                                      (_%$%tl198404198430%_
                                       (##cdr _%$%e198402198425%_)))
                                  (let ((_%hd198433%_ _%$%hd198403198428%_))
                                    (if (gx#stx-pair? _%$%tl198404198430%_)
                                        (let ((_%$%e198405198435%_
                                               (gx#syntax-e
                                                _%$%tl198404198430%_)))
                                          (let ((_%$%hd198406198438%_
                                                 (##car _%$%e198405198435%_))
                                                (_%$%tl198407198440%_
                                                 (##cdr _%$%e198405198435%_)))
                                            (let ((_%expr198443%_
                                                   _%$%hd198406198438%_))
                                              (if (gx#stx-null?
                                                   _%$%tl198407198440%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd198433%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr198443%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198398198413%_)))))
                                        (_%$%E198398198413%_)))))
                              (_%$%E198398198413%_))))
                      (_%$%E198398198413%_)))))
          (_%$%E198397198446%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx198365%_)
        (let* ((_%$%e198366198373%_ _%stx198365%_)
               (_%$%E198368198377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198366198373%_)))
               (_%$%E198367198391%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198366198373%_)
                      (let ((_%$%e198369198381%_
                             (gx#syntax-e _%$%e198366198373%_)))
                        (let ((_%$%hd198370198384%_
                               (##car _%$%e198369198381%_))
                              (_%$%tl198371198386%_
                               (##cdr _%$%e198369198381%_)))
                          (let ((_%body198389%_ _%$%tl198371198386%_))
                            (cons '%#define-alias _%body198389%_))))
                      (_%$%E198368198377%_)))))
          (_%$%E198367198391%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx198335%_)
        (let* ((_%$%e198336198343%_ _%stx198335%_)
               (_%$%E198338198347%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198336198343%_)))
               (_%$%E198337198361%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198336198343%_)
                      (let ((_%$%e198339198351%_
                             (gx#syntax-e _%$%e198336198343%_)))
                        (let ((_%$%hd198340198354%_
                               (##car _%$%e198339198351%_))
                              (_%$%tl198341198356%_
                               (##cdr _%$%e198339198351%_)))
                          (let ((_%body198359%_ _%$%tl198341198356%_))
                            (cons '%#define-runtime _%body198359%_))))
                      (_%$%E198338198347%_)))))
          (_%$%E198337198361%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx198305%_)
        (let* ((_%$%e198306198313%_ _%stx198305%_)
               (_%$%E198308198317%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198306198313%_)))
               (_%$%E198307198331%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198306198313%_)
                      (let ((_%$%e198309198321%_
                             (gx#syntax-e _%$%e198306198313%_)))
                        (let ((_%$%hd198310198324%_
                               (##car _%$%e198309198321%_))
                              (_%$%tl198311198326%_
                               (##cdr _%$%e198309198321%_)))
                          (let ((_%decls198329%_ _%$%tl198311198326%_))
                            (cons '%#declare _%decls198329%_))))
                      (_%$%E198308198317%_)))))
          (_%$%E198307198331%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx198275%_)
        (let* ((_%$%e198276198283%_ _%stx198275%_)
               (_%$%E198278198287%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198276198283%_)))
               (_%$%E198277198301%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198276198283%_)
                      (let ((_%$%e198279198291%_
                             (gx#syntax-e _%$%e198276198283%_)))
                        (let ((_%$%hd198280198294%_
                               (##car _%$%e198279198291%_))
                              (_%$%tl198281198296%_
                               (##cdr _%$%e198279198291%_)))
                          (let ((_%clause198299%_ _%$%tl198281198296%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause198299%_)))))
                      (_%$%E198278198287%_)))))
          (_%$%E198277198301%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx198232%_)
        (let* ((_%$%e198233198243%_ _%stx198232%_)
               (_%$%E198235198247%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198233198243%_)))
               (_%$%E198234198271%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198233198243%_)
                      (let ((_%$%e198236198251%_
                             (gx#syntax-e _%$%e198233198243%_)))
                        (let ((_%$%hd198237198254%_
                               (##car _%$%e198236198251%_))
                              (_%$%tl198238198256%_
                               (##cdr _%$%e198236198251%_)))
                          (let ((_%hd198259%_ _%$%hd198237198254%_))
                            (if (gx#stx-pair? _%$%tl198238198256%_)
                                (let ((_%$%e198239198261%_
                                       (gx#syntax-e _%$%tl198238198256%_)))
                                  (let ((_%$%hd198240198264%_
                                         (##car _%$%e198239198261%_))
                                        (_%$%tl198241198266%_
                                         (##cdr _%$%e198239198261%_)))
                                    (let ((_%body198269%_
                                           _%$%hd198240198264%_))
                                      (if (gx#stx-null? _%$%tl198241198266%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd198259%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body198269%_)
                                                      '()))
                                          (_%$%E198235198247%_)))))
                                (_%$%E198235198247%_)))))
                      (_%$%E198235198247%_)))))
          (_%$%E198234198271%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx198202%_)
        (let* ((_%$%e198203198210%_ _%stx198202%_)
               (_%$%E198205198214%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198203198210%_)))
               (_%$%E198204198228%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198203198210%_)
                      (let ((_%$%e198206198218%_
                             (gx#syntax-e _%$%e198203198210%_)))
                        (let ((_%$%hd198207198221%_
                               (##car _%$%e198206198218%_))
                              (_%$%tl198208198223%_
                               (##cdr _%$%e198206198218%_)))
                          (let ((_%clauses198226%_ _%$%tl198208198223%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses198226%_)))))
                      (_%$%E198205198214%_)))))
          (_%$%E198204198228%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx198137%_ _%form198138%_)
        (let* ((_%$%e198139198152%_ _%stx198137%_)
               (_%$%E198141198156%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198139198152%_)))
               (_%$%E198140198188%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198139198152%_)
                      (let ((_%$%e198142198160%_
                             (gx#syntax-e _%$%e198139198152%_)))
                        (let ((_%$%hd198143198163%_
                               (##car _%$%e198142198160%_))
                              (_%$%tl198144198165%_
                               (##cdr _%$%e198142198160%_)))
                          (if (gx#stx-pair? _%$%tl198144198165%_)
                              (let ((_%$%e198145198168%_
                                     (gx#syntax-e _%$%tl198144198165%_)))
                                (let ((_%$%hd198146198171%_
                                       (##car _%$%e198145198168%_))
                                      (_%$%tl198147198173%_
                                       (##cdr _%$%e198145198168%_)))
                                  (let ((_%hd198176%_ _%$%hd198146198171%_))
                                    (if (gx#stx-pair? _%$%tl198147198173%_)
                                        (let ((_%$%e198148198178%_
                                               (gx#syntax-e
                                                _%$%tl198147198173%_)))
                                          (let ((_%$%hd198149198181%_
                                                 (##car _%$%e198148198178%_))
                                                (_%$%tl198150198183%_
                                                 (##cdr _%$%e198148198178%_)))
                                            (let ((_%body198186%_
                                                   _%$%hd198149198181%_))
                                              (if (gx#stx-null?
                                                   _%$%tl198150198183%_)
                                                  (cons _%form198138%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd198176%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body198186%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198141198156%_)))))
                                        (_%$%E198141198156%_)))))
                              (_%$%E198141198156%_))))
                      (_%$%E198141198156%_)))))
          (_%$%E198140198188%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx198195%_)
        (let ((_%form198197%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx198195%_ _%form198197%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g199020_
        (let ((_g199021_ (##length _g199020_)))
          (cond ((##fx= _g199021_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g199020_))
                ((##fx= _g199021_ 2)
                 (apply gx#core-compile-top-let-values%__% _g199020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g199020_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx198134%_)
        (gx#core-compile-top-let-values%__% _%stx198134%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx198132%_)
        (gx#core-compile-top-let-values%__% _%stx198132%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx198091%_)
        (let* ((_%$%e198092198102%_ _%stx198091%_)
               (_%$%E198094198106%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198092198102%_)))
               (_%$%E198093198128%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198092198102%_)
                      (let ((_%$%e198095198110%_
                             (gx#syntax-e _%$%e198092198102%_)))
                        (let ((_%$%hd198096198113%_
                               (##car _%$%e198095198110%_))
                              (_%$%tl198097198115%_
                               (##cdr _%$%e198095198110%_)))
                          (if (gx#stx-pair? _%$%tl198097198115%_)
                              (let ((_%$%e198098198118%_
                                     (gx#syntax-e _%$%tl198097198115%_)))
                                (let ((_%$%hd198099198121%_
                                       (##car _%$%e198098198118%_))
                                      (_%$%tl198100198123%_
                                       (##cdr _%$%e198098198118%_)))
                                  (let ((_%e198126%_ _%$%hd198099198121%_))
                                    (if (gx#stx-null? _%$%tl198100198123%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e198126%_)
                                                    '()))
                                        (_%$%E198094198106%_)))))
                              (_%$%E198094198106%_))))
                      (_%$%E198094198106%_)))))
          (_%$%E198093198128%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx198050%_)
        (let* ((_%$%e198051198061%_ _%stx198050%_)
               (_%$%E198053198065%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198051198061%_)))
               (_%$%E198052198087%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198051198061%_)
                      (let ((_%$%e198054198069%_
                             (gx#syntax-e _%$%e198051198061%_)))
                        (let ((_%$%hd198055198072%_
                               (##car _%$%e198054198069%_))
                              (_%$%tl198056198074%_
                               (##cdr _%$%e198054198069%_)))
                          (if (gx#stx-pair? _%$%tl198056198074%_)
                              (let ((_%$%e198057198077%_
                                     (gx#syntax-e _%$%tl198056198074%_)))
                                (let ((_%$%hd198058198080%_
                                       (##car _%$%e198057198077%_))
                                      (_%$%tl198059198082%_
                                       (##cdr _%$%e198057198077%_)))
                                  (let ((_%e198085%_ _%$%hd198058198080%_))
                                    (if (gx#stx-null? _%$%tl198059198082%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e198085%_)
                                                    '()))
                                        (_%$%E198053198065%_)))))
                              (_%$%E198053198065%_))))
                      (_%$%E198053198065%_)))))
          (_%$%E198052198087%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx198007%_)
        (let* ((_%$%e198008198018%_ _%stx198007%_)
               (_%$%E198010198022%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e198008198018%_)))
               (_%$%E198009198046%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e198008198018%_)
                      (let ((_%$%e198011198026%_
                             (gx#syntax-e _%$%e198008198018%_)))
                        (let ((_%$%hd198012198029%_
                               (##car _%$%e198011198026%_))
                              (_%$%tl198013198031%_
                               (##cdr _%$%e198011198026%_)))
                          (if (gx#stx-pair? _%$%tl198013198031%_)
                              (let ((_%$%e198014198034%_
                                     (gx#syntax-e _%$%tl198013198031%_)))
                                (let ((_%$%hd198015198037%_
                                       (##car _%$%e198014198034%_))
                                      (_%$%tl198016198039%_
                                       (##cdr _%$%e198014198034%_)))
                                  (let* ((_%rator198042%_ _%$%hd198015198037%_)
                                         (_%args198044%_ _%$%tl198016198039%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator198042%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args198044%_))))))
                              (_%$%E198010198022%_))))
                      (_%$%E198010198022%_)))))
          (_%$%E198009198046%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx197940%_)
        (let* ((_%$%e197941197957%_ _%stx197940%_)
               (_%$%E197943197961%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e197941197957%_)))
               (_%$%E197942198003%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e197941197957%_)
                      (let ((_%$%e197944197965%_
                             (gx#syntax-e _%$%e197941197957%_)))
                        (let ((_%$%hd197945197968%_
                               (##car _%$%e197944197965%_))
                              (_%$%tl197946197970%_
                               (##cdr _%$%e197944197965%_)))
                          (if (gx#stx-pair? _%$%tl197946197970%_)
                              (let ((_%$%e197947197973%_
                                     (gx#syntax-e _%$%tl197946197970%_)))
                                (let ((_%$%hd197948197976%_
                                       (##car _%$%e197947197973%_))
                                      (_%$%tl197949197978%_
                                       (##cdr _%$%e197947197973%_)))
                                  (let ((_%test197981%_ _%$%hd197948197976%_))
                                    (if (gx#stx-pair? _%$%tl197949197978%_)
                                        (let ((_%$%e197950197983%_
                                               (gx#syntax-e
                                                _%$%tl197949197978%_)))
                                          (let ((_%$%hd197951197986%_
                                                 (##car _%$%e197950197983%_))
                                                (_%$%tl197952197988%_
                                                 (##cdr _%$%e197950197983%_)))
                                            (let ((_%K197991%_
                                                   _%$%hd197951197986%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl197952197988%_)
                                                  (let ((_%$%e197953197993%_
                                                         (gx#syntax-e
                                                          _%$%tl197952197988%_)))
                                                    (let ((_%$%hd197954197996%_
                                                           (##car _%$%e197953197993%_))
                                                          (_%$%tl197955197998%_
                                                           (##cdr _%$%e197953197993%_)))
                                                      (let ((_%E198001%_
                                                             _%$%hd197954197996%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl197955197998%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test197981%_)
                                (cons (gx#core-compile-top-syntax _%K197991%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E198001%_)
                                            '()))))
                    (_%$%E197943197961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E197943197961%_)))))
                                        (_%$%E197943197961%_)))))
                              (_%$%E197943197961%_))))
                      (_%$%E197943197961%_)))))
          (_%$%E197942198003%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx197899%_)
        (let* ((_%$%e197900197910%_ _%stx197899%_)
               (_%$%E197902197914%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e197900197910%_)))
               (_%$%E197901197936%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e197900197910%_)
                      (let ((_%$%e197903197918%_
                             (gx#syntax-e _%$%e197900197910%_)))
                        (let ((_%$%hd197904197921%_
                               (##car _%$%e197903197918%_))
                              (_%$%tl197905197923%_
                               (##cdr _%$%e197903197918%_)))
                          (if (gx#stx-pair? _%$%tl197905197923%_)
                              (let ((_%$%e197906197926%_
                                     (gx#syntax-e _%$%tl197905197923%_)))
                                (let ((_%$%hd197907197929%_
                                       (##car _%$%e197906197926%_))
                                      (_%$%tl197908197931%_
                                       (##cdr _%$%e197906197926%_)))
                                  (let ((_%id197934%_ _%$%hd197907197929%_))
                                    (if (gx#stx-null? _%$%tl197908197931%_)
                                        (if (gx#identifier? _%id197934%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id197934%_)
                                                        '()))
                                            (_%$%E197902197914%_))
                                        (_%$%E197902197914%_)))))
                              (_%$%E197902197914%_))))
                      (_%$%E197902197914%_)))))
          (_%$%E197901197936%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx197845%_)
        (let* ((_%$%e197846197859%_ _%stx197845%_)
               (_%$%E197848197863%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e197846197859%_)))
               (_%$%E197847197895%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e197846197859%_)
                      (let ((_%$%e197849197867%_
                             (gx#syntax-e _%$%e197846197859%_)))
                        (let ((_%$%hd197850197870%_
                               (##car _%$%e197849197867%_))
                              (_%$%tl197851197872%_
                               (##cdr _%$%e197849197867%_)))
                          (if (gx#stx-pair? _%$%tl197851197872%_)
                              (let ((_%$%e197852197875%_
                                     (gx#syntax-e _%$%tl197851197872%_)))
                                (let ((_%$%hd197853197878%_
                                       (##car _%$%e197852197875%_))
                                      (_%$%tl197854197880%_
                                       (##cdr _%$%e197852197875%_)))
                                  (let ((_%id197883%_ _%$%hd197853197878%_))
                                    (if (gx#stx-pair? _%$%tl197854197880%_)
                                        (let ((_%$%e197855197885%_
                                               (gx#syntax-e
                                                _%$%tl197854197880%_)))
                                          (let ((_%$%hd197856197888%_
                                                 (##car _%$%e197855197885%_))
                                                (_%$%tl197857197890%_
                                                 (##cdr _%$%e197855197885%_)))
                                            (let ((_%expr197893%_
                                                   _%$%hd197856197888%_))
                                              (if (gx#stx-null?
                                                   _%$%tl197857197890%_)
                                                  (if (gx#identifier?
                                                       _%id197883%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id197883%_)
                          (cons (gx#core-compile-top-syntax _%expr197893%_)
                                '())))
              (_%$%E197848197863%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E197848197863%_)))))
                                        (_%$%E197848197863%_)))))
                              (_%$%E197848197863%_))))
                      (_%$%E197848197863%_)))))
          (_%$%E197847197895%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id197839%_)
        (let ((_%$e197841%_ (gx#resolve-identifier__0 _%id197839%_)))
          (if _%$e197841%_
              (##unchecked-structure-ref _%$e197841%_ '1 '#f '#f)
              _%id197839%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd197837%_)
        (if (gx#identifier? _%hd197837%_)
            (gx#core-compile-top-runtime-ref _%hd197837%_)
            '#f)))))

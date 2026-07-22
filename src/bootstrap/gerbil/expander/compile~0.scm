(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1784758125)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx196976%_)
        (let* ((_%$%e196977196984%_ _%stx196976%_)
               (_%$%E196979196988%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196977196984%_)))
               (_%$%E196978197002%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196977196984%_)
                      (let ((_%$%e196980196992%_
                             (gx#syntax-e _%$%e196977196984%_)))
                        (let ((_%$%hd196981196995%_
                               (##car _%$%e196980196992%_))
                              (_%$%tl196982196997%_
                               (##cdr _%$%e196980196992%_)))
                          (let* ((_%form197000%_ _%$%hd196981196995%_)
                                 (__self197005
                                  (gx#syntax-local-e__0 _%form197000%_))
                                 (__method197006
                                  (__method-ref
                                   __self197005
                                   'compile-top-syntax)))
                            (if __method197006
                                (__method197006 __self197005 _%stx196976%_)
                                (begin
                                  (error '"Missing method"
                                         __self197005
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E196979196988%_)))))
          (_%$%E196978197002%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self196925%_ _%stx196926%_)
        (let* ((_%self196929%_ _%self196925%_)
               (_%$%self196938196946%_ _%self196929%_)
               (_%$%E196940196949%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self196938196946%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K196941196962%_
                (lambda (_%K196952%_)
                  (let ((_%$e196954%_ (gx#stx-source _%stx196926%_)))
                    (if _%$e196954%_
                        (gx#stx-wrap-source
                         (_%K196952%_ _%stx196926%_)
                         _%$e196954%_)
                        (_%K196952%_ _%stx196926%_)))))
               (_%$%e196942196965%_
                (##unchecked-structure-ref _%$%self196938196946%_ '1 '#f '#f))
               (_%$%e196943196968%_
                (##unchecked-structure-ref _%$%self196938196946%_ '2 '#f '#f))
               (_%$%e196944196971%_
                (##unchecked-structure-ref _%$%self196938196946%_ '3 '#f '#f))
               (_%K196974%_ _%$%e196944196971%_))
          (_%$%K196941196962%_ _%K196974%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx196799%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx196799%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx196769%_)
        (let* ((_%$%e196770196777%_ _%stx196769%_)
               (_%$%E196772196781%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196770196777%_)))
               (_%$%E196771196795%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196770196777%_)
                      (let ((_%$%e196773196785%_
                             (gx#syntax-e _%$%e196770196777%_)))
                        (let ((_%$%hd196774196788%_
                               (##car _%$%e196773196785%_))
                              (_%$%tl196775196790%_
                               (##cdr _%$%e196773196785%_)))
                          (let ((_%body196793%_ _%$%tl196775196790%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body196793%_)))))
                      (_%$%E196772196781%_)))))
          (_%$%E196771196795%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx196738%_)
        (let* ((_%$%e196739196746%_ _%stx196738%_)
               (_%$%E196741196750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196739196746%_)))
               (_%$%E196740196765%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196739196746%_)
                      (let ((_%$%e196742196754%_
                             (gx#syntax-e _%$%e196739196746%_)))
                        (let ((_%$%hd196743196757%_
                               (##car _%$%e196742196754%_))
                              (_%$%tl196744196759%_
                               (##cdr _%$%e196742196754%_)))
                          (let ((_%body196762%_ _%$%tl196744196759%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body196762%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E196741196750%_)))))
          (_%$%E196740196765%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx196708%_)
        (let* ((_%$%e196709196716%_ _%stx196708%_)
               (_%$%E196711196720%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196709196716%_)))
               (_%$%E196710196734%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196709196716%_)
                      (let ((_%$%e196712196724%_
                             (gx#syntax-e _%$%e196709196716%_)))
                        (let ((_%$%hd196713196727%_
                               (##car _%$%e196712196724%_))
                              (_%$%tl196714196729%_
                               (##cdr _%$%e196712196724%_)))
                          (let ((_%body196732%_ _%$%tl196714196729%_))
                            (cons '%#begin-foreign _%body196732%_))))
                      (_%$%E196711196720%_)))))
          (_%$%E196710196734%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx196654%_)
        (let* ((_%$%e196655196668%_ _%stx196654%_)
               (_%$%E196657196672%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196655196668%_)))
               (_%$%E196656196704%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196655196668%_)
                      (let ((_%$%e196658196676%_
                             (gx#syntax-e _%$%e196655196668%_)))
                        (let ((_%$%hd196659196679%_
                               (##car _%$%e196658196676%_))
                              (_%$%tl196660196681%_
                               (##cdr _%$%e196658196676%_)))
                          (if (gx#stx-pair? _%$%tl196660196681%_)
                              (let ((_%$%e196661196684%_
                                     (gx#syntax-e _%$%tl196660196681%_)))
                                (let ((_%$%hd196662196687%_
                                       (##car _%$%e196661196684%_))
                                      (_%$%tl196663196689%_
                                       (##cdr _%$%e196661196684%_)))
                                  (let ((_%ann196692%_ _%$%hd196662196687%_))
                                    (if (gx#stx-pair? _%$%tl196663196689%_)
                                        (let ((_%$%e196664196694%_
                                               (gx#syntax-e
                                                _%$%tl196663196689%_)))
                                          (let ((_%$%hd196665196697%_
                                                 (##car _%$%e196664196694%_))
                                                (_%$%tl196666196699%_
                                                 (##cdr _%$%e196664196694%_)))
                                            (let ((_%expr196702%_
                                                   _%$%hd196665196697%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196666196699%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr196702%_)
                                                  (_%$%E196657196672%_)))))
                                        (_%$%E196657196672%_)))))
                              (_%$%E196657196672%_))))
                      (_%$%E196657196672%_)))))
          (_%$%E196656196704%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx196624%_)
        (let* ((_%$%e196625196632%_ _%stx196624%_)
               (_%$%E196627196636%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196625196632%_)))
               (_%$%E196626196650%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196625196632%_)
                      (let ((_%$%e196628196640%_
                             (gx#syntax-e _%$%e196625196632%_)))
                        (let ((_%$%hd196629196643%_
                               (##car _%$%e196628196640%_))
                              (_%$%tl196630196645%_
                               (##cdr _%$%e196628196640%_)))
                          (let ((_%body196648%_ _%$%tl196630196645%_))
                            (cons '%#import _%body196648%_))))
                      (_%$%E196627196636%_)))))
          (_%$%E196626196650%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx196581%_)
        (let* ((_%$%e196582196592%_ _%stx196581%_)
               (_%$%E196584196596%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196582196592%_)))
               (_%$%E196583196620%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196582196592%_)
                      (let ((_%$%e196585196600%_
                             (gx#syntax-e _%$%e196582196592%_)))
                        (let ((_%$%hd196586196603%_
                               (##car _%$%e196585196600%_))
                              (_%$%tl196587196605%_
                               (##cdr _%$%e196585196600%_)))
                          (if (gx#stx-pair? _%$%tl196587196605%_)
                              (let ((_%$%e196588196608%_
                                     (gx#syntax-e _%$%tl196587196605%_)))
                                (let ((_%$%hd196589196611%_
                                       (##car _%$%e196588196608%_))
                                      (_%$%tl196590196613%_
                                       (##cdr _%$%e196588196608%_)))
                                  (let* ((_%hd196616%_ _%$%hd196589196611%_)
                                         (_%body196618%_ _%$%tl196590196613%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd196616%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body196618%_))))))
                              (_%$%E196584196596%_))))
                      (_%$%E196584196596%_)))))
          (_%$%E196583196620%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx196551%_)
        (let* ((_%$%e196552196559%_ _%stx196551%_)
               (_%$%E196554196563%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196552196559%_)))
               (_%$%E196553196577%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196552196559%_)
                      (let ((_%$%e196555196567%_
                             (gx#syntax-e _%$%e196552196559%_)))
                        (let ((_%$%hd196556196570%_
                               (##car _%$%e196555196567%_))
                              (_%$%tl196557196572%_
                               (##cdr _%$%e196555196567%_)))
                          (let ((_%body196575%_ _%$%tl196557196572%_))
                            (cons '%#export _%body196575%_))))
                      (_%$%E196554196563%_)))))
          (_%$%E196553196577%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx196521%_)
        (let* ((_%$%e196522196529%_ _%stx196521%_)
               (_%$%E196524196533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196522196529%_)))
               (_%$%E196523196547%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196522196529%_)
                      (let ((_%$%e196525196537%_
                             (gx#syntax-e _%$%e196522196529%_)))
                        (let ((_%$%hd196526196540%_
                               (##car _%$%e196525196537%_))
                              (_%$%tl196527196542%_
                               (##cdr _%$%e196525196537%_)))
                          (let ((_%body196545%_ _%$%tl196527196542%_))
                            (cons '%#provide _%body196545%_))))
                      (_%$%E196524196533%_)))))
          (_%$%E196523196547%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx196491%_)
        (let* ((_%$%e196492196499%_ _%stx196491%_)
               (_%$%E196494196503%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196492196499%_)))
               (_%$%E196493196517%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196492196499%_)
                      (let ((_%$%e196495196507%_
                             (gx#syntax-e _%$%e196492196499%_)))
                        (let ((_%$%hd196496196510%_
                               (##car _%$%e196495196507%_))
                              (_%$%tl196497196512%_
                               (##cdr _%$%e196495196507%_)))
                          (let ((_%body196515%_ _%$%tl196497196512%_))
                            (cons '%#extern _%body196515%_))))
                      (_%$%E196494196503%_)))))
          (_%$%E196493196517%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx196437%_)
        (let* ((_%$%e196438196451%_ _%stx196437%_)
               (_%$%E196440196455%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196438196451%_)))
               (_%$%E196439196487%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196438196451%_)
                      (let ((_%$%e196441196459%_
                             (gx#syntax-e _%$%e196438196451%_)))
                        (let ((_%$%hd196442196462%_
                               (##car _%$%e196441196459%_))
                              (_%$%tl196443196464%_
                               (##cdr _%$%e196441196459%_)))
                          (if (gx#stx-pair? _%$%tl196443196464%_)
                              (let ((_%$%e196444196467%_
                                     (gx#syntax-e _%$%tl196443196464%_)))
                                (let ((_%$%hd196445196470%_
                                       (##car _%$%e196444196467%_))
                                      (_%$%tl196446196472%_
                                       (##cdr _%$%e196444196467%_)))
                                  (let ((_%hd196475%_ _%$%hd196445196470%_))
                                    (if (gx#stx-pair? _%$%tl196446196472%_)
                                        (let ((_%$%e196447196477%_
                                               (gx#syntax-e
                                                _%$%tl196446196472%_)))
                                          (let ((_%$%hd196448196480%_
                                                 (##car _%$%e196447196477%_))
                                                (_%$%tl196449196482%_
                                                 (##cdr _%$%e196447196477%_)))
                                            (let ((_%expr196485%_
                                                   _%$%hd196448196480%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196449196482%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd196475%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr196485%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E196440196455%_)))))
                                        (_%$%E196440196455%_)))))
                              (_%$%E196440196455%_))))
                      (_%$%E196440196455%_)))))
          (_%$%E196439196487%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx196382%_)
        (let* ((_%$%e196383196396%_ _%stx196382%_)
               (_%$%E196385196400%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196383196396%_)))
               (_%$%E196384196433%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196383196396%_)
                      (let ((_%$%e196386196404%_
                             (gx#syntax-e _%$%e196383196396%_)))
                        (let ((_%$%hd196387196407%_
                               (##car _%$%e196386196404%_))
                              (_%$%tl196388196409%_
                               (##cdr _%$%e196386196404%_)))
                          (if (gx#stx-pair? _%$%tl196388196409%_)
                              (let ((_%$%e196389196412%_
                                     (gx#syntax-e _%$%tl196388196409%_)))
                                (let ((_%$%hd196390196415%_
                                       (##car _%$%e196389196412%_))
                                      (_%$%tl196391196417%_
                                       (##cdr _%$%e196389196412%_)))
                                  (let ((_%hd196420%_ _%$%hd196390196415%_))
                                    (if (gx#stx-pair? _%$%tl196391196417%_)
                                        (let ((_%$%e196392196422%_
                                               (gx#syntax-e
                                                _%$%tl196391196417%_)))
                                          (let ((_%$%hd196393196425%_
                                                 (##car _%$%e196392196422%_))
                                                (_%$%tl196394196427%_
                                                 (##cdr _%$%e196392196422%_)))
                                            (let ((_%expr196430%_
                                                   _%$%hd196393196425%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196394196427%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd196420%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr196430%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E196385196400%_)))))
                                        (_%$%E196385196400%_)))))
                              (_%$%E196385196400%_))))
                      (_%$%E196385196400%_)))))
          (_%$%E196384196433%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx196352%_)
        (let* ((_%$%e196353196360%_ _%stx196352%_)
               (_%$%E196355196364%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196353196360%_)))
               (_%$%E196354196378%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196353196360%_)
                      (let ((_%$%e196356196368%_
                             (gx#syntax-e _%$%e196353196360%_)))
                        (let ((_%$%hd196357196371%_
                               (##car _%$%e196356196368%_))
                              (_%$%tl196358196373%_
                               (##cdr _%$%e196356196368%_)))
                          (let ((_%body196376%_ _%$%tl196358196373%_))
                            (cons '%#define-alias _%body196376%_))))
                      (_%$%E196355196364%_)))))
          (_%$%E196354196378%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx196322%_)
        (let* ((_%$%e196323196330%_ _%stx196322%_)
               (_%$%E196325196334%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196323196330%_)))
               (_%$%E196324196348%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196323196330%_)
                      (let ((_%$%e196326196338%_
                             (gx#syntax-e _%$%e196323196330%_)))
                        (let ((_%$%hd196327196341%_
                               (##car _%$%e196326196338%_))
                              (_%$%tl196328196343%_
                               (##cdr _%$%e196326196338%_)))
                          (let ((_%body196346%_ _%$%tl196328196343%_))
                            (cons '%#define-runtime _%body196346%_))))
                      (_%$%E196325196334%_)))))
          (_%$%E196324196348%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx196292%_)
        (let* ((_%$%e196293196300%_ _%stx196292%_)
               (_%$%E196295196304%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196293196300%_)))
               (_%$%E196294196318%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196293196300%_)
                      (let ((_%$%e196296196308%_
                             (gx#syntax-e _%$%e196293196300%_)))
                        (let ((_%$%hd196297196311%_
                               (##car _%$%e196296196308%_))
                              (_%$%tl196298196313%_
                               (##cdr _%$%e196296196308%_)))
                          (let ((_%decls196316%_ _%$%tl196298196313%_))
                            (cons '%#declare _%decls196316%_))))
                      (_%$%E196295196304%_)))))
          (_%$%E196294196318%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx196262%_)
        (let* ((_%$%e196263196270%_ _%stx196262%_)
               (_%$%E196265196274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196263196270%_)))
               (_%$%E196264196288%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196263196270%_)
                      (let ((_%$%e196266196278%_
                             (gx#syntax-e _%$%e196263196270%_)))
                        (let ((_%$%hd196267196281%_
                               (##car _%$%e196266196278%_))
                              (_%$%tl196268196283%_
                               (##cdr _%$%e196266196278%_)))
                          (let ((_%clause196286%_ _%$%tl196268196283%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause196286%_)))))
                      (_%$%E196265196274%_)))))
          (_%$%E196264196288%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx196219%_)
        (let* ((_%$%e196220196230%_ _%stx196219%_)
               (_%$%E196222196234%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196220196230%_)))
               (_%$%E196221196258%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196220196230%_)
                      (let ((_%$%e196223196238%_
                             (gx#syntax-e _%$%e196220196230%_)))
                        (let ((_%$%hd196224196241%_
                               (##car _%$%e196223196238%_))
                              (_%$%tl196225196243%_
                               (##cdr _%$%e196223196238%_)))
                          (let ((_%hd196246%_ _%$%hd196224196241%_))
                            (if (gx#stx-pair? _%$%tl196225196243%_)
                                (let ((_%$%e196226196248%_
                                       (gx#syntax-e _%$%tl196225196243%_)))
                                  (let ((_%$%hd196227196251%_
                                         (##car _%$%e196226196248%_))
                                        (_%$%tl196228196253%_
                                         (##cdr _%$%e196226196248%_)))
                                    (let ((_%body196256%_
                                           _%$%hd196227196251%_))
                                      (if (gx#stx-null? _%$%tl196228196253%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd196246%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body196256%_)
                                                      '()))
                                          (_%$%E196222196234%_)))))
                                (_%$%E196222196234%_)))))
                      (_%$%E196222196234%_)))))
          (_%$%E196221196258%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx196189%_)
        (let* ((_%$%e196190196197%_ _%stx196189%_)
               (_%$%E196192196201%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196190196197%_)))
               (_%$%E196191196215%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196190196197%_)
                      (let ((_%$%e196193196205%_
                             (gx#syntax-e _%$%e196190196197%_)))
                        (let ((_%$%hd196194196208%_
                               (##car _%$%e196193196205%_))
                              (_%$%tl196195196210%_
                               (##cdr _%$%e196193196205%_)))
                          (let ((_%clauses196213%_ _%$%tl196195196210%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses196213%_)))))
                      (_%$%E196192196201%_)))))
          (_%$%E196191196215%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx196124%_ _%form196125%_)
        (let* ((_%$%e196126196139%_ _%stx196124%_)
               (_%$%E196128196143%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196126196139%_)))
               (_%$%E196127196175%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196126196139%_)
                      (let ((_%$%e196129196147%_
                             (gx#syntax-e _%$%e196126196139%_)))
                        (let ((_%$%hd196130196150%_
                               (##car _%$%e196129196147%_))
                              (_%$%tl196131196152%_
                               (##cdr _%$%e196129196147%_)))
                          (if (gx#stx-pair? _%$%tl196131196152%_)
                              (let ((_%$%e196132196155%_
                                     (gx#syntax-e _%$%tl196131196152%_)))
                                (let ((_%$%hd196133196158%_
                                       (##car _%$%e196132196155%_))
                                      (_%$%tl196134196160%_
                                       (##cdr _%$%e196132196155%_)))
                                  (let ((_%hd196163%_ _%$%hd196133196158%_))
                                    (if (gx#stx-pair? _%$%tl196134196160%_)
                                        (let ((_%$%e196135196165%_
                                               (gx#syntax-e
                                                _%$%tl196134196160%_)))
                                          (let ((_%$%hd196136196168%_
                                                 (##car _%$%e196135196165%_))
                                                (_%$%tl196137196170%_
                                                 (##cdr _%$%e196135196165%_)))
                                            (let ((_%body196173%_
                                                   _%$%hd196136196168%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196137196170%_)
                                                  (cons _%form196125%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd196163%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body196173%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E196128196143%_)))))
                                        (_%$%E196128196143%_)))))
                              (_%$%E196128196143%_))))
                      (_%$%E196128196143%_)))))
          (_%$%E196127196175%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx196182%_)
        (let ((_%form196184%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx196182%_ _%form196184%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g197007_
        (let ((_g197008_ (##length _g197007_)))
          (cond ((##fx= _g197008_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g197007_))
                ((##fx= _g197008_ 2)
                 (apply gx#core-compile-top-let-values%__% _g197007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g197007_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx196121%_)
        (gx#core-compile-top-let-values%__% _%stx196121%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx196119%_)
        (gx#core-compile-top-let-values%__% _%stx196119%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx196078%_)
        (let* ((_%$%e196079196089%_ _%stx196078%_)
               (_%$%E196081196093%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196079196089%_)))
               (_%$%E196080196115%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196079196089%_)
                      (let ((_%$%e196082196097%_
                             (gx#syntax-e _%$%e196079196089%_)))
                        (let ((_%$%hd196083196100%_
                               (##car _%$%e196082196097%_))
                              (_%$%tl196084196102%_
                               (##cdr _%$%e196082196097%_)))
                          (if (gx#stx-pair? _%$%tl196084196102%_)
                              (let ((_%$%e196085196105%_
                                     (gx#syntax-e _%$%tl196084196102%_)))
                                (let ((_%$%hd196086196108%_
                                       (##car _%$%e196085196105%_))
                                      (_%$%tl196087196110%_
                                       (##cdr _%$%e196085196105%_)))
                                  (let ((_%e196113%_ _%$%hd196086196108%_))
                                    (if (gx#stx-null? _%$%tl196087196110%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e196113%_)
                                                    '()))
                                        (_%$%E196081196093%_)))))
                              (_%$%E196081196093%_))))
                      (_%$%E196081196093%_)))))
          (_%$%E196080196115%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx196037%_)
        (let* ((_%$%e196038196048%_ _%stx196037%_)
               (_%$%E196040196052%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196038196048%_)))
               (_%$%E196039196074%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196038196048%_)
                      (let ((_%$%e196041196056%_
                             (gx#syntax-e _%$%e196038196048%_)))
                        (let ((_%$%hd196042196059%_
                               (##car _%$%e196041196056%_))
                              (_%$%tl196043196061%_
                               (##cdr _%$%e196041196056%_)))
                          (if (gx#stx-pair? _%$%tl196043196061%_)
                              (let ((_%$%e196044196064%_
                                     (gx#syntax-e _%$%tl196043196061%_)))
                                (let ((_%$%hd196045196067%_
                                       (##car _%$%e196044196064%_))
                                      (_%$%tl196046196069%_
                                       (##cdr _%$%e196044196064%_)))
                                  (let ((_%e196072%_ _%$%hd196045196067%_))
                                    (if (gx#stx-null? _%$%tl196046196069%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e196072%_)
                                                    '()))
                                        (_%$%E196040196052%_)))))
                              (_%$%E196040196052%_))))
                      (_%$%E196040196052%_)))))
          (_%$%E196039196074%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx195994%_)
        (let* ((_%$%e195995196005%_ _%stx195994%_)
               (_%$%E195997196009%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195995196005%_)))
               (_%$%E195996196033%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195995196005%_)
                      (let ((_%$%e195998196013%_
                             (gx#syntax-e _%$%e195995196005%_)))
                        (let ((_%$%hd195999196016%_
                               (##car _%$%e195998196013%_))
                              (_%$%tl196000196018%_
                               (##cdr _%$%e195998196013%_)))
                          (if (gx#stx-pair? _%$%tl196000196018%_)
                              (let ((_%$%e196001196021%_
                                     (gx#syntax-e _%$%tl196000196018%_)))
                                (let ((_%$%hd196002196024%_
                                       (##car _%$%e196001196021%_))
                                      (_%$%tl196003196026%_
                                       (##cdr _%$%e196001196021%_)))
                                  (let* ((_%rator196029%_ _%$%hd196002196024%_)
                                         (_%args196031%_ _%$%tl196003196026%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator196029%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args196031%_))))))
                              (_%$%E195997196009%_))))
                      (_%$%E195997196009%_)))))
          (_%$%E195996196033%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx195927%_)
        (let* ((_%$%e195928195944%_ _%stx195927%_)
               (_%$%E195930195948%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195928195944%_)))
               (_%$%E195929195990%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195928195944%_)
                      (let ((_%$%e195931195952%_
                             (gx#syntax-e _%$%e195928195944%_)))
                        (let ((_%$%hd195932195955%_
                               (##car _%$%e195931195952%_))
                              (_%$%tl195933195957%_
                               (##cdr _%$%e195931195952%_)))
                          (if (gx#stx-pair? _%$%tl195933195957%_)
                              (let ((_%$%e195934195960%_
                                     (gx#syntax-e _%$%tl195933195957%_)))
                                (let ((_%$%hd195935195963%_
                                       (##car _%$%e195934195960%_))
                                      (_%$%tl195936195965%_
                                       (##cdr _%$%e195934195960%_)))
                                  (let ((_%test195968%_ _%$%hd195935195963%_))
                                    (if (gx#stx-pair? _%$%tl195936195965%_)
                                        (let ((_%$%e195937195970%_
                                               (gx#syntax-e
                                                _%$%tl195936195965%_)))
                                          (let ((_%$%hd195938195973%_
                                                 (##car _%$%e195937195970%_))
                                                (_%$%tl195939195975%_
                                                 (##cdr _%$%e195937195970%_)))
                                            (let ((_%K195978%_
                                                   _%$%hd195938195973%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl195939195975%_)
                                                  (let ((_%$%e195940195980%_
                                                         (gx#syntax-e
                                                          _%$%tl195939195975%_)))
                                                    (let ((_%$%hd195941195983%_
                                                           (##car _%$%e195940195980%_))
                                                          (_%$%tl195942195985%_
                                                           (##cdr _%$%e195940195980%_)))
                                                      (let ((_%E195988%_
                                                             _%$%hd195941195983%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl195942195985%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test195968%_)
                                (cons (gx#core-compile-top-syntax _%K195978%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E195988%_)
                                            '()))))
                    (_%$%E195930195948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195930195948%_)))))
                                        (_%$%E195930195948%_)))))
                              (_%$%E195930195948%_))))
                      (_%$%E195930195948%_)))))
          (_%$%E195929195990%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx195886%_)
        (let* ((_%$%e195887195897%_ _%stx195886%_)
               (_%$%E195889195901%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195887195897%_)))
               (_%$%E195888195923%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195887195897%_)
                      (let ((_%$%e195890195905%_
                             (gx#syntax-e _%$%e195887195897%_)))
                        (let ((_%$%hd195891195908%_
                               (##car _%$%e195890195905%_))
                              (_%$%tl195892195910%_
                               (##cdr _%$%e195890195905%_)))
                          (if (gx#stx-pair? _%$%tl195892195910%_)
                              (let ((_%$%e195893195913%_
                                     (gx#syntax-e _%$%tl195892195910%_)))
                                (let ((_%$%hd195894195916%_
                                       (##car _%$%e195893195913%_))
                                      (_%$%tl195895195918%_
                                       (##cdr _%$%e195893195913%_)))
                                  (let ((_%id195921%_ _%$%hd195894195916%_))
                                    (if (gx#stx-null? _%$%tl195895195918%_)
                                        (if (gx#identifier? _%id195921%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id195921%_)
                                                        '()))
                                            (_%$%E195889195901%_))
                                        (_%$%E195889195901%_)))))
                              (_%$%E195889195901%_))))
                      (_%$%E195889195901%_)))))
          (_%$%E195888195923%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx195832%_)
        (let* ((_%$%e195833195846%_ _%stx195832%_)
               (_%$%E195835195850%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195833195846%_)))
               (_%$%E195834195882%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195833195846%_)
                      (let ((_%$%e195836195854%_
                             (gx#syntax-e _%$%e195833195846%_)))
                        (let ((_%$%hd195837195857%_
                               (##car _%$%e195836195854%_))
                              (_%$%tl195838195859%_
                               (##cdr _%$%e195836195854%_)))
                          (if (gx#stx-pair? _%$%tl195838195859%_)
                              (let ((_%$%e195839195862%_
                                     (gx#syntax-e _%$%tl195838195859%_)))
                                (let ((_%$%hd195840195865%_
                                       (##car _%$%e195839195862%_))
                                      (_%$%tl195841195867%_
                                       (##cdr _%$%e195839195862%_)))
                                  (let ((_%id195870%_ _%$%hd195840195865%_))
                                    (if (gx#stx-pair? _%$%tl195841195867%_)
                                        (let ((_%$%e195842195872%_
                                               (gx#syntax-e
                                                _%$%tl195841195867%_)))
                                          (let ((_%$%hd195843195875%_
                                                 (##car _%$%e195842195872%_))
                                                (_%$%tl195844195877%_
                                                 (##cdr _%$%e195842195872%_)))
                                            (let ((_%expr195880%_
                                                   _%$%hd195843195875%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195844195877%_)
                                                  (if (gx#identifier?
                                                       _%id195870%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id195870%_)
                          (cons (gx#core-compile-top-syntax _%expr195880%_)
                                '())))
              (_%$%E195835195850%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195835195850%_)))))
                                        (_%$%E195835195850%_)))))
                              (_%$%E195835195850%_))))
                      (_%$%E195835195850%_)))))
          (_%$%E195834195882%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id195826%_)
        (let ((_%$e195828%_ (gx#resolve-identifier__0 _%id195826%_)))
          (if _%$e195828%_
              (##unchecked-structure-ref _%$e195828%_ '1 '#f '#f)
              _%id195826%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd195824%_)
        (if (gx#identifier? _%hd195824%_)
            (gx#core-compile-top-runtime-ref _%hd195824%_)
            '#f)))))

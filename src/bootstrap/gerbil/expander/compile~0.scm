(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1789188908)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx196959%_)
        (let* ((_%$%e196960196967%_ _%stx196959%_)
               (_%$%E196962196971%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196960196967%_)))
               (_%$%E196961196985%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196960196967%_)
                      (let ((_%$%e196963196975%_
                             (gx#syntax-e _%$%e196960196967%_)))
                        (let ((_%$%hd196964196978%_
                               (##car _%$%e196963196975%_))
                              (_%$%tl196965196980%_
                               (##cdr _%$%e196963196975%_)))
                          (let* ((_%form196983%_ _%$%hd196964196978%_)
                                 (__self196988
                                  (gx#syntax-local-e__0 _%form196983%_))
                                 (__method196989
                                  (__method-ref
                                   __self196988
                                   'compile-top-syntax)))
                            (if __method196989
                                (__method196989 __self196988 _%stx196959%_)
                                (begin
                                  (error '"Missing method"
                                         __self196988
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E196962196971%_)))))
          (_%$%E196961196985%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self196908%_ _%stx196909%_)
        (let* ((_%self196912%_ _%self196908%_)
               (_%$%self196921196929%_ _%self196912%_)
               (_%$%E196923196932%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self196921196929%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K196924196945%_
                (lambda (_%K196935%_)
                  (let ((_%$e196937%_ (gx#stx-source _%stx196909%_)))
                    (if _%$e196937%_
                        (gx#stx-wrap-source
                         (_%K196935%_ _%stx196909%_)
                         _%$e196937%_)
                        (_%K196935%_ _%stx196909%_)))))
               (_%$%e196925196948%_
                (##unchecked-structure-ref _%$%self196921196929%_ '1 '#f '#f))
               (_%$%e196926196951%_
                (##unchecked-structure-ref _%$%self196921196929%_ '2 '#f '#f))
               (_%$%e196927196954%_
                (##unchecked-structure-ref _%$%self196921196929%_ '3 '#f '#f))
               (_%K196957%_ _%$%e196927196954%_))
          (_%$%K196924196945%_ _%K196957%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx196782%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx196782%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx196752%_)
        (let* ((_%$%e196753196760%_ _%stx196752%_)
               (_%$%E196755196764%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196753196760%_)))
               (_%$%E196754196778%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196753196760%_)
                      (let ((_%$%e196756196768%_
                             (gx#syntax-e _%$%e196753196760%_)))
                        (let ((_%$%hd196757196771%_
                               (##car _%$%e196756196768%_))
                              (_%$%tl196758196773%_
                               (##cdr _%$%e196756196768%_)))
                          (let ((_%body196776%_ _%$%tl196758196773%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body196776%_)))))
                      (_%$%E196755196764%_)))))
          (_%$%E196754196778%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx196721%_)
        (let* ((_%$%e196722196729%_ _%stx196721%_)
               (_%$%E196724196733%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196722196729%_)))
               (_%$%E196723196748%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196722196729%_)
                      (let ((_%$%e196725196737%_
                             (gx#syntax-e _%$%e196722196729%_)))
                        (let ((_%$%hd196726196740%_
                               (##car _%$%e196725196737%_))
                              (_%$%tl196727196742%_
                               (##cdr _%$%e196725196737%_)))
                          (let ((_%body196745%_ _%$%tl196727196742%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body196745%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E196724196733%_)))))
          (_%$%E196723196748%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx196691%_)
        (let* ((_%$%e196692196699%_ _%stx196691%_)
               (_%$%E196694196703%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196692196699%_)))
               (_%$%E196693196717%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196692196699%_)
                      (let ((_%$%e196695196707%_
                             (gx#syntax-e _%$%e196692196699%_)))
                        (let ((_%$%hd196696196710%_
                               (##car _%$%e196695196707%_))
                              (_%$%tl196697196712%_
                               (##cdr _%$%e196695196707%_)))
                          (let ((_%body196715%_ _%$%tl196697196712%_))
                            (cons '%#begin-foreign _%body196715%_))))
                      (_%$%E196694196703%_)))))
          (_%$%E196693196717%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx196637%_)
        (let* ((_%$%e196638196651%_ _%stx196637%_)
               (_%$%E196640196655%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196638196651%_)))
               (_%$%E196639196687%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196638196651%_)
                      (let ((_%$%e196641196659%_
                             (gx#syntax-e _%$%e196638196651%_)))
                        (let ((_%$%hd196642196662%_
                               (##car _%$%e196641196659%_))
                              (_%$%tl196643196664%_
                               (##cdr _%$%e196641196659%_)))
                          (if (gx#stx-pair? _%$%tl196643196664%_)
                              (let ((_%$%e196644196667%_
                                     (gx#syntax-e _%$%tl196643196664%_)))
                                (let ((_%$%hd196645196670%_
                                       (##car _%$%e196644196667%_))
                                      (_%$%tl196646196672%_
                                       (##cdr _%$%e196644196667%_)))
                                  (let ((_%ann196675%_ _%$%hd196645196670%_))
                                    (if (gx#stx-pair? _%$%tl196646196672%_)
                                        (let ((_%$%e196647196677%_
                                               (gx#syntax-e
                                                _%$%tl196646196672%_)))
                                          (let ((_%$%hd196648196680%_
                                                 (##car _%$%e196647196677%_))
                                                (_%$%tl196649196682%_
                                                 (##cdr _%$%e196647196677%_)))
                                            (let ((_%expr196685%_
                                                   _%$%hd196648196680%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196649196682%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr196685%_)
                                                  (_%$%E196640196655%_)))))
                                        (_%$%E196640196655%_)))))
                              (_%$%E196640196655%_))))
                      (_%$%E196640196655%_)))))
          (_%$%E196639196687%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx196607%_)
        (let* ((_%$%e196608196615%_ _%stx196607%_)
               (_%$%E196610196619%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196608196615%_)))
               (_%$%E196609196633%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196608196615%_)
                      (let ((_%$%e196611196623%_
                             (gx#syntax-e _%$%e196608196615%_)))
                        (let ((_%$%hd196612196626%_
                               (##car _%$%e196611196623%_))
                              (_%$%tl196613196628%_
                               (##cdr _%$%e196611196623%_)))
                          (let ((_%body196631%_ _%$%tl196613196628%_))
                            (cons '%#import _%body196631%_))))
                      (_%$%E196610196619%_)))))
          (_%$%E196609196633%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx196564%_)
        (let* ((_%$%e196565196575%_ _%stx196564%_)
               (_%$%E196567196579%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196565196575%_)))
               (_%$%E196566196603%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196565196575%_)
                      (let ((_%$%e196568196583%_
                             (gx#syntax-e _%$%e196565196575%_)))
                        (let ((_%$%hd196569196586%_
                               (##car _%$%e196568196583%_))
                              (_%$%tl196570196588%_
                               (##cdr _%$%e196568196583%_)))
                          (if (gx#stx-pair? _%$%tl196570196588%_)
                              (let ((_%$%e196571196591%_
                                     (gx#syntax-e _%$%tl196570196588%_)))
                                (let ((_%$%hd196572196594%_
                                       (##car _%$%e196571196591%_))
                                      (_%$%tl196573196596%_
                                       (##cdr _%$%e196571196591%_)))
                                  (let* ((_%hd196599%_ _%$%hd196572196594%_)
                                         (_%body196601%_ _%$%tl196573196596%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd196599%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body196601%_))))))
                              (_%$%E196567196579%_))))
                      (_%$%E196567196579%_)))))
          (_%$%E196566196603%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx196534%_)
        (let* ((_%$%e196535196542%_ _%stx196534%_)
               (_%$%E196537196546%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196535196542%_)))
               (_%$%E196536196560%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196535196542%_)
                      (let ((_%$%e196538196550%_
                             (gx#syntax-e _%$%e196535196542%_)))
                        (let ((_%$%hd196539196553%_
                               (##car _%$%e196538196550%_))
                              (_%$%tl196540196555%_
                               (##cdr _%$%e196538196550%_)))
                          (let ((_%body196558%_ _%$%tl196540196555%_))
                            (cons '%#export _%body196558%_))))
                      (_%$%E196537196546%_)))))
          (_%$%E196536196560%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx196504%_)
        (let* ((_%$%e196505196512%_ _%stx196504%_)
               (_%$%E196507196516%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196505196512%_)))
               (_%$%E196506196530%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196505196512%_)
                      (let ((_%$%e196508196520%_
                             (gx#syntax-e _%$%e196505196512%_)))
                        (let ((_%$%hd196509196523%_
                               (##car _%$%e196508196520%_))
                              (_%$%tl196510196525%_
                               (##cdr _%$%e196508196520%_)))
                          (let ((_%body196528%_ _%$%tl196510196525%_))
                            (cons '%#provide _%body196528%_))))
                      (_%$%E196507196516%_)))))
          (_%$%E196506196530%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx196474%_)
        (let* ((_%$%e196475196482%_ _%stx196474%_)
               (_%$%E196477196486%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196475196482%_)))
               (_%$%E196476196500%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196475196482%_)
                      (let ((_%$%e196478196490%_
                             (gx#syntax-e _%$%e196475196482%_)))
                        (let ((_%$%hd196479196493%_
                               (##car _%$%e196478196490%_))
                              (_%$%tl196480196495%_
                               (##cdr _%$%e196478196490%_)))
                          (let ((_%body196498%_ _%$%tl196480196495%_))
                            (cons '%#extern _%body196498%_))))
                      (_%$%E196477196486%_)))))
          (_%$%E196476196500%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx196420%_)
        (let* ((_%$%e196421196434%_ _%stx196420%_)
               (_%$%E196423196438%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196421196434%_)))
               (_%$%E196422196470%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196421196434%_)
                      (let ((_%$%e196424196442%_
                             (gx#syntax-e _%$%e196421196434%_)))
                        (let ((_%$%hd196425196445%_
                               (##car _%$%e196424196442%_))
                              (_%$%tl196426196447%_
                               (##cdr _%$%e196424196442%_)))
                          (if (gx#stx-pair? _%$%tl196426196447%_)
                              (let ((_%$%e196427196450%_
                                     (gx#syntax-e _%$%tl196426196447%_)))
                                (let ((_%$%hd196428196453%_
                                       (##car _%$%e196427196450%_))
                                      (_%$%tl196429196455%_
                                       (##cdr _%$%e196427196450%_)))
                                  (let ((_%hd196458%_ _%$%hd196428196453%_))
                                    (if (gx#stx-pair? _%$%tl196429196455%_)
                                        (let ((_%$%e196430196460%_
                                               (gx#syntax-e
                                                _%$%tl196429196455%_)))
                                          (let ((_%$%hd196431196463%_
                                                 (##car _%$%e196430196460%_))
                                                (_%$%tl196432196465%_
                                                 (##cdr _%$%e196430196460%_)))
                                            (let ((_%expr196468%_
                                                   _%$%hd196431196463%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196432196465%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd196458%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr196468%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E196423196438%_)))))
                                        (_%$%E196423196438%_)))))
                              (_%$%E196423196438%_))))
                      (_%$%E196423196438%_)))))
          (_%$%E196422196470%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx196365%_)
        (let* ((_%$%e196366196379%_ _%stx196365%_)
               (_%$%E196368196383%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196366196379%_)))
               (_%$%E196367196416%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196366196379%_)
                      (let ((_%$%e196369196387%_
                             (gx#syntax-e _%$%e196366196379%_)))
                        (let ((_%$%hd196370196390%_
                               (##car _%$%e196369196387%_))
                              (_%$%tl196371196392%_
                               (##cdr _%$%e196369196387%_)))
                          (if (gx#stx-pair? _%$%tl196371196392%_)
                              (let ((_%$%e196372196395%_
                                     (gx#syntax-e _%$%tl196371196392%_)))
                                (let ((_%$%hd196373196398%_
                                       (##car _%$%e196372196395%_))
                                      (_%$%tl196374196400%_
                                       (##cdr _%$%e196372196395%_)))
                                  (let ((_%hd196403%_ _%$%hd196373196398%_))
                                    (if (gx#stx-pair? _%$%tl196374196400%_)
                                        (let ((_%$%e196375196405%_
                                               (gx#syntax-e
                                                _%$%tl196374196400%_)))
                                          (let ((_%$%hd196376196408%_
                                                 (##car _%$%e196375196405%_))
                                                (_%$%tl196377196410%_
                                                 (##cdr _%$%e196375196405%_)))
                                            (let ((_%expr196413%_
                                                   _%$%hd196376196408%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196377196410%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd196403%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr196413%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E196368196383%_)))))
                                        (_%$%E196368196383%_)))))
                              (_%$%E196368196383%_))))
                      (_%$%E196368196383%_)))))
          (_%$%E196367196416%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx196335%_)
        (let* ((_%$%e196336196343%_ _%stx196335%_)
               (_%$%E196338196347%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196336196343%_)))
               (_%$%E196337196361%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196336196343%_)
                      (let ((_%$%e196339196351%_
                             (gx#syntax-e _%$%e196336196343%_)))
                        (let ((_%$%hd196340196354%_
                               (##car _%$%e196339196351%_))
                              (_%$%tl196341196356%_
                               (##cdr _%$%e196339196351%_)))
                          (let ((_%body196359%_ _%$%tl196341196356%_))
                            (cons '%#define-alias _%body196359%_))))
                      (_%$%E196338196347%_)))))
          (_%$%E196337196361%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx196305%_)
        (let* ((_%$%e196306196313%_ _%stx196305%_)
               (_%$%E196308196317%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196306196313%_)))
               (_%$%E196307196331%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196306196313%_)
                      (let ((_%$%e196309196321%_
                             (gx#syntax-e _%$%e196306196313%_)))
                        (let ((_%$%hd196310196324%_
                               (##car _%$%e196309196321%_))
                              (_%$%tl196311196326%_
                               (##cdr _%$%e196309196321%_)))
                          (let ((_%body196329%_ _%$%tl196311196326%_))
                            (cons '%#define-runtime _%body196329%_))))
                      (_%$%E196308196317%_)))))
          (_%$%E196307196331%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx196275%_)
        (let* ((_%$%e196276196283%_ _%stx196275%_)
               (_%$%E196278196287%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196276196283%_)))
               (_%$%E196277196301%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196276196283%_)
                      (let ((_%$%e196279196291%_
                             (gx#syntax-e _%$%e196276196283%_)))
                        (let ((_%$%hd196280196294%_
                               (##car _%$%e196279196291%_))
                              (_%$%tl196281196296%_
                               (##cdr _%$%e196279196291%_)))
                          (let ((_%decls196299%_ _%$%tl196281196296%_))
                            (cons '%#declare _%decls196299%_))))
                      (_%$%E196278196287%_)))))
          (_%$%E196277196301%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx196245%_)
        (let* ((_%$%e196246196253%_ _%stx196245%_)
               (_%$%E196248196257%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196246196253%_)))
               (_%$%E196247196271%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196246196253%_)
                      (let ((_%$%e196249196261%_
                             (gx#syntax-e _%$%e196246196253%_)))
                        (let ((_%$%hd196250196264%_
                               (##car _%$%e196249196261%_))
                              (_%$%tl196251196266%_
                               (##cdr _%$%e196249196261%_)))
                          (let ((_%clause196269%_ _%$%tl196251196266%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause196269%_)))))
                      (_%$%E196248196257%_)))))
          (_%$%E196247196271%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx196202%_)
        (let* ((_%$%e196203196213%_ _%stx196202%_)
               (_%$%E196205196217%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196203196213%_)))
               (_%$%E196204196241%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196203196213%_)
                      (let ((_%$%e196206196221%_
                             (gx#syntax-e _%$%e196203196213%_)))
                        (let ((_%$%hd196207196224%_
                               (##car _%$%e196206196221%_))
                              (_%$%tl196208196226%_
                               (##cdr _%$%e196206196221%_)))
                          (let ((_%hd196229%_ _%$%hd196207196224%_))
                            (if (gx#stx-pair? _%$%tl196208196226%_)
                                (let ((_%$%e196209196231%_
                                       (gx#syntax-e _%$%tl196208196226%_)))
                                  (let ((_%$%hd196210196234%_
                                         (##car _%$%e196209196231%_))
                                        (_%$%tl196211196236%_
                                         (##cdr _%$%e196209196231%_)))
                                    (let ((_%body196239%_
                                           _%$%hd196210196234%_))
                                      (if (gx#stx-null? _%$%tl196211196236%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd196229%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body196239%_)
                                                      '()))
                                          (_%$%E196205196217%_)))))
                                (_%$%E196205196217%_)))))
                      (_%$%E196205196217%_)))))
          (_%$%E196204196241%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx196172%_)
        (let* ((_%$%e196173196180%_ _%stx196172%_)
               (_%$%E196175196184%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196173196180%_)))
               (_%$%E196174196198%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196173196180%_)
                      (let ((_%$%e196176196188%_
                             (gx#syntax-e _%$%e196173196180%_)))
                        (let ((_%$%hd196177196191%_
                               (##car _%$%e196176196188%_))
                              (_%$%tl196178196193%_
                               (##cdr _%$%e196176196188%_)))
                          (let ((_%clauses196196%_ _%$%tl196178196193%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses196196%_)))))
                      (_%$%E196175196184%_)))))
          (_%$%E196174196198%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx196107%_ _%form196108%_)
        (let* ((_%$%e196109196122%_ _%stx196107%_)
               (_%$%E196111196126%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196109196122%_)))
               (_%$%E196110196158%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196109196122%_)
                      (let ((_%$%e196112196130%_
                             (gx#syntax-e _%$%e196109196122%_)))
                        (let ((_%$%hd196113196133%_
                               (##car _%$%e196112196130%_))
                              (_%$%tl196114196135%_
                               (##cdr _%$%e196112196130%_)))
                          (if (gx#stx-pair? _%$%tl196114196135%_)
                              (let ((_%$%e196115196138%_
                                     (gx#syntax-e _%$%tl196114196135%_)))
                                (let ((_%$%hd196116196141%_
                                       (##car _%$%e196115196138%_))
                                      (_%$%tl196117196143%_
                                       (##cdr _%$%e196115196138%_)))
                                  (let ((_%hd196146%_ _%$%hd196116196141%_))
                                    (if (gx#stx-pair? _%$%tl196117196143%_)
                                        (let ((_%$%e196118196148%_
                                               (gx#syntax-e
                                                _%$%tl196117196143%_)))
                                          (let ((_%$%hd196119196151%_
                                                 (##car _%$%e196118196148%_))
                                                (_%$%tl196120196153%_
                                                 (##cdr _%$%e196118196148%_)))
                                            (let ((_%body196156%_
                                                   _%$%hd196119196151%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196120196153%_)
                                                  (cons _%form196108%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd196146%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body196156%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E196111196126%_)))))
                                        (_%$%E196111196126%_)))))
                              (_%$%E196111196126%_))))
                      (_%$%E196111196126%_)))))
          (_%$%E196110196158%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx196165%_)
        (let ((_%form196167%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx196165%_ _%form196167%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g196990_
        (let ((_g196991_ (##length _g196990_)))
          (cond ((##fx= _g196991_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g196990_))
                ((##fx= _g196991_ 2)
                 (apply gx#core-compile-top-let-values%__% _g196990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g196990_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx196104%_)
        (gx#core-compile-top-let-values%__% _%stx196104%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx196102%_)
        (gx#core-compile-top-let-values%__% _%stx196102%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx196061%_)
        (let* ((_%$%e196062196072%_ _%stx196061%_)
               (_%$%E196064196076%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196062196072%_)))
               (_%$%E196063196098%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196062196072%_)
                      (let ((_%$%e196065196080%_
                             (gx#syntax-e _%$%e196062196072%_)))
                        (let ((_%$%hd196066196083%_
                               (##car _%$%e196065196080%_))
                              (_%$%tl196067196085%_
                               (##cdr _%$%e196065196080%_)))
                          (if (gx#stx-pair? _%$%tl196067196085%_)
                              (let ((_%$%e196068196088%_
                                     (gx#syntax-e _%$%tl196067196085%_)))
                                (let ((_%$%hd196069196091%_
                                       (##car _%$%e196068196088%_))
                                      (_%$%tl196070196093%_
                                       (##cdr _%$%e196068196088%_)))
                                  (let ((_%e196096%_ _%$%hd196069196091%_))
                                    (if (gx#stx-null? _%$%tl196070196093%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e196096%_)
                                                    '()))
                                        (_%$%E196064196076%_)))))
                              (_%$%E196064196076%_))))
                      (_%$%E196064196076%_)))))
          (_%$%E196063196098%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx196020%_)
        (let* ((_%$%e196021196031%_ _%stx196020%_)
               (_%$%E196023196035%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196021196031%_)))
               (_%$%E196022196057%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196021196031%_)
                      (let ((_%$%e196024196039%_
                             (gx#syntax-e _%$%e196021196031%_)))
                        (let ((_%$%hd196025196042%_
                               (##car _%$%e196024196039%_))
                              (_%$%tl196026196044%_
                               (##cdr _%$%e196024196039%_)))
                          (if (gx#stx-pair? _%$%tl196026196044%_)
                              (let ((_%$%e196027196047%_
                                     (gx#syntax-e _%$%tl196026196044%_)))
                                (let ((_%$%hd196028196050%_
                                       (##car _%$%e196027196047%_))
                                      (_%$%tl196029196052%_
                                       (##cdr _%$%e196027196047%_)))
                                  (let ((_%e196055%_ _%$%hd196028196050%_))
                                    (if (gx#stx-null? _%$%tl196029196052%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e196055%_)
                                                    '()))
                                        (_%$%E196023196035%_)))))
                              (_%$%E196023196035%_))))
                      (_%$%E196023196035%_)))))
          (_%$%E196022196057%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx195977%_)
        (let* ((_%$%e195978195988%_ _%stx195977%_)
               (_%$%E195980195992%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195978195988%_)))
               (_%$%E195979196016%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195978195988%_)
                      (let ((_%$%e195981195996%_
                             (gx#syntax-e _%$%e195978195988%_)))
                        (let ((_%$%hd195982195999%_
                               (##car _%$%e195981195996%_))
                              (_%$%tl195983196001%_
                               (##cdr _%$%e195981195996%_)))
                          (if (gx#stx-pair? _%$%tl195983196001%_)
                              (let ((_%$%e195984196004%_
                                     (gx#syntax-e _%$%tl195983196001%_)))
                                (let ((_%$%hd195985196007%_
                                       (##car _%$%e195984196004%_))
                                      (_%$%tl195986196009%_
                                       (##cdr _%$%e195984196004%_)))
                                  (let* ((_%rator196012%_ _%$%hd195985196007%_)
                                         (_%args196014%_ _%$%tl195986196009%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator196012%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args196014%_))))))
                              (_%$%E195980195992%_))))
                      (_%$%E195980195992%_)))))
          (_%$%E195979196016%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx195910%_)
        (let* ((_%$%e195911195927%_ _%stx195910%_)
               (_%$%E195913195931%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195911195927%_)))
               (_%$%E195912195973%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195911195927%_)
                      (let ((_%$%e195914195935%_
                             (gx#syntax-e _%$%e195911195927%_)))
                        (let ((_%$%hd195915195938%_
                               (##car _%$%e195914195935%_))
                              (_%$%tl195916195940%_
                               (##cdr _%$%e195914195935%_)))
                          (if (gx#stx-pair? _%$%tl195916195940%_)
                              (let ((_%$%e195917195943%_
                                     (gx#syntax-e _%$%tl195916195940%_)))
                                (let ((_%$%hd195918195946%_
                                       (##car _%$%e195917195943%_))
                                      (_%$%tl195919195948%_
                                       (##cdr _%$%e195917195943%_)))
                                  (let ((_%test195951%_ _%$%hd195918195946%_))
                                    (if (gx#stx-pair? _%$%tl195919195948%_)
                                        (let ((_%$%e195920195953%_
                                               (gx#syntax-e
                                                _%$%tl195919195948%_)))
                                          (let ((_%$%hd195921195956%_
                                                 (##car _%$%e195920195953%_))
                                                (_%$%tl195922195958%_
                                                 (##cdr _%$%e195920195953%_)))
                                            (let ((_%K195961%_
                                                   _%$%hd195921195956%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl195922195958%_)
                                                  (let ((_%$%e195923195963%_
                                                         (gx#syntax-e
                                                          _%$%tl195922195958%_)))
                                                    (let ((_%$%hd195924195966%_
                                                           (##car _%$%e195923195963%_))
                                                          (_%$%tl195925195968%_
                                                           (##cdr _%$%e195923195963%_)))
                                                      (let ((_%E195971%_
                                                             _%$%hd195924195966%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl195925195968%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test195951%_)
                                (cons (gx#core-compile-top-syntax _%K195961%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E195971%_)
                                            '()))))
                    (_%$%E195913195931%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195913195931%_)))))
                                        (_%$%E195913195931%_)))))
                              (_%$%E195913195931%_))))
                      (_%$%E195913195931%_)))))
          (_%$%E195912195973%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx195869%_)
        (let* ((_%$%e195870195880%_ _%stx195869%_)
               (_%$%E195872195884%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195870195880%_)))
               (_%$%E195871195906%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195870195880%_)
                      (let ((_%$%e195873195888%_
                             (gx#syntax-e _%$%e195870195880%_)))
                        (let ((_%$%hd195874195891%_
                               (##car _%$%e195873195888%_))
                              (_%$%tl195875195893%_
                               (##cdr _%$%e195873195888%_)))
                          (if (gx#stx-pair? _%$%tl195875195893%_)
                              (let ((_%$%e195876195896%_
                                     (gx#syntax-e _%$%tl195875195893%_)))
                                (let ((_%$%hd195877195899%_
                                       (##car _%$%e195876195896%_))
                                      (_%$%tl195878195901%_
                                       (##cdr _%$%e195876195896%_)))
                                  (let ((_%id195904%_ _%$%hd195877195899%_))
                                    (if (gx#stx-null? _%$%tl195878195901%_)
                                        (if (gx#identifier? _%id195904%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id195904%_)
                                                        '()))
                                            (_%$%E195872195884%_))
                                        (_%$%E195872195884%_)))))
                              (_%$%E195872195884%_))))
                      (_%$%E195872195884%_)))))
          (_%$%E195871195906%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx195815%_)
        (let* ((_%$%e195816195829%_ _%stx195815%_)
               (_%$%E195818195833%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195816195829%_)))
               (_%$%E195817195865%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195816195829%_)
                      (let ((_%$%e195819195837%_
                             (gx#syntax-e _%$%e195816195829%_)))
                        (let ((_%$%hd195820195840%_
                               (##car _%$%e195819195837%_))
                              (_%$%tl195821195842%_
                               (##cdr _%$%e195819195837%_)))
                          (if (gx#stx-pair? _%$%tl195821195842%_)
                              (let ((_%$%e195822195845%_
                                     (gx#syntax-e _%$%tl195821195842%_)))
                                (let ((_%$%hd195823195848%_
                                       (##car _%$%e195822195845%_))
                                      (_%$%tl195824195850%_
                                       (##cdr _%$%e195822195845%_)))
                                  (let ((_%id195853%_ _%$%hd195823195848%_))
                                    (if (gx#stx-pair? _%$%tl195824195850%_)
                                        (let ((_%$%e195825195855%_
                                               (gx#syntax-e
                                                _%$%tl195824195850%_)))
                                          (let ((_%$%hd195826195858%_
                                                 (##car _%$%e195825195855%_))
                                                (_%$%tl195827195860%_
                                                 (##cdr _%$%e195825195855%_)))
                                            (let ((_%expr195863%_
                                                   _%$%hd195826195858%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195827195860%_)
                                                  (if (gx#identifier?
                                                       _%id195853%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id195853%_)
                          (cons (gx#core-compile-top-syntax _%expr195863%_)
                                '())))
              (_%$%E195818195833%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195818195833%_)))))
                                        (_%$%E195818195833%_)))))
                              (_%$%E195818195833%_))))
                      (_%$%E195818195833%_)))))
          (_%$%E195817195865%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id195809%_)
        (let ((_%$e195811%_ (gx#resolve-identifier__0 _%id195809%_)))
          (if _%$e195811%_
              (##unchecked-structure-ref _%$e195811%_ '1 '#f '#f)
              _%id195809%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd195807%_)
        (if (gx#identifier? _%hd195807%_)
            (gx#core-compile-top-runtime-ref _%hd195807%_)
            '#f)))))

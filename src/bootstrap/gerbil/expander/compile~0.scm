(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1784461444)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx196755%_)
        (let* ((_%$%e196756196763%_ _%stx196755%_)
               (_%$%E196758196767%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196756196763%_)))
               (_%$%E196757196781%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196756196763%_)
                      (let ((_%$%e196759196771%_
                             (gx#syntax-e _%$%e196756196763%_)))
                        (let ((_%$%hd196760196774%_
                               (##car _%$%e196759196771%_))
                              (_%$%tl196761196776%_
                               (##cdr _%$%e196759196771%_)))
                          (let* ((_%form196779%_ _%$%hd196760196774%_)
                                 (__self196784
                                  (gx#syntax-local-e__0 _%form196779%_))
                                 (__method196785
                                  (__method-ref
                                   __self196784
                                   'compile-top-syntax)))
                            (if __method196785
                                (__method196785 __self196784 _%stx196755%_)
                                (begin
                                  (error '"Missing method"
                                         __self196784
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E196758196767%_)))))
          (_%$%E196757196781%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self196704%_ _%stx196705%_)
        (let* ((_%self196708%_ _%self196704%_)
               (_%$%self196717196725%_ _%self196708%_)
               (_%$%E196719196728%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self196717196725%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K196720196741%_
                (lambda (_%K196731%_)
                  (let ((_%$e196733%_ (gx#stx-source _%stx196705%_)))
                    (if _%$e196733%_
                        (gx#stx-wrap-source
                         (_%K196731%_ _%stx196705%_)
                         _%$e196733%_)
                        (_%K196731%_ _%stx196705%_)))))
               (_%$%e196721196744%_
                (##unchecked-structure-ref _%$%self196717196725%_ '1 '#f '#f))
               (_%$%e196722196747%_
                (##unchecked-structure-ref _%$%self196717196725%_ '2 '#f '#f))
               (_%$%e196723196750%_
                (##unchecked-structure-ref _%$%self196717196725%_ '3 '#f '#f))
               (_%K196753%_ _%$%e196723196750%_))
          (_%$%K196720196741%_ _%K196753%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx196578%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx196578%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx196548%_)
        (let* ((_%$%e196549196556%_ _%stx196548%_)
               (_%$%E196551196560%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196549196556%_)))
               (_%$%E196550196574%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196549196556%_)
                      (let ((_%$%e196552196564%_
                             (gx#syntax-e _%$%e196549196556%_)))
                        (let ((_%$%hd196553196567%_
                               (##car _%$%e196552196564%_))
                              (_%$%tl196554196569%_
                               (##cdr _%$%e196552196564%_)))
                          (let ((_%body196572%_ _%$%tl196554196569%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body196572%_)))))
                      (_%$%E196551196560%_)))))
          (_%$%E196550196574%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx196517%_)
        (let* ((_%$%e196518196525%_ _%stx196517%_)
               (_%$%E196520196529%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196518196525%_)))
               (_%$%E196519196544%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196518196525%_)
                      (let ((_%$%e196521196533%_
                             (gx#syntax-e _%$%e196518196525%_)))
                        (let ((_%$%hd196522196536%_
                               (##car _%$%e196521196533%_))
                              (_%$%tl196523196538%_
                               (##cdr _%$%e196521196533%_)))
                          (let ((_%body196541%_ _%$%tl196523196538%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body196541%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E196520196529%_)))))
          (_%$%E196519196544%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx196487%_)
        (let* ((_%$%e196488196495%_ _%stx196487%_)
               (_%$%E196490196499%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196488196495%_)))
               (_%$%E196489196513%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196488196495%_)
                      (let ((_%$%e196491196503%_
                             (gx#syntax-e _%$%e196488196495%_)))
                        (let ((_%$%hd196492196506%_
                               (##car _%$%e196491196503%_))
                              (_%$%tl196493196508%_
                               (##cdr _%$%e196491196503%_)))
                          (let ((_%body196511%_ _%$%tl196493196508%_))
                            (cons '%#begin-foreign _%body196511%_))))
                      (_%$%E196490196499%_)))))
          (_%$%E196489196513%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx196433%_)
        (let* ((_%$%e196434196447%_ _%stx196433%_)
               (_%$%E196436196451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196434196447%_)))
               (_%$%E196435196483%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196434196447%_)
                      (let ((_%$%e196437196455%_
                             (gx#syntax-e _%$%e196434196447%_)))
                        (let ((_%$%hd196438196458%_
                               (##car _%$%e196437196455%_))
                              (_%$%tl196439196460%_
                               (##cdr _%$%e196437196455%_)))
                          (if (gx#stx-pair? _%$%tl196439196460%_)
                              (let ((_%$%e196440196463%_
                                     (gx#syntax-e _%$%tl196439196460%_)))
                                (let ((_%$%hd196441196466%_
                                       (##car _%$%e196440196463%_))
                                      (_%$%tl196442196468%_
                                       (##cdr _%$%e196440196463%_)))
                                  (let ((_%ann196471%_ _%$%hd196441196466%_))
                                    (if (gx#stx-pair? _%$%tl196442196468%_)
                                        (let ((_%$%e196443196473%_
                                               (gx#syntax-e
                                                _%$%tl196442196468%_)))
                                          (let ((_%$%hd196444196476%_
                                                 (##car _%$%e196443196473%_))
                                                (_%$%tl196445196478%_
                                                 (##cdr _%$%e196443196473%_)))
                                            (let ((_%expr196481%_
                                                   _%$%hd196444196476%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196445196478%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr196481%_)
                                                  (_%$%E196436196451%_)))))
                                        (_%$%E196436196451%_)))))
                              (_%$%E196436196451%_))))
                      (_%$%E196436196451%_)))))
          (_%$%E196435196483%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx196403%_)
        (let* ((_%$%e196404196411%_ _%stx196403%_)
               (_%$%E196406196415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196404196411%_)))
               (_%$%E196405196429%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196404196411%_)
                      (let ((_%$%e196407196419%_
                             (gx#syntax-e _%$%e196404196411%_)))
                        (let ((_%$%hd196408196422%_
                               (##car _%$%e196407196419%_))
                              (_%$%tl196409196424%_
                               (##cdr _%$%e196407196419%_)))
                          (let ((_%body196427%_ _%$%tl196409196424%_))
                            (cons '%#import _%body196427%_))))
                      (_%$%E196406196415%_)))))
          (_%$%E196405196429%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx196360%_)
        (let* ((_%$%e196361196371%_ _%stx196360%_)
               (_%$%E196363196375%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196361196371%_)))
               (_%$%E196362196399%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196361196371%_)
                      (let ((_%$%e196364196379%_
                             (gx#syntax-e _%$%e196361196371%_)))
                        (let ((_%$%hd196365196382%_
                               (##car _%$%e196364196379%_))
                              (_%$%tl196366196384%_
                               (##cdr _%$%e196364196379%_)))
                          (if (gx#stx-pair? _%$%tl196366196384%_)
                              (let ((_%$%e196367196387%_
                                     (gx#syntax-e _%$%tl196366196384%_)))
                                (let ((_%$%hd196368196390%_
                                       (##car _%$%e196367196387%_))
                                      (_%$%tl196369196392%_
                                       (##cdr _%$%e196367196387%_)))
                                  (let* ((_%hd196395%_ _%$%hd196368196390%_)
                                         (_%body196397%_ _%$%tl196369196392%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd196395%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body196397%_))))))
                              (_%$%E196363196375%_))))
                      (_%$%E196363196375%_)))))
          (_%$%E196362196399%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx196330%_)
        (let* ((_%$%e196331196338%_ _%stx196330%_)
               (_%$%E196333196342%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196331196338%_)))
               (_%$%E196332196356%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196331196338%_)
                      (let ((_%$%e196334196346%_
                             (gx#syntax-e _%$%e196331196338%_)))
                        (let ((_%$%hd196335196349%_
                               (##car _%$%e196334196346%_))
                              (_%$%tl196336196351%_
                               (##cdr _%$%e196334196346%_)))
                          (let ((_%body196354%_ _%$%tl196336196351%_))
                            (cons '%#export _%body196354%_))))
                      (_%$%E196333196342%_)))))
          (_%$%E196332196356%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx196300%_)
        (let* ((_%$%e196301196308%_ _%stx196300%_)
               (_%$%E196303196312%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196301196308%_)))
               (_%$%E196302196326%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196301196308%_)
                      (let ((_%$%e196304196316%_
                             (gx#syntax-e _%$%e196301196308%_)))
                        (let ((_%$%hd196305196319%_
                               (##car _%$%e196304196316%_))
                              (_%$%tl196306196321%_
                               (##cdr _%$%e196304196316%_)))
                          (let ((_%body196324%_ _%$%tl196306196321%_))
                            (cons '%#provide _%body196324%_))))
                      (_%$%E196303196312%_)))))
          (_%$%E196302196326%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx196270%_)
        (let* ((_%$%e196271196278%_ _%stx196270%_)
               (_%$%E196273196282%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196271196278%_)))
               (_%$%E196272196296%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196271196278%_)
                      (let ((_%$%e196274196286%_
                             (gx#syntax-e _%$%e196271196278%_)))
                        (let ((_%$%hd196275196289%_
                               (##car _%$%e196274196286%_))
                              (_%$%tl196276196291%_
                               (##cdr _%$%e196274196286%_)))
                          (let ((_%body196294%_ _%$%tl196276196291%_))
                            (cons '%#extern _%body196294%_))))
                      (_%$%E196273196282%_)))))
          (_%$%E196272196296%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx196216%_)
        (let* ((_%$%e196217196230%_ _%stx196216%_)
               (_%$%E196219196234%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196217196230%_)))
               (_%$%E196218196266%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196217196230%_)
                      (let ((_%$%e196220196238%_
                             (gx#syntax-e _%$%e196217196230%_)))
                        (let ((_%$%hd196221196241%_
                               (##car _%$%e196220196238%_))
                              (_%$%tl196222196243%_
                               (##cdr _%$%e196220196238%_)))
                          (if (gx#stx-pair? _%$%tl196222196243%_)
                              (let ((_%$%e196223196246%_
                                     (gx#syntax-e _%$%tl196222196243%_)))
                                (let ((_%$%hd196224196249%_
                                       (##car _%$%e196223196246%_))
                                      (_%$%tl196225196251%_
                                       (##cdr _%$%e196223196246%_)))
                                  (let ((_%hd196254%_ _%$%hd196224196249%_))
                                    (if (gx#stx-pair? _%$%tl196225196251%_)
                                        (let ((_%$%e196226196256%_
                                               (gx#syntax-e
                                                _%$%tl196225196251%_)))
                                          (let ((_%$%hd196227196259%_
                                                 (##car _%$%e196226196256%_))
                                                (_%$%tl196228196261%_
                                                 (##cdr _%$%e196226196256%_)))
                                            (let ((_%expr196264%_
                                                   _%$%hd196227196259%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196228196261%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd196254%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr196264%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E196219196234%_)))))
                                        (_%$%E196219196234%_)))))
                              (_%$%E196219196234%_))))
                      (_%$%E196219196234%_)))))
          (_%$%E196218196266%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx196161%_)
        (let* ((_%$%e196162196175%_ _%stx196161%_)
               (_%$%E196164196179%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196162196175%_)))
               (_%$%E196163196212%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196162196175%_)
                      (let ((_%$%e196165196183%_
                             (gx#syntax-e _%$%e196162196175%_)))
                        (let ((_%$%hd196166196186%_
                               (##car _%$%e196165196183%_))
                              (_%$%tl196167196188%_
                               (##cdr _%$%e196165196183%_)))
                          (if (gx#stx-pair? _%$%tl196167196188%_)
                              (let ((_%$%e196168196191%_
                                     (gx#syntax-e _%$%tl196167196188%_)))
                                (let ((_%$%hd196169196194%_
                                       (##car _%$%e196168196191%_))
                                      (_%$%tl196170196196%_
                                       (##cdr _%$%e196168196191%_)))
                                  (let ((_%hd196199%_ _%$%hd196169196194%_))
                                    (if (gx#stx-pair? _%$%tl196170196196%_)
                                        (let ((_%$%e196171196201%_
                                               (gx#syntax-e
                                                _%$%tl196170196196%_)))
                                          (let ((_%$%hd196172196204%_
                                                 (##car _%$%e196171196201%_))
                                                (_%$%tl196173196206%_
                                                 (##cdr _%$%e196171196201%_)))
                                            (let ((_%expr196209%_
                                                   _%$%hd196172196204%_))
                                              (if (gx#stx-null?
                                                   _%$%tl196173196206%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd196199%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr196209%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E196164196179%_)))))
                                        (_%$%E196164196179%_)))))
                              (_%$%E196164196179%_))))
                      (_%$%E196164196179%_)))))
          (_%$%E196163196212%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx196131%_)
        (let* ((_%$%e196132196139%_ _%stx196131%_)
               (_%$%E196134196143%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196132196139%_)))
               (_%$%E196133196157%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196132196139%_)
                      (let ((_%$%e196135196147%_
                             (gx#syntax-e _%$%e196132196139%_)))
                        (let ((_%$%hd196136196150%_
                               (##car _%$%e196135196147%_))
                              (_%$%tl196137196152%_
                               (##cdr _%$%e196135196147%_)))
                          (let ((_%body196155%_ _%$%tl196137196152%_))
                            (cons '%#define-alias _%body196155%_))))
                      (_%$%E196134196143%_)))))
          (_%$%E196133196157%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx196101%_)
        (let* ((_%$%e196102196109%_ _%stx196101%_)
               (_%$%E196104196113%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196102196109%_)))
               (_%$%E196103196127%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196102196109%_)
                      (let ((_%$%e196105196117%_
                             (gx#syntax-e _%$%e196102196109%_)))
                        (let ((_%$%hd196106196120%_
                               (##car _%$%e196105196117%_))
                              (_%$%tl196107196122%_
                               (##cdr _%$%e196105196117%_)))
                          (let ((_%body196125%_ _%$%tl196107196122%_))
                            (cons '%#define-runtime _%body196125%_))))
                      (_%$%E196104196113%_)))))
          (_%$%E196103196127%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx196071%_)
        (let* ((_%$%e196072196079%_ _%stx196071%_)
               (_%$%E196074196083%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196072196079%_)))
               (_%$%E196073196097%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196072196079%_)
                      (let ((_%$%e196075196087%_
                             (gx#syntax-e _%$%e196072196079%_)))
                        (let ((_%$%hd196076196090%_
                               (##car _%$%e196075196087%_))
                              (_%$%tl196077196092%_
                               (##cdr _%$%e196075196087%_)))
                          (let ((_%decls196095%_ _%$%tl196077196092%_))
                            (cons '%#declare _%decls196095%_))))
                      (_%$%E196074196083%_)))))
          (_%$%E196073196097%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx196041%_)
        (let* ((_%$%e196042196049%_ _%stx196041%_)
               (_%$%E196044196053%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196042196049%_)))
               (_%$%E196043196067%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196042196049%_)
                      (let ((_%$%e196045196057%_
                             (gx#syntax-e _%$%e196042196049%_)))
                        (let ((_%$%hd196046196060%_
                               (##car _%$%e196045196057%_))
                              (_%$%tl196047196062%_
                               (##cdr _%$%e196045196057%_)))
                          (let ((_%clause196065%_ _%$%tl196047196062%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause196065%_)))))
                      (_%$%E196044196053%_)))))
          (_%$%E196043196067%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx195998%_)
        (let* ((_%$%e195999196009%_ _%stx195998%_)
               (_%$%E196001196013%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195999196009%_)))
               (_%$%E196000196037%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195999196009%_)
                      (let ((_%$%e196002196017%_
                             (gx#syntax-e _%$%e195999196009%_)))
                        (let ((_%$%hd196003196020%_
                               (##car _%$%e196002196017%_))
                              (_%$%tl196004196022%_
                               (##cdr _%$%e196002196017%_)))
                          (let ((_%hd196025%_ _%$%hd196003196020%_))
                            (if (gx#stx-pair? _%$%tl196004196022%_)
                                (let ((_%$%e196005196027%_
                                       (gx#syntax-e _%$%tl196004196022%_)))
                                  (let ((_%$%hd196006196030%_
                                         (##car _%$%e196005196027%_))
                                        (_%$%tl196007196032%_
                                         (##cdr _%$%e196005196027%_)))
                                    (let ((_%body196035%_
                                           _%$%hd196006196030%_))
                                      (if (gx#stx-null? _%$%tl196007196032%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd196025%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body196035%_)
                                                      '()))
                                          (_%$%E196001196013%_)))))
                                (_%$%E196001196013%_)))))
                      (_%$%E196001196013%_)))))
          (_%$%E196000196037%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx195968%_)
        (let* ((_%$%e195969195976%_ _%stx195968%_)
               (_%$%E195971195980%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195969195976%_)))
               (_%$%E195970195994%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195969195976%_)
                      (let ((_%$%e195972195984%_
                             (gx#syntax-e _%$%e195969195976%_)))
                        (let ((_%$%hd195973195987%_
                               (##car _%$%e195972195984%_))
                              (_%$%tl195974195989%_
                               (##cdr _%$%e195972195984%_)))
                          (let ((_%clauses195992%_ _%$%tl195974195989%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses195992%_)))))
                      (_%$%E195971195980%_)))))
          (_%$%E195970195994%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx195903%_ _%form195904%_)
        (let* ((_%$%e195905195918%_ _%stx195903%_)
               (_%$%E195907195922%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195905195918%_)))
               (_%$%E195906195954%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195905195918%_)
                      (let ((_%$%e195908195926%_
                             (gx#syntax-e _%$%e195905195918%_)))
                        (let ((_%$%hd195909195929%_
                               (##car _%$%e195908195926%_))
                              (_%$%tl195910195931%_
                               (##cdr _%$%e195908195926%_)))
                          (if (gx#stx-pair? _%$%tl195910195931%_)
                              (let ((_%$%e195911195934%_
                                     (gx#syntax-e _%$%tl195910195931%_)))
                                (let ((_%$%hd195912195937%_
                                       (##car _%$%e195911195934%_))
                                      (_%$%tl195913195939%_
                                       (##cdr _%$%e195911195934%_)))
                                  (let ((_%hd195942%_ _%$%hd195912195937%_))
                                    (if (gx#stx-pair? _%$%tl195913195939%_)
                                        (let ((_%$%e195914195944%_
                                               (gx#syntax-e
                                                _%$%tl195913195939%_)))
                                          (let ((_%$%hd195915195947%_
                                                 (##car _%$%e195914195944%_))
                                                (_%$%tl195916195949%_
                                                 (##cdr _%$%e195914195944%_)))
                                            (let ((_%body195952%_
                                                   _%$%hd195915195947%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195916195949%_)
                                                  (cons _%form195904%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd195942%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body195952%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195907195922%_)))))
                                        (_%$%E195907195922%_)))))
                              (_%$%E195907195922%_))))
                      (_%$%E195907195922%_)))))
          (_%$%E195906195954%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx195961%_)
        (let ((_%form195963%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx195961%_ _%form195963%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g196786_
        (let ((_g196787_ (##length _g196786_)))
          (cond ((##fx= _g196787_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g196786_))
                ((##fx= _g196787_ 2)
                 (apply gx#core-compile-top-let-values%__% _g196786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g196786_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx195900%_)
        (gx#core-compile-top-let-values%__% _%stx195900%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx195898%_)
        (gx#core-compile-top-let-values%__% _%stx195898%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx195857%_)
        (let* ((_%$%e195858195868%_ _%stx195857%_)
               (_%$%E195860195872%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195858195868%_)))
               (_%$%E195859195894%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195858195868%_)
                      (let ((_%$%e195861195876%_
                             (gx#syntax-e _%$%e195858195868%_)))
                        (let ((_%$%hd195862195879%_
                               (##car _%$%e195861195876%_))
                              (_%$%tl195863195881%_
                               (##cdr _%$%e195861195876%_)))
                          (if (gx#stx-pair? _%$%tl195863195881%_)
                              (let ((_%$%e195864195884%_
                                     (gx#syntax-e _%$%tl195863195881%_)))
                                (let ((_%$%hd195865195887%_
                                       (##car _%$%e195864195884%_))
                                      (_%$%tl195866195889%_
                                       (##cdr _%$%e195864195884%_)))
                                  (let ((_%e195892%_ _%$%hd195865195887%_))
                                    (if (gx#stx-null? _%$%tl195866195889%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e195892%_)
                                                    '()))
                                        (_%$%E195860195872%_)))))
                              (_%$%E195860195872%_))))
                      (_%$%E195860195872%_)))))
          (_%$%E195859195894%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx195816%_)
        (let* ((_%$%e195817195827%_ _%stx195816%_)
               (_%$%E195819195831%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195817195827%_)))
               (_%$%E195818195853%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195817195827%_)
                      (let ((_%$%e195820195835%_
                             (gx#syntax-e _%$%e195817195827%_)))
                        (let ((_%$%hd195821195838%_
                               (##car _%$%e195820195835%_))
                              (_%$%tl195822195840%_
                               (##cdr _%$%e195820195835%_)))
                          (if (gx#stx-pair? _%$%tl195822195840%_)
                              (let ((_%$%e195823195843%_
                                     (gx#syntax-e _%$%tl195822195840%_)))
                                (let ((_%$%hd195824195846%_
                                       (##car _%$%e195823195843%_))
                                      (_%$%tl195825195848%_
                                       (##cdr _%$%e195823195843%_)))
                                  (let ((_%e195851%_ _%$%hd195824195846%_))
                                    (if (gx#stx-null? _%$%tl195825195848%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e195851%_)
                                                    '()))
                                        (_%$%E195819195831%_)))))
                              (_%$%E195819195831%_))))
                      (_%$%E195819195831%_)))))
          (_%$%E195818195853%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx195773%_)
        (let* ((_%$%e195774195784%_ _%stx195773%_)
               (_%$%E195776195788%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195774195784%_)))
               (_%$%E195775195812%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195774195784%_)
                      (let ((_%$%e195777195792%_
                             (gx#syntax-e _%$%e195774195784%_)))
                        (let ((_%$%hd195778195795%_
                               (##car _%$%e195777195792%_))
                              (_%$%tl195779195797%_
                               (##cdr _%$%e195777195792%_)))
                          (if (gx#stx-pair? _%$%tl195779195797%_)
                              (let ((_%$%e195780195800%_
                                     (gx#syntax-e _%$%tl195779195797%_)))
                                (let ((_%$%hd195781195803%_
                                       (##car _%$%e195780195800%_))
                                      (_%$%tl195782195805%_
                                       (##cdr _%$%e195780195800%_)))
                                  (let* ((_%rator195808%_ _%$%hd195781195803%_)
                                         (_%args195810%_ _%$%tl195782195805%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator195808%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args195810%_))))))
                              (_%$%E195776195788%_))))
                      (_%$%E195776195788%_)))))
          (_%$%E195775195812%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx195706%_)
        (let* ((_%$%e195707195723%_ _%stx195706%_)
               (_%$%E195709195727%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195707195723%_)))
               (_%$%E195708195769%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195707195723%_)
                      (let ((_%$%e195710195731%_
                             (gx#syntax-e _%$%e195707195723%_)))
                        (let ((_%$%hd195711195734%_
                               (##car _%$%e195710195731%_))
                              (_%$%tl195712195736%_
                               (##cdr _%$%e195710195731%_)))
                          (if (gx#stx-pair? _%$%tl195712195736%_)
                              (let ((_%$%e195713195739%_
                                     (gx#syntax-e _%$%tl195712195736%_)))
                                (let ((_%$%hd195714195742%_
                                       (##car _%$%e195713195739%_))
                                      (_%$%tl195715195744%_
                                       (##cdr _%$%e195713195739%_)))
                                  (let ((_%test195747%_ _%$%hd195714195742%_))
                                    (if (gx#stx-pair? _%$%tl195715195744%_)
                                        (let ((_%$%e195716195749%_
                                               (gx#syntax-e
                                                _%$%tl195715195744%_)))
                                          (let ((_%$%hd195717195752%_
                                                 (##car _%$%e195716195749%_))
                                                (_%$%tl195718195754%_
                                                 (##cdr _%$%e195716195749%_)))
                                            (let ((_%K195757%_
                                                   _%$%hd195717195752%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl195718195754%_)
                                                  (let ((_%$%e195719195759%_
                                                         (gx#syntax-e
                                                          _%$%tl195718195754%_)))
                                                    (let ((_%$%hd195720195762%_
                                                           (##car _%$%e195719195759%_))
                                                          (_%$%tl195721195764%_
                                                           (##cdr _%$%e195719195759%_)))
                                                      (let ((_%E195767%_
                                                             _%$%hd195720195762%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl195721195764%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test195747%_)
                                (cons (gx#core-compile-top-syntax _%K195757%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E195767%_)
                                            '()))))
                    (_%$%E195709195727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195709195727%_)))))
                                        (_%$%E195709195727%_)))))
                              (_%$%E195709195727%_))))
                      (_%$%E195709195727%_)))))
          (_%$%E195708195769%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx195665%_)
        (let* ((_%$%e195666195676%_ _%stx195665%_)
               (_%$%E195668195680%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195666195676%_)))
               (_%$%E195667195702%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195666195676%_)
                      (let ((_%$%e195669195684%_
                             (gx#syntax-e _%$%e195666195676%_)))
                        (let ((_%$%hd195670195687%_
                               (##car _%$%e195669195684%_))
                              (_%$%tl195671195689%_
                               (##cdr _%$%e195669195684%_)))
                          (if (gx#stx-pair? _%$%tl195671195689%_)
                              (let ((_%$%e195672195692%_
                                     (gx#syntax-e _%$%tl195671195689%_)))
                                (let ((_%$%hd195673195695%_
                                       (##car _%$%e195672195692%_))
                                      (_%$%tl195674195697%_
                                       (##cdr _%$%e195672195692%_)))
                                  (let ((_%id195700%_ _%$%hd195673195695%_))
                                    (if (gx#stx-null? _%$%tl195674195697%_)
                                        (if (gx#identifier? _%id195700%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id195700%_)
                                                        '()))
                                            (_%$%E195668195680%_))
                                        (_%$%E195668195680%_)))))
                              (_%$%E195668195680%_))))
                      (_%$%E195668195680%_)))))
          (_%$%E195667195702%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx195611%_)
        (let* ((_%$%e195612195625%_ _%stx195611%_)
               (_%$%E195614195629%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195612195625%_)))
               (_%$%E195613195661%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195612195625%_)
                      (let ((_%$%e195615195633%_
                             (gx#syntax-e _%$%e195612195625%_)))
                        (let ((_%$%hd195616195636%_
                               (##car _%$%e195615195633%_))
                              (_%$%tl195617195638%_
                               (##cdr _%$%e195615195633%_)))
                          (if (gx#stx-pair? _%$%tl195617195638%_)
                              (let ((_%$%e195618195641%_
                                     (gx#syntax-e _%$%tl195617195638%_)))
                                (let ((_%$%hd195619195644%_
                                       (##car _%$%e195618195641%_))
                                      (_%$%tl195620195646%_
                                       (##cdr _%$%e195618195641%_)))
                                  (let ((_%id195649%_ _%$%hd195619195644%_))
                                    (if (gx#stx-pair? _%$%tl195620195646%_)
                                        (let ((_%$%e195621195651%_
                                               (gx#syntax-e
                                                _%$%tl195620195646%_)))
                                          (let ((_%$%hd195622195654%_
                                                 (##car _%$%e195621195651%_))
                                                (_%$%tl195623195656%_
                                                 (##cdr _%$%e195621195651%_)))
                                            (let ((_%expr195659%_
                                                   _%$%hd195622195654%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195623195656%_)
                                                  (if (gx#identifier?
                                                       _%id195649%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id195649%_)
                          (cons (gx#core-compile-top-syntax _%expr195659%_)
                                '())))
              (_%$%E195614195629%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195614195629%_)))))
                                        (_%$%E195614195629%_)))))
                              (_%$%E195614195629%_))))
                      (_%$%E195614195629%_)))))
          (_%$%E195613195661%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id195605%_)
        (let ((_%$e195607%_ (gx#resolve-identifier__0 _%id195605%_)))
          (if _%$e195607%_
              (##unchecked-structure-ref _%$e195607%_ '1 '#f '#f)
              _%id195605%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd195603%_)
        (if (gx#identifier? _%hd195603%_)
            (gx#core-compile-top-runtime-ref _%hd195603%_)
            '#f)))))

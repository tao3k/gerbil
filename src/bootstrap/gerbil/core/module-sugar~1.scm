(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx50337%_)
      (let* ((_%__stx5312153122%_ _%$stx50337%_)
             (_%$%g5034250361%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5312153122%_))))
        (let ((_%__kont5312453125%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont5312653127%_
               (lambda (_%$%g5034750388%_ _%$%g5034850390%_ _%$%g5034950391%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%$%g5034850390%_
                                   (cons (cons _%$%g5034950391%_
                                               _%$%g5034750388%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%$%g5034850390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx5312153122%_)
              (let ((_%$%e5034450413%_ (gx#syntax-e _%__stx5312153122%_)))
                (let ((_%$%tl5034650420%_
                       (let () (declare (not safe)) (##cdr _%$%e5034450413%_)))
                      (_%$%hd5034550417%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5034450413%_))))
                  (if (gx#stx-null? _%$%tl5034650420%_)
                      (_%__kont5312453125%_)
                      (if (gx#stx-pair? _%$%tl5034650420%_)
                          (let ((_%$%e5035350378%_
                                 (gx#syntax-e _%$%tl5034650420%_)))
                            (let ((_%$%tl5035550385%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5035350378%_)))
                                  (_%$%hd5035450382%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5035350378%_))))
                              (_%__kont5312653127%_
                               _%$%tl5035550385%_
                               _%$%hd5035450382%_
                               _%$%hd5034550417%_)))
                          (let () (declare (not safe)) (_%$%g5034250361%_))))))
              (let () (declare (not safe)) (_%$%g5034250361%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx50431%_)
      (let* ((_%__stx5315153152%_ _%$stx50431%_)
             (_%$%g5043650476%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5315153152%_))))
        (let ((_%__kont5315453155%_
               (lambda (_%$%g5043850612%_ _%$%g5043950614%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g5043950614%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%$%g5043850612%_ '()))
                                   '())))))
              (_%__kont5315653157%_
               (lambda (_%$%g5044950541%_
                        _%$%g5045050543%_
                        _%$%g5045150544%_
                        _%$%g5045250545%_)
                 (cons _%$%g5045250545%_
                       (cons _%$%g5045150544%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g5045050543%_
                                               (foldr (lambda (_%$%g5056650569%_
                                                               _%$%g5056750572%_)
                                                        (cons _%$%g5056650569%_
                                                              _%$%g5056750572%_))
                                                      '()
                                                      _%$%g5044950541%_)))
                                   '()))))))
          (let* ((_%__match5320653207%_
                  (lambda (_%$%e5045350483%_
                           _%$%hd5045450487%_
                           _%$%tl5045550490%_
                           _%$%e5045650493%_
                           _%$%hd5045750497%_
                           _%$%tl5045850500%_
                           _%$%e5045950503%_
                           _%$%hd5046050507%_
                           _%$%tl5046150510%_
                           _%__splice5315853159%_
                           _%$%target5046250513%_
                           _%$%tl5046450516%_)
                    (letrec ((_%$%loop5046550519%_
                              (lambda (_%$%hd5046350523%_ _%$%body5046950526%_)
                                (if (gx#stx-pair? _%$%hd5046350523%_)
                                    (let ((_%$%e5046650528%_
                                           (gx#syntax-e _%$%hd5046350523%_)))
                                      (let ((_%$%lp-tl5046850535%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5046650528%_)))
                                            (_%$%lp-hd5046750532%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5046650528%_))))
                                        (_%$%loop5046550519%_
                                         _%$%lp-tl5046850535%_
                                         (cons _%$%lp-hd5046750532%_
                                               _%$%body5046950526%_))))
                                    (let ((_%$%body5047050538%_
                                           (reverse _%$%body5046950526%_)))
                                      (let ((_%$%g5044950541%_
                                             _%$%body5047050538%_)
                                            (_%$%g5045050543%_
                                             _%$%tl5046150510%_)
                                            (_%$%g5045150544%_
                                             _%$%hd5046050507%_)
                                            (_%$%g5045250545%_
                                             _%$%hd5045450487%_))
                                        (if (gx#identifier? _%$%g5045150544%_)
                                            (_%__kont5315653157%_
                                             _%$%g5044950541%_
                                             _%$%g5045050543%_
                                             _%$%g5045150544%_
                                             _%$%g5045250545%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5043650476%_)))))))))
                      (_%$%loop5046550519%_ _%$%target5046250513%_ '()))))
                 (_%__match5318053181%_
                  (lambda (_%$%e5044050582%_
                           _%$%hd5044150586%_
                           _%$%tl5044250589%_
                           _%$%e5044350592%_
                           _%$%hd5044450596%_
                           _%$%tl5044550599%_
                           _%$%e5044650602%_
                           _%$%hd5044750606%_
                           _%$%tl5044850609%_)
                    (let ((_%$%g5043850612%_ _%$%hd5044750606%_)
                          (_%$%g5043950614%_ _%$%hd5044450596%_))
                      (if (gx#identifier? _%$%g5043950614%_)
                          (_%__kont5315453155%_
                           _%$%g5043850612%_
                           _%$%g5043950614%_)
                          (if (gx#stx-pair? _%$%hd5044450596%_)
                              (let ((_%$%e5045950503%_
                                     (gx#syntax-e _%$%hd5044450596%_)))
                                (let ((_%$%tl5046150510%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5045950503%_)))
                                      (_%$%hd5046050507%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5045950503%_))))
                                  (if (gx#stx-pair/null? _%$%tl5044550599%_)
                                      (let ((_%__splice5315853159%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5044550599%_
                                              '0)))
                                        (let ((_%$%tl5046450516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5315853159%_
                                                  '1)))
                                              (_%$%target5046250513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5315853159%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5046450516%_)
                                              (_%__match5320653207%_
                                               _%$%e5044050582%_
                                               _%$%hd5044150586%_
                                               _%$%tl5044250589%_
                                               _%$%e5044350592%_
                                               _%$%hd5044450596%_
                                               _%$%tl5044550599%_
                                               _%$%e5045950503%_
                                               _%$%hd5046050507%_
                                               _%$%tl5046150510%_
                                               _%__splice5315853159%_
                                               _%$%target5046250513%_
                                               _%$%tl5046450516%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5043650476%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5043650476%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5043650476%_))))))))
            (if (gx#stx-pair? _%__stx5315153152%_)
                (let ((_%$%e5044050582%_ (gx#syntax-e _%__stx5315153152%_)))
                  (let ((_%$%tl5044250589%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5044050582%_)))
                        (_%$%hd5044150586%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5044050582%_))))
                    (if (gx#stx-pair? _%$%tl5044250589%_)
                        (let ((_%$%e5044350592%_
                               (gx#syntax-e _%$%tl5044250589%_)))
                          (let ((_%$%tl5044550599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5044350592%_)))
                                (_%$%hd5044450596%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5044350592%_))))
                            (if (gx#stx-pair? _%$%tl5044550599%_)
                                (let ((_%$%e5044650602%_
                                       (gx#syntax-e _%$%tl5044550599%_)))
                                  (let ((_%$%tl5044850609%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5044650602%_)))
                                        (_%$%hd5044750606%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5044650602%_))))
                                    (if (gx#stx-null? _%$%tl5044850609%_)
                                        (_%__match5318053181%_
                                         _%$%e5044050582%_
                                         _%$%hd5044150586%_
                                         _%$%tl5044250589%_
                                         _%$%e5044350592%_
                                         _%$%hd5044450596%_
                                         _%$%tl5044550599%_
                                         _%$%e5044650602%_
                                         _%$%hd5044750606%_
                                         _%$%tl5044850609%_)
                                        (if (gx#stx-pair? _%$%hd5044450596%_)
                                            (let ((_%$%e5045950503%_
                                                   (gx#syntax-e
                                                    _%$%hd5044450596%_)))
                                              (let ((_%$%tl5046150510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5045950503%_)))
                                                    (_%$%hd5046050507%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5045950503%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5044550599%_)
                                                    (let ((_%__splice5315853159%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5044550599%_
                                                            '0)))
                                                      (let ((_%$%tl5046450516%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5315853159%_ '1)))
                    (_%$%target5046250513%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5315853159%_ '0))))
                (if (gx#stx-null? _%$%tl5046450516%_)
                    (_%__match5320653207%_
                     _%$%e5044050582%_
                     _%$%hd5044150586%_
                     _%$%tl5044250589%_
                     _%$%e5044350592%_
                     _%$%hd5044450596%_
                     _%$%tl5044550599%_
                     _%$%e5045950503%_
                     _%$%hd5046050507%_
                     _%$%tl5046150510%_
                     _%__splice5315853159%_
                     _%$%target5046250513%_
                     _%$%tl5046450516%_)
                    (let () (declare (not safe)) (_%$%g5043650476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5043650476%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5043650476%_))))))
                                (if (gx#stx-pair? _%$%hd5044450596%_)
                                    (let ((_%$%e5045950503%_
                                           (gx#syntax-e _%$%hd5044450596%_)))
                                      (let ((_%$%tl5046150510%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5045950503%_)))
                                            (_%$%hd5046050507%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5045950503%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl5044550599%_)
                                            (let ((_%__splice5315853159%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl5044550599%_
                                                    '0)))
                                              (let ((_%$%tl5046450516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5315853159%_
                                                        '1)))
                                                    (_%$%target5046250513%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5315853159%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl5046450516%_)
                                                    (_%__match5320653207%_
                                                     _%$%e5044050582%_
                                                     _%$%hd5044150586%_
                                                     _%$%tl5044250589%_
                                                     _%$%e5044350592%_
                                                     _%$%hd5044450596%_
                                                     _%$%tl5044550599%_
                                                     _%$%e5045950503%_
                                                     _%$%hd5046050507%_
                                                     _%$%tl5046150510%_
                                                     _%__splice5315853159%_
                                                     _%$%target5046250513%_
                                                     _%$%tl5046450516%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5043650476%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5043650476%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5043650476%_))))))
                        (let () (declare (not safe)) (_%$%g5043650476%_)))))
                (let () (declare (not safe)) (_%$%g5043650476%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx50634%_)
      (let* ((_%__stx5320953210%_ _%$stx50634%_)
             (_%$%g5063950679%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5320953210%_))))
        (let ((_%__kont5321253213%_
               (lambda (_%$%g5064150815%_ _%$%g5064250817%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g5064250817%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%$%g5064150815%_ '()))
                                   '())))))
              (_%__kont5321453215%_
               (lambda (_%$%g5065250744%_
                        _%$%g5065350746%_
                        _%$%g5065450747%_
                        _%$%g5065550748%_)
                 (cons _%$%g5065550748%_
                       (cons _%$%g5065450747%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g5065350746%_
                                               (foldr (lambda (_%$%g5076950772%_
                                                               _%$%g5077050775%_)
                                                        (cons _%$%g5076950772%_
                                                              _%$%g5077050775%_))
                                                      '()
                                                      _%$%g5065250744%_)))
                                   '()))))))
          (let* ((_%__match5326453265%_
                  (lambda (_%$%e5065650686%_
                           _%$%hd5065750690%_
                           _%$%tl5065850693%_
                           _%$%e5065950696%_
                           _%$%hd5066050700%_
                           _%$%tl5066150703%_
                           _%$%e5066250706%_
                           _%$%hd5066350710%_
                           _%$%tl5066450713%_
                           _%__splice5321653217%_
                           _%$%target5066550716%_
                           _%$%tl5066750719%_)
                    (letrec ((_%$%loop5066850722%_
                              (lambda (_%$%hd5066650726%_ _%$%body5067250729%_)
                                (if (gx#stx-pair? _%$%hd5066650726%_)
                                    (let ((_%$%e5066950731%_
                                           (gx#syntax-e _%$%hd5066650726%_)))
                                      (let ((_%$%lp-tl5067150738%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5066950731%_)))
                                            (_%$%lp-hd5067050735%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5066950731%_))))
                                        (_%$%loop5066850722%_
                                         _%$%lp-tl5067150738%_
                                         (cons _%$%lp-hd5067050735%_
                                               _%$%body5067250729%_))))
                                    (let ((_%$%body5067350741%_
                                           (reverse _%$%body5067250729%_)))
                                      (let ((_%$%g5065250744%_
                                             _%$%body5067350741%_)
                                            (_%$%g5065350746%_
                                             _%$%tl5066450713%_)
                                            (_%$%g5065450747%_
                                             _%$%hd5066350710%_)
                                            (_%$%g5065550748%_
                                             _%$%hd5065750690%_))
                                        (if (gx#identifier? _%$%g5065450747%_)
                                            (_%__kont5321453215%_
                                             _%$%g5065250744%_
                                             _%$%g5065350746%_
                                             _%$%g5065450747%_
                                             _%$%g5065550748%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5063950679%_)))))))))
                      (_%$%loop5066850722%_ _%$%target5066550716%_ '()))))
                 (_%__match5323853239%_
                  (lambda (_%$%e5064350785%_
                           _%$%hd5064450789%_
                           _%$%tl5064550792%_
                           _%$%e5064650795%_
                           _%$%hd5064750799%_
                           _%$%tl5064850802%_
                           _%$%e5064950805%_
                           _%$%hd5065050809%_
                           _%$%tl5065150812%_)
                    (let ((_%$%g5064150815%_ _%$%hd5065050809%_)
                          (_%$%g5064250817%_ _%$%hd5064750799%_))
                      (if (gx#identifier? _%$%g5064250817%_)
                          (_%__kont5321253213%_
                           _%$%g5064150815%_
                           _%$%g5064250817%_)
                          (if (gx#stx-pair? _%$%hd5064750799%_)
                              (let ((_%$%e5066250706%_
                                     (gx#syntax-e _%$%hd5064750799%_)))
                                (let ((_%$%tl5066450713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5066250706%_)))
                                      (_%$%hd5066350710%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5066250706%_))))
                                  (if (gx#stx-pair/null? _%$%tl5064850802%_)
                                      (let ((_%__splice5321653217%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5064850802%_
                                              '0)))
                                        (let ((_%$%tl5066750719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5321653217%_
                                                  '1)))
                                              (_%$%target5066550716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5321653217%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5066750719%_)
                                              (_%__match5326453265%_
                                               _%$%e5064350785%_
                                               _%$%hd5064450789%_
                                               _%$%tl5064550792%_
                                               _%$%e5064650795%_
                                               _%$%hd5064750799%_
                                               _%$%tl5064850802%_
                                               _%$%e5066250706%_
                                               _%$%hd5066350710%_
                                               _%$%tl5066450713%_
                                               _%__splice5321653217%_
                                               _%$%target5066550716%_
                                               _%$%tl5066750719%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5063950679%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5063950679%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5063950679%_))))))))
            (if (gx#stx-pair? _%__stx5320953210%_)
                (let ((_%$%e5064350785%_ (gx#syntax-e _%__stx5320953210%_)))
                  (let ((_%$%tl5064550792%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5064350785%_)))
                        (_%$%hd5064450789%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5064350785%_))))
                    (if (gx#stx-pair? _%$%tl5064550792%_)
                        (let ((_%$%e5064650795%_
                               (gx#syntax-e _%$%tl5064550792%_)))
                          (let ((_%$%tl5064850802%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5064650795%_)))
                                (_%$%hd5064750799%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5064650795%_))))
                            (if (gx#stx-pair? _%$%tl5064850802%_)
                                (let ((_%$%e5064950805%_
                                       (gx#syntax-e _%$%tl5064850802%_)))
                                  (let ((_%$%tl5065150812%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5064950805%_)))
                                        (_%$%hd5065050809%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5064950805%_))))
                                    (if (gx#stx-null? _%$%tl5065150812%_)
                                        (_%__match5323853239%_
                                         _%$%e5064350785%_
                                         _%$%hd5064450789%_
                                         _%$%tl5064550792%_
                                         _%$%e5064650795%_
                                         _%$%hd5064750799%_
                                         _%$%tl5064850802%_
                                         _%$%e5064950805%_
                                         _%$%hd5065050809%_
                                         _%$%tl5065150812%_)
                                        (if (gx#stx-pair? _%$%hd5064750799%_)
                                            (let ((_%$%e5066250706%_
                                                   (gx#syntax-e
                                                    _%$%hd5064750799%_)))
                                              (let ((_%$%tl5066450713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5066250706%_)))
                                                    (_%$%hd5066350710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5066250706%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5064850802%_)
                                                    (let ((_%__splice5321653217%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5064850802%_
                                                            '0)))
                                                      (let ((_%$%tl5066750719%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5321653217%_ '1)))
                    (_%$%target5066550716%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5321653217%_ '0))))
                (if (gx#stx-null? _%$%tl5066750719%_)
                    (_%__match5326453265%_
                     _%$%e5064350785%_
                     _%$%hd5064450789%_
                     _%$%tl5064550792%_
                     _%$%e5064650795%_
                     _%$%hd5064750799%_
                     _%$%tl5064850802%_
                     _%$%e5066250706%_
                     _%$%hd5066350710%_
                     _%$%tl5066450713%_
                     _%__splice5321653217%_
                     _%$%target5066550716%_
                     _%$%tl5066750719%_)
                    (let () (declare (not safe)) (_%$%g5063950679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5063950679%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5063950679%_))))))
                                (if (gx#stx-pair? _%$%hd5064750799%_)
                                    (let ((_%$%e5066250706%_
                                           (gx#syntax-e _%$%hd5064750799%_)))
                                      (let ((_%$%tl5066450713%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5066250706%_)))
                                            (_%$%hd5066350710%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5066250706%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl5064850802%_)
                                            (let ((_%__splice5321653217%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl5064850802%_
                                                    '0)))
                                              (let ((_%$%tl5066750719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5321653217%_
                                                        '1)))
                                                    (_%$%target5066550716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5321653217%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl5066750719%_)
                                                    (_%__match5326453265%_
                                                     _%$%e5064350785%_
                                                     _%$%hd5064450789%_
                                                     _%$%tl5064550792%_
                                                     _%$%e5064650795%_
                                                     _%$%hd5064750799%_
                                                     _%$%tl5064850802%_
                                                     _%$%e5066250706%_
                                                     _%$%hd5066350710%_
                                                     _%$%tl5066450713%_
                                                     _%__splice5321653217%_
                                                     _%$%target5066550716%_
                                                     _%$%tl5066750719%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5063950679%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5063950679%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5063950679%_))))))
                        (let () (declare (not safe)) (_%$%g5063950679%_)))))
                (let () (declare (not safe)) (_%$%g5063950679%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx50837%_)
      (let* ((_%__stx5326753268%_ _%$stx50837%_)
             (_%$%g5084250882%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5326753268%_))))
        (let ((_%__kont5327053271%_
               (lambda (_%$%g5084451018%_ _%$%g5084551020%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g5084551020%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%$%g5084451018%_ '()))
                                   '())))))
              (_%__kont5327253273%_
               (lambda (_%$%g5085550947%_
                        _%$%g5085650949%_
                        _%$%g5085750950%_
                        _%$%g5085850951%_)
                 (cons _%$%g5085850951%_
                       (cons _%$%g5085750950%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g5085650949%_
                                               (foldr (lambda (_%$%g5097250975%_
                                                               _%$%g5097350978%_)
                                                        (cons _%$%g5097250975%_
                                                              _%$%g5097350978%_))
                                                      '()
                                                      _%$%g5085550947%_)))
                                   '()))))))
          (let* ((_%__match5332253323%_
                  (lambda (_%$%e5085950889%_
                           _%$%hd5086050893%_
                           _%$%tl5086150896%_
                           _%$%e5086250899%_
                           _%$%hd5086350903%_
                           _%$%tl5086450906%_
                           _%$%e5086550909%_
                           _%$%hd5086650913%_
                           _%$%tl5086750916%_
                           _%__splice5327453275%_
                           _%$%target5086850919%_
                           _%$%tl5087050922%_)
                    (letrec ((_%$%loop5087150925%_
                              (lambda (_%$%hd5086950929%_ _%$%body5087550932%_)
                                (if (gx#stx-pair? _%$%hd5086950929%_)
                                    (let ((_%$%e5087250934%_
                                           (gx#syntax-e _%$%hd5086950929%_)))
                                      (let ((_%$%lp-tl5087450941%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5087250934%_)))
                                            (_%$%lp-hd5087350938%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5087250934%_))))
                                        (_%$%loop5087150925%_
                                         _%$%lp-tl5087450941%_
                                         (cons _%$%lp-hd5087350938%_
                                               _%$%body5087550932%_))))
                                    (let ((_%$%body5087650944%_
                                           (reverse _%$%body5087550932%_)))
                                      (let ((_%$%g5085550947%_
                                             _%$%body5087650944%_)
                                            (_%$%g5085650949%_
                                             _%$%tl5086750916%_)
                                            (_%$%g5085750950%_
                                             _%$%hd5086650913%_)
                                            (_%$%g5085850951%_
                                             _%$%hd5086050893%_))
                                        (if (gx#identifier? _%$%g5085750950%_)
                                            (_%__kont5327253273%_
                                             _%$%g5085550947%_
                                             _%$%g5085650949%_
                                             _%$%g5085750950%_
                                             _%$%g5085850951%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5084250882%_)))))))))
                      (_%$%loop5087150925%_ _%$%target5086850919%_ '()))))
                 (_%__match5329653297%_
                  (lambda (_%$%e5084650988%_
                           _%$%hd5084750992%_
                           _%$%tl5084850995%_
                           _%$%e5084950998%_
                           _%$%hd5085051002%_
                           _%$%tl5085151005%_
                           _%$%e5085251008%_
                           _%$%hd5085351012%_
                           _%$%tl5085451015%_)
                    (let ((_%$%g5084451018%_ _%$%hd5085351012%_)
                          (_%$%g5084551020%_ _%$%hd5085051002%_))
                      (if (gx#identifier? _%$%g5084551020%_)
                          (_%__kont5327053271%_
                           _%$%g5084451018%_
                           _%$%g5084551020%_)
                          (if (gx#stx-pair? _%$%hd5085051002%_)
                              (let ((_%$%e5086550909%_
                                     (gx#syntax-e _%$%hd5085051002%_)))
                                (let ((_%$%tl5086750916%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5086550909%_)))
                                      (_%$%hd5086650913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5086550909%_))))
                                  (if (gx#stx-pair/null? _%$%tl5085151005%_)
                                      (let ((_%__splice5327453275%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5085151005%_
                                              '0)))
                                        (let ((_%$%tl5087050922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5327453275%_
                                                  '1)))
                                              (_%$%target5086850919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5327453275%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5087050922%_)
                                              (_%__match5332253323%_
                                               _%$%e5084650988%_
                                               _%$%hd5084750992%_
                                               _%$%tl5084850995%_
                                               _%$%e5084950998%_
                                               _%$%hd5085051002%_
                                               _%$%tl5085151005%_
                                               _%$%e5086550909%_
                                               _%$%hd5086650913%_
                                               _%$%tl5086750916%_
                                               _%__splice5327453275%_
                                               _%$%target5086850919%_
                                               _%$%tl5087050922%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5084250882%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5084250882%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5084250882%_))))))))
            (if (gx#stx-pair? _%__stx5326753268%_)
                (let ((_%$%e5084650988%_ (gx#syntax-e _%__stx5326753268%_)))
                  (let ((_%$%tl5084850995%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5084650988%_)))
                        (_%$%hd5084750992%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5084650988%_))))
                    (if (gx#stx-pair? _%$%tl5084850995%_)
                        (let ((_%$%e5084950998%_
                               (gx#syntax-e _%$%tl5084850995%_)))
                          (let ((_%$%tl5085151005%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5084950998%_)))
                                (_%$%hd5085051002%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5084950998%_))))
                            (if (gx#stx-pair? _%$%tl5085151005%_)
                                (let ((_%$%e5085251008%_
                                       (gx#syntax-e _%$%tl5085151005%_)))
                                  (let ((_%$%tl5085451015%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5085251008%_)))
                                        (_%$%hd5085351012%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5085251008%_))))
                                    (if (gx#stx-null? _%$%tl5085451015%_)
                                        (_%__match5329653297%_
                                         _%$%e5084650988%_
                                         _%$%hd5084750992%_
                                         _%$%tl5084850995%_
                                         _%$%e5084950998%_
                                         _%$%hd5085051002%_
                                         _%$%tl5085151005%_
                                         _%$%e5085251008%_
                                         _%$%hd5085351012%_
                                         _%$%tl5085451015%_)
                                        (if (gx#stx-pair? _%$%hd5085051002%_)
                                            (let ((_%$%e5086550909%_
                                                   (gx#syntax-e
                                                    _%$%hd5085051002%_)))
                                              (let ((_%$%tl5086750916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5086550909%_)))
                                                    (_%$%hd5086650913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5086550909%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5085151005%_)
                                                    (let ((_%__splice5327453275%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5085151005%_
                                                            '0)))
                                                      (let ((_%$%tl5087050922%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5327453275%_ '1)))
                    (_%$%target5086850919%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5327453275%_ '0))))
                (if (gx#stx-null? _%$%tl5087050922%_)
                    (_%__match5332253323%_
                     _%$%e5084650988%_
                     _%$%hd5084750992%_
                     _%$%tl5084850995%_
                     _%$%e5084950998%_
                     _%$%hd5085051002%_
                     _%$%tl5085151005%_
                     _%$%e5086550909%_
                     _%$%hd5086650913%_
                     _%$%tl5086750916%_
                     _%__splice5327453275%_
                     _%$%target5086850919%_
                     _%$%tl5087050922%_)
                    (let () (declare (not safe)) (_%$%g5084250882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5084250882%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5084250882%_))))))
                                (if (gx#stx-pair? _%$%hd5085051002%_)
                                    (let ((_%$%e5086550909%_
                                           (gx#syntax-e _%$%hd5085051002%_)))
                                      (let ((_%$%tl5086750916%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5086550909%_)))
                                            (_%$%hd5086650913%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5086550909%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl5085151005%_)
                                            (let ((_%__splice5327453275%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl5085151005%_
                                                    '0)))
                                              (let ((_%$%tl5087050922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5327453275%_
                                                        '1)))
                                                    (_%$%target5086850919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5327453275%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl5087050922%_)
                                                    (_%__match5332253323%_
                                                     _%$%e5084650988%_
                                                     _%$%hd5084750992%_
                                                     _%$%tl5084850995%_
                                                     _%$%e5084950998%_
                                                     _%$%hd5085051002%_
                                                     _%$%tl5085151005%_
                                                     _%$%e5086550909%_
                                                     _%$%hd5086650913%_
                                                     _%$%tl5086750916%_
                                                     _%__splice5327453275%_
                                                     _%$%target5086850919%_
                                                     _%$%tl5087050922%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5084250882%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5084250882%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5084250882%_))))))
                        (let () (declare (not safe)) (_%$%g5084250882%_)))))
                (let () (declare (not safe)) (_%$%g5084250882%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx51040%_)
       (let* ((_%$%g5104351063%_
               (lambda (_%$%g5104451059%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5104451059%_)))
              (_%$%g5104251132%_
               (lambda (_%$%g5104451067%_)
                 (if (gx#stx-pair? _%$%g5104451067%_)
                     (let ((_%$%e5104651070%_ (gx#syntax-e _%$%g5104451067%_)))
                       (let ((_%$%hd5104751074%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5104651070%_)))
                             (_%$%tl5104851077%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5104651070%_))))
                         (if (gx#stx-pair/null? _%$%tl5104851077%_)
                             (let ((_g53417_
                                    (gx#syntax-split-splice
                                     _%$%tl5104851077%_
                                     '0)))
                               (begin
                                 (let ((_g53418_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g53417_)
                                              (##values-length _g53417_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g53418_ 2)))
                                       (error "Context expects 2 values"
                                              _g53418_)))
                                 (let ((_%$%target5104951080%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g53417_ 0)))
                                       (_%$%tl5105151083%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g53417_ 1))))
                                   (if (gx#stx-null? _%$%tl5105151083%_)
                                       (letrec ((_%$%loop5105251086%_
                                                 (lambda (_%$%hd5105051090%_
                                                          _%$%body5105651093%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd5105051090%_)
                                                       (let ((_%$%e5105351095%_
                                                              (gx#syntax-e
                                                               _%$%hd5105051090%_)))
                                                         (let ((_%$%lp-hd5105451099%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e5105351095%_)))
                       (_%$%lp-tl5105551102%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e5105351095%_))))
                   (_%$%loop5105251086%_
                    _%$%lp-tl5105551102%_
                    (cons _%$%lp-hd5105451099%_ _%$%body5105651093%_))))
               (let ((_%$%body5105751105%_ (reverse _%$%body5105651093%_)))
                 (cons 'phi:
                       (cons '1
                             (foldr (lambda (_%$%g5112351126%_
                                             _%$%g5112451129%_)
                                      (cons _%$%g5112351126%_
                                            _%$%g5112451129%_))
                                    '()
                                    _%$%body5105751105%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop5105251086%_
                                          _%$%target5104951080%_
                                          '()))
                                       (_%$%g5104351063%_
                                        _%$%g5104451067%_)))))
                             (_%$%g5104351063%_ _%$%g5104451067%_))))
                     (_%$%g5104351063%_ _%$%g5104451067%_)))))
         (_%$%g5104251132%_ _%stx51040%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx51137%_)
       (let* ((_%$%g5114051160%_
               (lambda (_%$%g5114151156%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5114151156%_)))
              (_%$%g5113951229%_
               (lambda (_%$%g5114151164%_)
                 (if (gx#stx-pair? _%$%g5114151164%_)
                     (let ((_%$%e5114351167%_ (gx#syntax-e _%$%g5114151164%_)))
                       (let ((_%$%hd5114451171%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5114351167%_)))
                             (_%$%tl5114551174%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5114351167%_))))
                         (if (gx#stx-pair/null? _%$%tl5114551174%_)
                             (let ((_g53419_
                                    (gx#syntax-split-splice
                                     _%$%tl5114551174%_
                                     '0)))
                               (begin
                                 (let ((_g53420_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g53419_)
                                              (##values-length _g53419_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g53420_ 2)))
                                       (error "Context expects 2 values"
                                              _g53420_)))
                                 (let ((_%$%target5114651177%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g53419_ 0)))
                                       (_%$%tl5114851180%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g53419_ 1))))
                                   (if (gx#stx-null? _%$%tl5114851180%_)
                                       (letrec ((_%$%loop5114951183%_
                                                 (lambda (_%$%hd5114751187%_
                                                          _%$%body5115351190%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd5114751187%_)
                                                       (let ((_%$%e5115051192%_
                                                              (gx#syntax-e
                                                               _%$%hd5114751187%_)))
                                                         (let ((_%$%lp-hd5115151196%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e5115051192%_)))
                       (_%$%lp-tl5115251199%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e5115051192%_))))
                   (_%$%loop5114951183%_
                    _%$%lp-tl5115251199%_
                    (cons _%$%lp-hd5115151196%_ _%$%body5115351190%_))))
               (let ((_%$%body5115451202%_ (reverse _%$%body5115351190%_)))
                 (cons 'phi:
                       (cons '-1
                             (foldr (lambda (_%$%g5122051223%_
                                             _%$%g5122151226%_)
                                      (cons _%$%g5122051223%_
                                            _%$%g5122151226%_))
                                    '()
                                    _%$%body5115451202%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop5114951183%_
                                          _%$%target5114651177%_
                                          '()))
                                       (_%$%g5114051160%_
                                        _%$%g5114151164%_)))))
                             (_%$%g5114051160%_ _%$%g5114151164%_))))
                     (_%$%g5114051160%_ _%$%g5114151164%_)))))
         (_%$%g5113951229%_ _%stx51137%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx51234%_)
       (let* ((_%$%g5123751261%_
               (lambda (_%$%g5123851257%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5123851257%_)))
              (_%$%g5123651387%_
               (lambda (_%$%g5123851265%_)
                 (if (gx#stx-pair? _%$%g5123851265%_)
                     (let ((_%$%e5124151268%_ (gx#syntax-e _%$%g5123851265%_)))
                       (let ((_%$%hd5124251272%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5124151268%_)))
                             (_%$%tl5124351275%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5124151268%_))))
                         (if (gx#stx-pair? _%$%tl5124351275%_)
                             (let ((_%$%e5124451278%_
                                    (gx#syntax-e _%$%tl5124351275%_)))
                               (let ((_%$%hd5124551282%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5124451278%_)))
                                     (_%$%tl5124651285%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5124451278%_))))
                                 (if (gx#stx-pair/null? _%$%tl5124651285%_)
                                     (let ((_g53421_
                                            (gx#syntax-split-splice
                                             _%$%tl5124651285%_
                                             '0)))
                                       (begin
                                         (let ((_g53422_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53421_)
                                                      (##values-length
                                                       _g53421_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53422_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53422_)))
                                         (let ((_%$%target5124751288%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53421_ 0)))
                                               (_%$%tl5124951291%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53421_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5124951291%_)
                                               (letrec ((_%$%loop5125051294%_
                                                         (lambda (_%$%hd5124851298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id5125451301%_)
                   (if (gx#stx-pair? _%$%hd5124851298%_)
                       (let ((_%$%e5125151303%_
                              (gx#syntax-e _%$%hd5124851298%_)))
                         (let ((_%$%lp-hd5125251307%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5125151303%_)))
                               (_%$%lp-tl5125351310%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5125151303%_))))
                           (_%$%loop5125051294%_
                            _%$%lp-tl5125351310%_
                            (cons _%$%lp-hd5125251307%_ _%$%id5125451301%_))))
                       (let ((_%$%id5125551313%_ (reverse _%$%id5125451301%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g5133551338%_
                                              _%$%g5133651341%_)
                                       (cons _%$%g5133551338%_
                                             _%$%g5133651341%_))
                                     '()
                                     _%$%id5125551313%_))
                             (let* ((_%keys51352%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g5134351346%_
                                                      _%$%g5134451349%_)
                                               (cons _%$%g5134351346%_
                                                     _%$%g5134451349%_))
                                             '()
                                             _%$%id5125551313%_)))
                                    (_%keytab51363%_
                                     (let ((_%ht51355%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g5135751359%_)
                                          (hash-put!
                                           _%ht51355%_
                                           _%$%g5135751359%_
                                           '#t))
                                        _%keys51352%_)
                                       _%ht51355%_))
                                    (_%imports51366%_
                                     (gx#core-expand-import-source
                                      _%$%hd5124551282%_))
                                    (_%fold-e51382%_
                                     (letrec ((_%fold-e51369%_
                                               (lambda (_%in51372%_ _%r51374%_)
                                                 (if (gx#module-import?
                                                      _%in51372%_)
                                                     (if (hash-get
                                                          _%keytab51363%_
                                                          (gx#module-import-name
                                                           _%in51372%_))
                                                         (cons _%in51372%_
                                                               _%r51374%_)
                                                         _%r51374%_)
                                                     (if (gx#import-set?
                                                          _%in51372%_)
                                                         (foldl _%fold-e51369%_
                                                                _%r51374%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in51372%_))
                 _%r51374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e51369%_)))
                               (cons 'begin:
                                     (foldl _%fold-e51382%_
                                            '()
                                            _%imports51366%_)))
                             (_%$%g5123751261%_ _%$%g5123851265%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5125051294%_
                                                  _%$%target5124751288%_
                                                  '()))
                                               (_%$%g5123751261%_
                                                _%$%g5123851265%_)))))
                                     (_%$%g5123751261%_ _%$%g5123851265%_))))
                             (_%$%g5123751261%_ _%$%g5123851265%_))))
                     (_%$%g5123751261%_ _%$%g5123851265%_)))))
         (_%$%g5123651387%_ _%stx51234%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx51392%_)
       (let* ((_%$%g5139551419%_
               (lambda (_%$%g5139651415%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5139651415%_)))
              (_%$%g5139451545%_
               (lambda (_%$%g5139651423%_)
                 (if (gx#stx-pair? _%$%g5139651423%_)
                     (let ((_%$%e5139951426%_ (gx#syntax-e _%$%g5139651423%_)))
                       (let ((_%$%hd5140051430%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5139951426%_)))
                             (_%$%tl5140151433%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5139951426%_))))
                         (if (gx#stx-pair? _%$%tl5140151433%_)
                             (let ((_%$%e5140251436%_
                                    (gx#syntax-e _%$%tl5140151433%_)))
                               (let ((_%$%hd5140351440%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5140251436%_)))
                                     (_%$%tl5140451443%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5140251436%_))))
                                 (if (gx#stx-pair/null? _%$%tl5140451443%_)
                                     (let ((_g53423_
                                            (gx#syntax-split-splice
                                             _%$%tl5140451443%_
                                             '0)))
                                       (begin
                                         (let ((_g53424_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53423_)
                                                      (##values-length
                                                       _g53423_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53424_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53424_)))
                                         (let ((_%$%target5140551446%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53423_ 0)))
                                               (_%$%tl5140751449%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53423_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5140751449%_)
                                               (letrec ((_%$%loop5140851452%_
                                                         (lambda (_%$%hd5140651456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id5141251459%_)
                   (if (gx#stx-pair? _%$%hd5140651456%_)
                       (let ((_%$%e5140951461%_
                              (gx#syntax-e _%$%hd5140651456%_)))
                         (let ((_%$%lp-hd5141051465%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5140951461%_)))
                               (_%$%lp-tl5141151468%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5140951461%_))))
                           (_%$%loop5140851452%_
                            _%$%lp-tl5141151468%_
                            (cons _%$%lp-hd5141051465%_ _%$%id5141251459%_))))
                       (let ((_%$%id5141351471%_ (reverse _%$%id5141251459%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g5149351496%_
                                              _%$%g5149451499%_)
                                       (cons _%$%g5149351496%_
                                             _%$%g5149451499%_))
                                     '()
                                     _%$%id5141351471%_))
                             (let* ((_%keys51510%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g5150151504%_
                                                      _%$%g5150251507%_)
                                               (cons _%$%g5150151504%_
                                                     _%$%g5150251507%_))
                                             '()
                                             _%$%id5141351471%_)))
                                    (_%keytab51521%_
                                     (let ((_%ht51513%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g5151551517%_)
                                          (hash-put!
                                           _%ht51513%_
                                           _%$%g5151551517%_
                                           '#t))
                                        _%keys51510%_)
                                       _%ht51513%_))
                                    (_%imports51524%_
                                     (gx#core-expand-import-source
                                      _%$%hd5140351440%_))
                                    (_%fold-e51540%_
                                     (letrec ((_%fold-e51527%_
                                               (lambda (_%in51530%_ _%r51532%_)
                                                 (if (gx#module-import?
                                                      _%in51530%_)
                                                     (if (hash-get
                                                          _%keytab51521%_
                                                          (gx#module-import-name
                                                           _%in51530%_))
                                                         _%r51532%_
                                                         (cons _%in51530%_
                                                               _%r51532%_))
                                                     (if (gx#import-set?
                                                          _%in51530%_)
                                                         (foldl _%fold-e51527%_
                                                                _%r51532%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in51530%_))
                 (cons _%in51530%_ _%r51532%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e51527%_)))
                               (cons 'begin:
                                     (foldl _%fold-e51540%_
                                            '()
                                            _%imports51524%_)))
                             (_%$%g5139551419%_ _%$%g5139651423%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5140851452%_
                                                  _%$%target5140551446%_
                                                  '()))
                                               (_%$%g5139551419%_
                                                _%$%g5139651423%_)))))
                                     (_%$%g5139551419%_ _%$%g5139651423%_))))
                             (_%$%g5139551419%_ _%$%g5139651423%_))))
                     (_%$%g5139551419%_ _%$%g5139651423%_)))))
         (_%$%g5139451545%_ _%stx51392%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in51597%_ _%rename51599%_)
      (gx#make-module-import
       (gx#module-import-source _%in51597%_)
       _%rename51599%_
       (gx#module-import-phi _%in51597%_)
       (gx#module-import-weak? _%in51597%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name51550%_ _%pre51552%_)
      (let* ((_%$%name5155351561%_ _%name51550%_)
             (_%$%else5155551573%_
              (lambda () (make-symbol _%pre51552%_ _%name51550%_)))
             (_%$%K5155751581%_
              (lambda (_%mark51577%_ _%id51579%_)
                (cons (make-symbol _%pre51552%_ _%id51579%_) _%mark51577%_))))
        (if (pair? _%$%name5155351561%_)
            (let ((_%$%hd5155851585%_
                   (let () (declare (not safe)) (##car _%$%name5155351561%_)))
                  (_%$%tl5155951588%_
                   (let () (declare (not safe)) (##cdr _%$%name5155351561%_))))
              (let* ((_%id51591%_ _%$%hd5155851585%_)
                     (_%mark51594%_ _%$%tl5155951588%_))
                (_%$%K5155751581%_ _%mark51594%_ _%id51591%_)))
            (_%$%else5155551573%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx51601%_)
       (let* ((_%$%g5160451637%_
               (lambda (_%$%g5160551633%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5160551633%_)))
              (_%$%g5160351828%_
               (lambda (_%$%g5160551641%_)
                 (if (gx#stx-pair? _%$%g5160551641%_)
                     (let ((_%$%e5160951644%_ (gx#syntax-e _%$%g5160551641%_)))
                       (let ((_%$%hd5161051648%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5160951644%_)))
                             (_%$%tl5161151651%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5160951644%_))))
                         (if (gx#stx-pair? _%$%tl5161151651%_)
                             (let ((_%$%e5161251654%_
                                    (gx#syntax-e _%$%tl5161151651%_)))
                               (let ((_%$%hd5161351658%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5161251654%_)))
                                     (_%$%tl5161451661%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5161251654%_))))
                                 (if (gx#stx-pair/null? _%$%tl5161451661%_)
                                     (let ((_g53425_
                                            (gx#syntax-split-splice
                                             _%$%tl5161451661%_
                                             '0)))
                                       (begin
                                         (let ((_g53426_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53425_)
                                                      (##values-length
                                                       _g53425_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53426_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53426_)))
                                         (let ((_%$%target5161551664%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53425_ 0)))
                                               (_%$%tl5161751667%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53425_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5161751667%_)
                                               (letrec ((_%$%loop5161851670%_
                                                         (lambda (_%$%hd5161651674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%new-id5162251677%_
                          _%$%id5162351678%_)
                   (if (gx#stx-pair? _%$%hd5161651674%_)
                       (let ((_%$%e5161951680%_
                              (gx#syntax-e _%$%hd5161651674%_)))
                         (let ((_%$%lp-hd5162051684%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5161951680%_)))
                               (_%$%lp-tl5162151687%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5161951680%_))))
                           (if (gx#stx-pair? _%$%lp-hd5162051684%_)
                               (let ((_%$%e5162651690%_
                                      (gx#syntax-e _%$%lp-hd5162051684%_)))
                                 (let ((_%$%hd5162751694%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e5162651690%_)))
                                       (_%$%tl5162851697%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e5162651690%_))))
                                   (if (gx#stx-pair? _%$%tl5162851697%_)
                                       (let ((_%$%e5162951700%_
                                              (gx#syntax-e
                                               _%$%tl5162851697%_)))
                                         (let ((_%$%hd5163051704%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5162951700%_)))
                                               (_%$%tl5163151707%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5162951700%_))))
                                           (if (gx#stx-null?
                                                _%$%tl5163151707%_)
                                               (_%$%loop5161851670%_
                                                _%$%lp-tl5162151687%_
                                                (cons _%$%hd5163051704%_
                                                      _%$%new-id5162251677%_)
                                                (cons _%$%hd5162751694%_
                                                      _%$%id5162351678%_))
                                               (_%$%g5160451637%_
                                                _%$%g5160551641%_))))
                                       (_%$%g5160451637%_ _%$%g5160551641%_))))
                               (_%$%g5160451637%_ _%$%g5160551641%_))))
                       (let ((_%$%new-id5162451710%_
                              (reverse _%$%new-id5162251677%_))
                             (_%$%id5162551712%_ (reverse _%$%id5162351678%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%$%g5173551738%_
                                                   _%$%g5173651741%_)
                                            (cons _%$%g5173551738%_
                                                  _%$%g5173651741%_))
                                          '()
                                          _%$%id5162551712%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%$%g5174351746%_
                                                   _%$%g5174451749%_)
                                            (cons _%$%g5174351746%_
                                                  _%$%g5174451749%_))
                                          '()
                                          _%$%new-id5162451710%_)))
                             (let* ((_%keytab51752%_ (make-hash-table))
                                    (_%found51755%_ (make-hash-table))
                                    (_%_51778%_
                                     (for-each
                                      (lambda (_%id51758%_ _%new-id51760%_)
                                        (hash-put!
                                         _%keytab51752%_
                                         (gx#core-identifier-key _%id51758%_)
                                         (gx#core-identifier-key
                                          _%new-id51760%_)))
                                      (foldr (lambda (_%$%g5176151764%_
                                                      _%$%g5176251767%_)
                                               (cons _%$%g5176151764%_
                                                     _%$%g5176251767%_))
                                             '()
                                             _%$%id5162551712%_)
                                      (foldr (lambda (_%$%g5176951772%_
                                                      _%$%g5177051775%_)
                                               (cons _%$%g5176951772%_
                                                     _%$%g5177051775%_))
                                             '()
                                             _%$%new-id5162451710%_)))
                                    (_%imports51781%_
                                     (gx#core-expand-import-source
                                      _%$%hd5161351658%_))
                                    (_%fold-e51809%_
                                     (letrec ((_%fold-e51784%_
                                               (lambda (_%in51787%_ _%r51789%_)
                                                 (if (gx#module-import?
                                                      _%in51787%_)
                                                     (let* ((_%name51793%_
                                                             (gx#module-import-name
                                                              _%in51787%_))
                                                            (_%$e51796%_
                                                             (hash-get
                                                              _%keytab51752%_
                                                              _%name51793%_)))
                                                       (if _%$e51796%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found51755%_
                                                              _%name51793%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-import-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in51787%_
                            _%$e51796%_)
                           _%r51789%_))
                   (cons _%in51787%_ _%r51789%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#import-set?
                                                          _%in51787%_)
                                                         (foldl _%fold-e51784%_
                                                                _%r51789%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in51787%_))
                 (cons _%in51787%_ _%r51789%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e51784%_))
                                    (_%new-imports51812%_
                                     (foldl _%fold-e51809%_
                                            '()
                                            _%imports51781%_)))
                               (for-each
                                (lambda (_%id51817%_)
                                  (if (hash-get
                                       _%found51755%_
                                       (gx#core-identifier-key _%id51817%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the import set"
                                       _%stx51601%_
                                       _%id51817%_)))
                                (foldr (lambda (_%$%g5181951822%_
                                                _%$%g5182051825%_)
                                         (cons _%$%g5181951822%_
                                               _%$%g5182051825%_))
                                       '()
                                       _%$%id5162551712%_))
                               (cons 'begin: _%new-imports51812%_))
                             (_%$%g5160451637%_ _%$%g5160551641%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5161851670%_
                                                  _%$%target5161551664%_
                                                  '()
                                                  '()))
                                               (_%$%g5160451637%_
                                                _%$%g5160551641%_)))))
                                     (_%$%g5160451637%_ _%$%g5160551641%_))))
                             (_%$%g5160451637%_ _%$%g5160551641%_))))
                     (_%$%g5160451637%_ _%$%g5160551641%_)))))
         (_%$%g5160351828%_ _%stx51601%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx51833%_)
       (let* ((_%$%g5183651854%_
               (lambda (_%$%g5183751850%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5183751850%_)))
              (_%$%g5183551939%_
               (lambda (_%$%g5183751858%_)
                 (if (gx#stx-pair? _%$%g5183751858%_)
                     (let ((_%$%e5184051861%_ (gx#syntax-e _%$%g5183751858%_)))
                       (let ((_%$%hd5184151865%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5184051861%_)))
                             (_%$%tl5184251868%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5184051861%_))))
                         (if (gx#stx-pair? _%$%tl5184251868%_)
                             (let ((_%$%e5184351871%_
                                    (gx#syntax-e _%$%tl5184251868%_)))
                               (let ((_%$%hd5184451875%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5184351871%_)))
                                     (_%$%tl5184551878%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5184351871%_))))
                                 (if (gx#stx-pair? _%$%tl5184551878%_)
                                     (let ((_%$%e5184651881%_
                                            (gx#syntax-e _%$%tl5184551878%_)))
                                       (let ((_%$%hd5184751885%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e5184651881%_)))
                                             (_%$%tl5184851888%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e5184651881%_))))
                                         (if (gx#stx-null? _%$%tl5184851888%_)
                                             (if (gx#identifier?
                                                  _%$%hd5184751885%_)
                                                 (let* ((_%pre51909%_
                                                         (gx#stx-e
                                                          _%$%hd5184751885%_))
                                                        (_%imports51912%_
                                                         (gx#core-expand-import-source
                                                          _%$%hd5184451875%_))
                                                        (_%rename-e51918%_
                                                         (lambda (_%name51915%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name51915%_
                                                            _%pre51909%_)))
                                                        (_%fold-e51934%_
                                                         (letrec ((_%fold-e51921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%in51924%_ _%r51926%_)
                             (if (gx#module-import? _%in51924%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                        _%in51924%_
                                        (_%rename-e51918%_
                                         (gx#module-import-name _%in51924%_)))
                                       _%r51926%_)
                                 (if (gx#import-set? _%in51924%_)
                                     (foldl _%fold-e51921%_
                                            _%r51926%_
                                            (gx#import-set-imports
                                             _%in51924%_))
                                     (cons _%in51924%_ _%r51926%_))))))
                   _%fold-e51921%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e51934%_
                                                                '()
                                                                _%imports51912%_)))
                                                 (_%$%g5183651854%_
                                                  _%$%g5183751858%_))
                                             (_%$%g5183651854%_
                                              _%$%g5183751858%_))))
                                     (_%$%g5183651854%_ _%$%g5183751858%_))))
                             (_%$%g5183651854%_ _%$%g5183751858%_))))
                     (_%$%g5183651854%_ _%$%g5183751858%_)))))
         (_%$%g5183551939%_ _%stx51833%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx51943%_)
       (letrec ((_%flatten51946%_
                 (lambda (_%list-of-lists52197%_)
                   (foldr (lambda (_%v52200%_ _%acc52202%_)
                            (if (null? _%v52200%_)
                                _%acc52202%_
                                (if (pair? _%v52200%_)
                                    (append (_%flatten51946%_ _%v52200%_)
                                            _%acc52202%_)
                                    (cons _%v52200%_ _%acc52202%_))))
                          '()
                          _%list-of-lists52197%_)))
                (_%expand-path51948%_
                 (lambda (_%top52067%_ _%mod52069%_)
                   (let* ((_%__stx5332553326%_ _%mod52069%_)
                          (_%$%g5207252094%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx5332553326%_))))
                     (let ((_%__kont5332853329%_
                            (lambda (_%$%g5207452160%_ _%$%g5207552162%_)
                              (map (lambda (_%mod52177%_)
                                     (gx#stx-identifier
                                      _%top52067%_
                                      _%top52067%_
                                      '"/"
                                      _%mod52177%_))
                                   (_%flatten51946%_
                                    (map (lambda (_%$%g5217952181%_)
                                           (_%expand-path51948%_
                                            _%$%g5207552162%_
                                            _%$%g5217952181%_))
                                         (foldr (lambda (_%$%g5218452187%_
                                                         _%$%g5218552190%_)
                                                  (cons _%$%g5218452187%_
                                                        _%$%g5218552190%_))
                                                '()
                                                _%$%g5207452160%_))))))
                           (_%__kont5333253333%_
                            (lambda (_%$%g5208852101%_)
                              (gx#stx-identifier
                               _%top52067%_
                               _%top52067%_
                               '"/"
                               _%$%g5208852101%_))))
                       (let* ((_%$%g5207152115%_
                               (lambda ()
                                 (let ((_%$%g5208852101%_ _%__stx5332553326%_))
                                   (if (or (gx#identifier? _%$%g5208852101%_)
                                           (gx#stx-fixnum? _%$%g5208852101%_))
                                       (_%__kont5333253333%_ _%$%g5208852101%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g5207252094%_))))))
                              (_%__match5334853349%_
                               (lambda (_%$%e5207652122%_
                                        _%$%hd5207752126%_
                                        _%$%tl5207852129%_
                                        _%__splice5333053331%_
                                        _%$%target5207952132%_
                                        _%$%tl5208152135%_)
                                 (letrec ((_%$%loop5208252138%_
                                           (lambda (_%$%hd5208052142%_
                                                    _%$%mod5208652145%_)
                                             (if (gx#stx-pair?
                                                  _%$%hd5208052142%_)
                                                 (let ((_%$%e5208352147%_
                                                        (gx#syntax-e
                                                         _%$%hd5208052142%_)))
                                                   (let ((_%$%lp-tl5208552154%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e5208352147%_)))
                                                         (_%$%lp-hd5208452151%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e5208352147%_))))
                                                     (_%$%loop5208252138%_
                                                      _%$%lp-tl5208552154%_
                                                      (cons _%$%lp-hd5208452151%_
                                                            _%$%mod5208652145%_))))
                                                 (let ((_%$%mod5208752157%_
                                                        (reverse _%$%mod5208652145%_)))
                                                   (_%__kont5332853329%_
                                                    _%$%mod5208752157%_
                                                    _%$%hd5207752126%_))))))
                                   (_%$%loop5208252138%_
                                    _%$%target5207952132%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx5332553326%_)
                             (let ((_%$%e5207652122%_
                                    (gx#syntax-e _%__stx5332553326%_)))
                               (let ((_%$%tl5207852129%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5207652122%_)))
                                     (_%$%hd5207752126%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5207652122%_))))
                                 (if (gx#stx-pair/null? _%$%tl5207852129%_)
                                     (let ((_%__splice5333053331%_
                                            (gx#syntax-split-splice->vector
                                             _%$%tl5207852129%_
                                             '0)))
                                       (let ((_%$%tl5208152135%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5333053331%_
                                                 '1)))
                                             (_%$%target5207952132%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5333053331%_
                                                 '0))))
                                         (if (gx#stx-null? _%$%tl5208152135%_)
                                             (_%__match5334853349%_
                                              _%$%e5207652122%_
                                              _%$%hd5207752126%_
                                              _%$%tl5207852129%_
                                              _%__splice5333053331%_
                                              _%$%target5207952132%_
                                              _%$%tl5208152135%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g5207152115%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%$%g5207152115%_)))))
                             (let ()
                               (declare (not safe))
                               (_%$%g5207152115%_)))))))))
         (let* ((_%$%g5195051974%_
                 (lambda (_%$%g5195151970%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%$%g5195151970%_)))
                (_%$%g5194952063%_
                 (lambda (_%$%g5195151978%_)
                   (if (gx#stx-pair? _%$%g5195151978%_)
                       (let ((_%$%e5195451981%_
                              (gx#syntax-e _%$%g5195151978%_)))
                         (let ((_%$%hd5195551985%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5195451981%_)))
                               (_%$%tl5195651988%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5195451981%_))))
                           (if (gx#stx-pair? _%$%tl5195651988%_)
                               (let ((_%$%e5195751991%_
                                      (gx#syntax-e _%$%tl5195651988%_)))
                                 (let ((_%$%hd5195851995%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e5195751991%_)))
                                       (_%$%tl5195951998%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e5195751991%_))))
                                   (if (gx#stx-pair/null? _%$%tl5195951998%_)
                                       (let ((_g53427_
                                              (gx#syntax-split-splice
                                               _%$%tl5195951998%_
                                               '0)))
                                         (begin
                                           (let ((_g53428_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g53427_)
                                                        (##values-length
                                                         _g53427_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g53428_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g53428_)))
                                           (let ((_%$%target5196052001%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g53427_ 0)))
                                                 (_%$%tl5196252004%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g53427_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%$%tl5196252004%_)
                                                 (letrec ((_%$%loop5196352007%_
                                                           (lambda (_%$%hd5196152011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%mod5196752014%_)
                     (if (gx#stx-pair? _%$%hd5196152011%_)
                         (let ((_%$%e5196452016%_
                                (gx#syntax-e _%$%hd5196152011%_)))
                           (let ((_%$%lp-hd5196552020%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e5196452016%_)))
                                 (_%$%lp-tl5196652023%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e5196452016%_))))
                             (_%$%loop5196352007%_
                              _%$%lp-tl5196652023%_
                              (cons _%$%lp-hd5196552020%_
                                    _%$%mod5196752014%_))))
                         (let ((_%$%mod5196852026%_
                                (reverse _%$%mod5196752014%_)))
                           (cons 'begin:
                                 (_%flatten51946%_
                                  (map (lambda (_%$%g5204952051%_)
                                         (_%expand-path51948%_
                                          _%$%hd5195851995%_
                                          _%$%g5204952051%_))
                                       (foldr (lambda (_%$%g5205452057%_
                                                       _%$%g5205552060%_)
                                                (cons _%$%g5205452057%_
                                                      _%$%g5205552060%_))
                                              '()
                                              _%$%mod5196852026%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%loop5196352007%_
                                                    _%$%target5196052001%_
                                                    '()))
                                                 (_%$%g5195051974%_
                                                  _%$%g5195151978%_)))))
                                       (_%$%g5195051974%_ _%$%g5195151978%_))))
                               (_%$%g5195051974%_ _%$%g5195151978%_))))
                       (_%$%g5195051974%_ _%$%g5195151978%_)))))
           (_%$%g5194952063%_ _%stx51943%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx52212%_)
       (let* ((_%$%g5221552239%_
               (lambda (_%$%g5221652235%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5221652235%_)))
              (_%$%g5221452365%_
               (lambda (_%$%g5221652243%_)
                 (if (gx#stx-pair? _%$%g5221652243%_)
                     (let ((_%$%e5221952246%_ (gx#syntax-e _%$%g5221652243%_)))
                       (let ((_%$%hd5222052250%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5221952246%_)))
                             (_%$%tl5222152253%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5221952246%_))))
                         (if (gx#stx-pair? _%$%tl5222152253%_)
                             (let ((_%$%e5222252256%_
                                    (gx#syntax-e _%$%tl5222152253%_)))
                               (let ((_%$%hd5222352260%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5222252256%_)))
                                     (_%$%tl5222452263%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5222252256%_))))
                                 (if (gx#stx-pair/null? _%$%tl5222452263%_)
                                     (let ((_g53429_
                                            (gx#syntax-split-splice
                                             _%$%tl5222452263%_
                                             '0)))
                                       (begin
                                         (let ((_g53430_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53429_)
                                                      (##values-length
                                                       _g53429_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53430_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53430_)))
                                         (let ((_%$%target5222552266%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53429_ 0)))
                                               (_%$%tl5222752269%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53429_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5222752269%_)
                                               (letrec ((_%$%loop5222852272%_
                                                         (lambda (_%$%hd5222652276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id5223252279%_)
                   (if (gx#stx-pair? _%$%hd5222652276%_)
                       (let ((_%$%e5222952281%_
                              (gx#syntax-e _%$%hd5222652276%_)))
                         (let ((_%$%lp-hd5223052285%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5222952281%_)))
                               (_%$%lp-tl5223152288%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5222952281%_))))
                           (_%$%loop5222852272%_
                            _%$%lp-tl5223152288%_
                            (cons _%$%lp-hd5223052285%_ _%$%id5223252279%_))))
                       (let ((_%$%id5223352291%_ (reverse _%$%id5223252279%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g5231352316%_
                                              _%$%g5231452319%_)
                                       (cons _%$%g5231352316%_
                                             _%$%g5231452319%_))
                                     '()
                                     _%$%id5223352291%_))
                             (let* ((_%keys52330%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g5232152324%_
                                                      _%$%g5232252327%_)
                                               (cons _%$%g5232152324%_
                                                     _%$%g5232252327%_))
                                             '()
                                             _%$%id5223352291%_)))
                                    (_%keytab52341%_
                                     (let ((_%ht52333%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g5233552337%_)
                                          (hash-put!
                                           _%ht52333%_
                                           _%$%g5233552337%_
                                           '#t))
                                        _%keys52330%_)
                                       _%ht52333%_))
                                    (_%exports52344%_
                                     (gx#core-expand-export-source
                                      _%$%hd5222352260%_))
                                    (_%fold-e52360%_
                                     (letrec ((_%fold-e52347%_
                                               (lambda (_%out52350%_
                                                        _%r52352%_)
                                                 (if (gx#module-export?
                                                      _%out52350%_)
                                                     (if (hash-get
                                                          _%keytab52341%_
                                                          (gx#module-export-name
                                                           _%out52350%_))
                                                         _%r52352%_
                                                         (cons _%out52350%_
                                                               _%r52352%_))
                                                     (if (gx#export-set?
                                                          _%out52350%_)
                                                         (foldl _%fold-e52347%_
                                                                _%r52352%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out52350%_))
                 _%r52352%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e52347%_)))
                               (cons 'begin:
                                     (foldl _%fold-e52360%_
                                            '()
                                            _%exports52344%_)))
                             (_%$%g5221552239%_ _%$%g5221652243%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5222852272%_
                                                  _%$%target5222552266%_
                                                  '()))
                                               (_%$%g5221552239%_
                                                _%$%g5221652243%_)))))
                                     (_%$%g5221552239%_ _%$%g5221652243%_))))
                             (_%$%g5221552239%_ _%$%g5221652243%_))))
                     (_%$%g5221552239%_ _%$%g5221652243%_)))))
         (_%$%g5221452365%_ _%stx52212%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx52370%_)
       (let* ((_%$%g5237352397%_
               (lambda (_%$%g5237452393%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5237452393%_)))
              (_%$%g5237252527%_
               (lambda (_%$%g5237452401%_)
                 (if (gx#stx-pair? _%$%g5237452401%_)
                     (let ((_%$%e5237752404%_ (gx#syntax-e _%$%g5237452401%_)))
                       (let ((_%$%hd5237852408%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5237752404%_)))
                             (_%$%tl5237952411%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5237752404%_))))
                         (if (gx#stx-pair? _%$%tl5237952411%_)
                             (let ((_%$%e5238052414%_
                                    (gx#syntax-e _%$%tl5237952411%_)))
                               (let ((_%$%hd5238152418%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5238052414%_)))
                                     (_%$%tl5238252421%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5238052414%_))))
                                 (if (gx#stx-pair/null? _%$%tl5238252421%_)
                                     (let ((_g53431_
                                            (gx#syntax-split-splice
                                             _%$%tl5238252421%_
                                             '0)))
                                       (begin
                                         (let ((_g53432_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53431_)
                                                      (##values-length
                                                       _g53431_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53432_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53432_)))
                                         (let ((_%$%target5238352424%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53431_ 0)))
                                               (_%$%tl5238552427%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53431_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5238552427%_)
                                               (letrec ((_%$%loop5238652430%_
                                                         (lambda (_%$%hd5238452434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%filter-out5239052437%_)
                   (if (gx#stx-pair? _%$%hd5238452434%_)
                       (let ((_%$%e5238752439%_
                              (gx#syntax-e _%$%hd5238452434%_)))
                         (let ((_%$%lp-hd5238852443%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5238752439%_)))
                               (_%$%lp-tl5238952446%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5238752439%_))))
                           (_%$%loop5238652430%_
                            _%$%lp-tl5238952446%_
                            (cons _%$%lp-hd5238852443%_
                                  _%$%filter-out5239052437%_))))
                       (let* ((_%$%filter-out5239152449%_
                               (reverse _%$%filter-out5239052437%_))
                              (_%filtered52472%_ (make-hash-table)))
                         (letrec ((_%fold-out52475%_
                                   (lambda (_%out52517%_ _%r52519%_)
                                     (if (gx#module-export? _%out52517%_)
                                         (cons _%out52517%_ _%r52519%_)
                                         (if (gx#export-set? _%out52517%_)
                                             (foldl _%fold-out52475%_
                                                    _%r52519%_
                                                    (gx#export-set-exports
                                                     _%out52517%_))
                                             _%r52519%_)))))
                           (for-each
                            (lambda (_%src52478%_)
                              (let* ((_%exports52484%_
                                      (if (gx#identifier? _%src52478%_)
                                          (let ((_%mod52481%_
                                                 (gx#syntax-local-value
                                                  _%src52478%_)))
                                            (if (gx#module-context?
                                                 _%mod52481%_)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"not a module context"
                                                 _%src52478%_))
                                            (gx#module-context-export
                                             _%mod52481%_))
                                          (gx#core-expand-export-source
                                           _%src52478%_)))
                                     (_%exports52487%_
                                      (foldl _%fold-out52475%_
                                             '()
                                             _%exports52484%_)))
                                (for-each
                                 (lambda (_%out52492%_)
                                   (hash-put!
                                    _%filtered52472%_
                                    (gx#module-export-name _%out52492%_)
                                    '#t))
                                 _%exports52487%_)))
                            (foldr (lambda (_%$%g5249452497%_
                                            _%$%g5249552500%_)
                                     (cons _%$%g5249452497%_
                                           _%$%g5249552500%_))
                                   '()
                                   _%$%filter-out5239152449%_))
                           (let* ((_%exports52503%_
                                   (gx#core-expand-export-source
                                    _%$%hd5238152418%_))
                                  (_%exports52506%_
                                   (foldl _%fold-out52475%_
                                          '()
                                          _%exports52503%_))
                                  (_%exports52512%_
                                   (filter (lambda (_%out52509%_)
                                             (not (hash-get
                                                   _%filtered52472%_
                                                   (gx#module-export-name
                                                    _%out52509%_))))
                                           _%exports52506%_)))
                             (cons 'begin: _%exports52512%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5238652430%_
                                                  _%$%target5238352424%_
                                                  '()))
                                               (_%$%g5237352397%_
                                                _%$%g5237452401%_)))))
                                     (_%$%g5237352397%_ _%$%g5237452401%_))))
                             (_%$%g5237352397%_ _%$%g5237452401%_))))
                     (_%$%g5237352397%_ _%$%g5237452401%_)))))
         (_%$%g5237252527%_ _%stx52370%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out52532%_ _%rename52534%_)
      (gx#make-module-export
       (gx#module-export-context _%out52532%_)
       (gx#module-export-key _%out52532%_)
       (gx#module-export-phi _%out52532%_)
       _%rename52534%_
       (gx#module-export-weak? _%out52532%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx52536%_)
       (let* ((_%$%g5253952572%_
               (lambda (_%$%g5254052568%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5254052568%_)))
              (_%$%g5253852763%_
               (lambda (_%$%g5254052576%_)
                 (if (gx#stx-pair? _%$%g5254052576%_)
                     (let ((_%$%e5254452579%_ (gx#syntax-e _%$%g5254052576%_)))
                       (let ((_%$%hd5254552583%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5254452579%_)))
                             (_%$%tl5254652586%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5254452579%_))))
                         (if (gx#stx-pair? _%$%tl5254652586%_)
                             (let ((_%$%e5254752589%_
                                    (gx#syntax-e _%$%tl5254652586%_)))
                               (let ((_%$%hd5254852593%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5254752589%_)))
                                     (_%$%tl5254952596%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5254752589%_))))
                                 (if (gx#stx-pair/null? _%$%tl5254952596%_)
                                     (let ((_g53433_
                                            (gx#syntax-split-splice
                                             _%$%tl5254952596%_
                                             '0)))
                                       (begin
                                         (let ((_g53434_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53433_)
                                                      (##values-length
                                                       _g53433_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53434_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53434_)))
                                         (let ((_%$%target5255052599%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53433_ 0)))
                                               (_%$%tl5255252602%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53433_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5255252602%_)
                                               (letrec ((_%$%loop5255352605%_
                                                         (lambda (_%$%hd5255152609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%new-id5255752612%_
                          _%$%id5255852613%_)
                   (if (gx#stx-pair? _%$%hd5255152609%_)
                       (let ((_%$%e5255452615%_
                              (gx#syntax-e _%$%hd5255152609%_)))
                         (let ((_%$%lp-hd5255552619%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5255452615%_)))
                               (_%$%lp-tl5255652622%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5255452615%_))))
                           (if (gx#stx-pair? _%$%lp-hd5255552619%_)
                               (let ((_%$%e5256152625%_
                                      (gx#syntax-e _%$%lp-hd5255552619%_)))
                                 (let ((_%$%hd5256252629%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e5256152625%_)))
                                       (_%$%tl5256352632%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e5256152625%_))))
                                   (if (gx#stx-pair? _%$%tl5256352632%_)
                                       (let ((_%$%e5256452635%_
                                              (gx#syntax-e
                                               _%$%tl5256352632%_)))
                                         (let ((_%$%hd5256552639%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5256452635%_)))
                                               (_%$%tl5256652642%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5256452635%_))))
                                           (if (gx#stx-null?
                                                _%$%tl5256652642%_)
                                               (_%$%loop5255352605%_
                                                _%$%lp-tl5255652622%_
                                                (cons _%$%hd5256552639%_
                                                      _%$%new-id5255752612%_)
                                                (cons _%$%hd5256252629%_
                                                      _%$%id5255852613%_))
                                               (_%$%g5253952572%_
                                                _%$%g5254052576%_))))
                                       (_%$%g5253952572%_ _%$%g5254052576%_))))
                               (_%$%g5253952572%_ _%$%g5254052576%_))))
                       (let ((_%$%new-id5255952645%_
                              (reverse _%$%new-id5255752612%_))
                             (_%$%id5256052647%_ (reverse _%$%id5255852613%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%$%g5267052673%_
                                                   _%$%g5267152676%_)
                                            (cons _%$%g5267052673%_
                                                  _%$%g5267152676%_))
                                          '()
                                          _%$%id5256052647%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%$%g5267852681%_
                                                   _%$%g5267952684%_)
                                            (cons _%$%g5267852681%_
                                                  _%$%g5267952684%_))
                                          '()
                                          _%$%new-id5255952645%_)))
                             (let* ((_%keytab52687%_ (make-hash-table))
                                    (_%found52690%_ (make-hash-table))
                                    (_%_52713%_
                                     (for-each
                                      (lambda (_%id52693%_ _%new-id52695%_)
                                        (hash-put!
                                         _%keytab52687%_
                                         (gx#core-identifier-key _%id52693%_)
                                         (gx#core-identifier-key
                                          _%new-id52695%_)))
                                      (foldr (lambda (_%$%g5269652699%_
                                                      _%$%g5269752702%_)
                                               (cons _%$%g5269652699%_
                                                     _%$%g5269752702%_))
                                             '()
                                             _%$%id5256052647%_)
                                      (foldr (lambda (_%$%g5270452707%_
                                                      _%$%g5270552710%_)
                                               (cons _%$%g5270452707%_
                                                     _%$%g5270552710%_))
                                             '()
                                             _%$%new-id5255952645%_)))
                                    (_%exports52716%_
                                     (gx#core-expand-export-source
                                      _%$%hd5254852593%_))
                                    (_%fold-e52744%_
                                     (letrec ((_%fold-e52719%_
                                               (lambda (_%out52722%_
                                                        _%r52724%_)
                                                 (if (gx#module-export?
                                                      _%out52722%_)
                                                     (let* ((_%name52728%_
                                                             (gx#module-export-name
                                                              _%out52722%_))
                                                            (_%$e52731%_
                                                             (hash-get
                                                              _%keytab52687%_
                                                              _%name52728%_)))
                                                       (if _%$e52731%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found52690%_
                                                              _%name52728%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-export-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%out52722%_
                            _%$e52731%_)
                           _%r52724%_))
                   (cons _%out52722%_ _%r52724%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#export-set?
                                                          _%out52722%_)
                                                         (foldl _%fold-e52719%_
                                                                _%r52724%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out52722%_))
                 (cons _%out52722%_ _%r52724%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e52719%_))
                                    (_%new-exports52747%_
                                     (foldl _%fold-e52744%_
                                            '()
                                            _%exports52716%_)))
                               (for-each
                                (lambda (_%id52752%_)
                                  (if (hash-get
                                       _%found52690%_
                                       (gx#core-identifier-key _%id52752%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the export set"
                                       _%stx52536%_
                                       _%id52752%_)))
                                (foldr (lambda (_%$%g5275452757%_
                                                _%$%g5275552760%_)
                                         (cons _%$%g5275452757%_
                                               _%$%g5275552760%_))
                                       '()
                                       _%$%id5256052647%_))
                               (cons 'begin: _%new-exports52747%_))
                             (_%$%g5253952572%_ _%$%g5254052576%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5255352605%_
                                                  _%$%target5255052599%_
                                                  '()
                                                  '()))
                                               (_%$%g5253952572%_
                                                _%$%g5254052576%_)))))
                                     (_%$%g5253952572%_ _%$%g5254052576%_))))
                             (_%$%g5253952572%_ _%$%g5254052576%_))))
                     (_%$%g5253952572%_ _%$%g5254052576%_)))))
         (_%$%g5253852763%_ _%stx52536%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx52768%_)
       (let* ((_%$%g5277152789%_
               (lambda (_%$%g5277252785%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5277252785%_)))
              (_%$%g5277052874%_
               (lambda (_%$%g5277252793%_)
                 (if (gx#stx-pair? _%$%g5277252793%_)
                     (let ((_%$%e5277552796%_ (gx#syntax-e _%$%g5277252793%_)))
                       (let ((_%$%hd5277652800%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5277552796%_)))
                             (_%$%tl5277752803%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5277552796%_))))
                         (if (gx#stx-pair? _%$%tl5277752803%_)
                             (let ((_%$%e5277852806%_
                                    (gx#syntax-e _%$%tl5277752803%_)))
                               (let ((_%$%hd5277952810%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5277852806%_)))
                                     (_%$%tl5278052813%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5277852806%_))))
                                 (if (gx#stx-pair? _%$%tl5278052813%_)
                                     (let ((_%$%e5278152816%_
                                            (gx#syntax-e _%$%tl5278052813%_)))
                                       (let ((_%$%hd5278252820%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e5278152816%_)))
                                             (_%$%tl5278352823%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e5278152816%_))))
                                         (if (gx#stx-null? _%$%tl5278352823%_)
                                             (if (gx#identifier?
                                                  _%$%hd5278252820%_)
                                                 (let* ((_%pre52844%_
                                                         (gx#stx-e
                                                          _%$%hd5278252820%_))
                                                        (_%exports52847%_
                                                         (gx#core-expand-export-source
                                                          _%$%hd5277952810%_))
                                                        (_%rename-e52853%_
                                                         (lambda (_%name52850%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name52850%_
                                                            _%pre52844%_)))
                                                        (_%fold-e52869%_
                                                         (letrec ((_%fold-e52856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%out52859%_ _%r52861%_)
                             (if (gx#module-export? _%out52859%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                        _%out52859%_
                                        (_%rename-e52853%_
                                         (gx#module-export-name _%out52859%_)))
                                       _%r52861%_)
                                 (if (gx#export-set? _%out52859%_)
                                     (foldl _%fold-e52856%_
                                            _%r52861%_
                                            (gx#export-set-exports
                                             _%out52859%_))
                                     (cons _%out52859%_ _%r52861%_))))))
                   _%fold-e52856%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e52869%_
                                                                '()
                                                                _%exports52847%_)))
                                                 (_%$%g5277152789%_
                                                  _%$%g5277252793%_))
                                             (_%$%g5277152789%_
                                              _%$%g5277252793%_))))
                                     (_%$%g5277152789%_ _%$%g5277252793%_))))
                             (_%$%g5277152789%_ _%$%g5277252793%_))))
                     (_%$%g5277152789%_ _%$%g5277252793%_)))))
         (_%$%g5277052874%_ _%stx52768%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx52878%_)
       (letrec ((_%identifiers52881%_
                 (lambda (_%id53109%_ _%unchecked?53111%_)
                   (let ((_%info53113%_
                          (gx#syntax-local-value _%id53109%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info53113%_))
                         (cons _%id53109%_
                               (cons (let ((__obj53410 _%info53113%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj53410
                                              'gerbil/core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj53410
                                              '4
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj53410
                                            'type-descriptor)))
                                     (let ((__tmp53442
                                            (let ((_%ctor53116%_
                                                   (let ((__obj53411
                                                          _%info53113%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj53411
                                                            'gerbil/core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj53411
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj53411
                                                          'constructor)))))
                                              (if _%ctor53116%_
                                                  (cons _%ctor53116%_ '())
                                                  '())))
                                           (__tmp53435
                                            (cons (let ((__obj53412
                                                         _%info53113%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj53412
                                                           'gerbil/core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj53412
                                                           '15
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj53412
                                                         'predicate)))
                                                  (let ((__tmp53441
                                                         (map cdr
                                                              (let ((__obj53413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%info53113%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj53413
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj53413
                               '16
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj53413 'accessors)))))
                (__tmp53436
                 (let ((__tmp53440
                        (map cdr
                             (let ((__obj53414 _%info53113%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj53414
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj53414
                                      '17
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj53414
                                    'mutators)))))
                       (__tmp53437
                        (if _%unchecked?53111%_
                            (let ((__tmp53439
                                   (map cdr
                                        (let ((__obj53415 _%info53113%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj53415
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj53415
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj53415
                                               'unchecked-accessors)))))
                                  (__tmp53438
                                   (map cdr
                                        (let ((__obj53416 _%info53113%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj53416
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj53416
                                                 '19
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj53416
                                               'unchecked-mutators))))))
                              (declare (not safe))
                              (##append __tmp53439 __tmp53438))
                            '())))
                   (declare (not safe))
                   (##append __tmp53440 __tmp53437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##append
                                                     __tmp53441
                                                     __tmp53436)))))
                                       (declare (not safe))
                                       (##append __tmp53442 __tmp53435))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx52878%_
                          _%id53109%_))))))
         (let* ((_%__stx5335153352%_ _%stx52878%_)
                (_%$%g5288552926%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx5335153352%_))))
           (let ((_%__kont5335453355%_
                  (lambda (_%$%g5288753070%_ _%$%g5288853072%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%$%g5309153093%_)
                              (_%identifiers52881%_
                               _%$%g5309153093%_
                               (gx#stx-e _%$%g5288853072%_)))
                            (foldr (lambda (_%$%g5309653099%_
                                            _%$%g5309753102%_)
                                     (cons _%$%g5309653099%_
                                           _%$%g5309753102%_))
                                   '()
                                   _%$%g5288753070%_))))))
                 (_%__kont5335853359%_
                  (lambda (_%$%g5290852971%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%$%g5298752989%_)
                              (_%identifiers52881%_ _%$%g5298752989%_ '#f))
                            (foldr (lambda (_%$%g5299252995%_
                                            _%$%g5299352998%_)
                                     (cons _%$%g5299252995%_
                                           _%$%g5299352998%_))
                                   '()
                                   _%$%g5290852971%_)))))))
             (let* ((_%__match5340853409%_
                     (lambda (_%$%e5290952933%_
                              _%$%hd5291052937%_
                              _%$%tl5291152940%_
                              _%__splice5336053361%_
                              _%$%target5291252943%_
                              _%$%tl5291452946%_)
                       (letrec ((_%$%loop5291552949%_
                                 (lambda (_%$%hd5291352953%_
                                          _%$%id5291952956%_)
                                   (if (gx#stx-pair? _%$%hd5291352953%_)
                                       (let ((_%$%e5291652958%_
                                              (gx#syntax-e
                                               _%$%hd5291352953%_)))
                                         (let ((_%$%lp-tl5291852965%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5291652958%_)))
                                               (_%$%lp-hd5291752962%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5291652958%_))))
                                           (_%$%loop5291552949%_
                                            _%$%lp-tl5291852965%_
                                            (cons _%$%lp-hd5291752962%_
                                                  _%$%id5291952956%_))))
                                       (let ((_%$%id5292052968%_
                                              (reverse _%$%id5291952956%_)))
                                         (_%__kont5335853359%_
                                          _%$%id5292052968%_))))))
                         (_%$%loop5291552949%_ _%$%target5291252943%_ '()))))
                    (_%__match5339453395%_
                     (lambda (_%$%e5288953008%_
                              _%$%hd5289053012%_
                              _%$%tl5289153015%_
                              _%$%e5289253018%_
                              _%$%hd5289353022%_
                              _%$%tl5289453025%_
                              _%$%e5289553028%_
                              _%$%e5289653032%_
                              _%$%hd5289753036%_
                              _%$%tl5289853039%_
                              _%__splice5335653357%_
                              _%$%target5289953042%_
                              _%$%tl5290153045%_)
                       (letrec ((_%$%loop5290253048%_
                                 (lambda (_%$%hd5290053052%_
                                          _%$%id5290653055%_)
                                   (if (gx#stx-pair? _%$%hd5290053052%_)
                                       (let ((_%$%e5290353057%_
                                              (gx#syntax-e
                                               _%$%hd5290053052%_)))
                                         (let ((_%$%lp-tl5290553064%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5290353057%_)))
                                               (_%$%lp-hd5290453061%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5290353057%_))))
                                           (_%$%loop5290253048%_
                                            _%$%lp-tl5290553064%_
                                            (cons _%$%lp-hd5290453061%_
                                                  _%$%id5290653055%_))))
                                       (let ((_%$%id5290753067%_
                                              (reverse _%$%id5290653055%_)))
                                         (_%__kont5335453355%_
                                          _%$%id5290753067%_
                                          _%$%hd5289753036%_))))))
                         (_%$%loop5290253048%_ _%$%target5289953042%_ '())))))
               (if (gx#stx-pair? _%__stx5335153352%_)
                   (let ((_%$%e5288953008%_ (gx#syntax-e _%__stx5335153352%_)))
                     (let ((_%$%tl5289153015%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e5288953008%_)))
                           (_%$%hd5289053012%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e5288953008%_))))
                       (if (gx#stx-pair? _%$%tl5289153015%_)
                           (let ((_%$%e5289253018%_
                                  (gx#syntax-e _%$%tl5289153015%_)))
                             (let ((_%$%tl5289453025%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e5289253018%_)))
                                   (_%$%hd5289353022%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e5289253018%_))))
                               (if (gx#stx-datum? _%$%hd5289353022%_)
                                   (let ((_%$%e5289553028%_
                                          (gx#stx-e _%$%hd5289353022%_)))
                                     (if (equal? _%$%e5289553028%_ 'unchecked:)
                                         (if (gx#stx-pair? _%$%tl5289453025%_)
                                             (let ((_%$%e5289653032%_
                                                    (gx#syntax-e
                                                     _%$%tl5289453025%_)))
                                               (let ((_%$%tl5289853039%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e5289653032%_)))
                                                     (_%$%hd5289753036%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e5289653032%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl5289853039%_)
                                                     (let ((_%__splice5335653357%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl5289853039%_
                                                             '0)))
                                                       (let ((_%$%tl5290153045%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice5335653357%_ '1)))
                     (_%$%target5289953042%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice5335653357%_ '0))))
                 (if (gx#stx-null? _%$%tl5290153045%_)
                     (_%__match5339453395%_
                      _%$%e5288953008%_
                      _%$%hd5289053012%_
                      _%$%tl5289153015%_
                      _%$%e5289253018%_
                      _%$%hd5289353022%_
                      _%$%tl5289453025%_
                      _%$%e5289553028%_
                      _%$%e5289653032%_
                      _%$%hd5289753036%_
                      _%$%tl5289853039%_
                      _%__splice5335653357%_
                      _%$%target5289953042%_
                      _%$%tl5290153045%_)
                     (if (gx#stx-pair/null? _%$%tl5289153015%_)
                         (let ((_%__splice5336053361%_
                                (gx#syntax-split-splice->vector
                                 _%$%tl5289153015%_
                                 '0)))
                           (let ((_%$%tl5291452946%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice5336053361%_ '1)))
                                 (_%$%target5291252943%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice5336053361%_ '0))))
                             (if (gx#stx-null? _%$%tl5291452946%_)
                                 (_%__match5340853409%_
                                  _%$%e5288953008%_
                                  _%$%hd5289053012%_
                                  _%$%tl5289153015%_
                                  _%__splice5336053361%_
                                  _%$%target5291252943%_
                                  _%$%tl5291452946%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%$%g5288552926%_)))))
                         (let () (declare (not safe)) (_%$%g5288552926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl5289153015%_)
                                                         (let ((_%__splice5336053361%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl5289153015%_
                         '0)))
                   (let ((_%$%tl5291452946%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice5336053361%_ '1)))
                         (_%$%target5291252943%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice5336053361%_ '0))))
                     (if (gx#stx-null? _%$%tl5291452946%_)
                         (_%__match5340853409%_
                          _%$%e5288953008%_
                          _%$%hd5289053012%_
                          _%$%tl5289153015%_
                          _%__splice5336053361%_
                          _%$%target5291252943%_
                          _%$%tl5291452946%_)
                         (let () (declare (not safe)) (_%$%g5288552926%_)))))
                 (let () (declare (not safe)) (_%$%g5288552926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%$%tl5289153015%_)
                                                 (let ((_%__splice5336053361%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl5289153015%_
                                                         '0)))
                                                   (let ((_%$%tl5291452946%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5336053361%_
                                                             '1)))
                                                         (_%$%target5291252943%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5336053361%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl5291452946%_)
                                                         (_%__match5340853409%_
                                                          _%$%e5288953008%_
                                                          _%$%hd5289053012%_
                                                          _%$%tl5289153015%_
                                                          _%__splice5336053361%_
                                                          _%$%target5291252943%_
                                                          _%$%tl5291452946%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%$%g5288552926%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%$%g5288552926%_))))
                                         (if (gx#stx-pair/null?
                                              _%$%tl5289153015%_)
                                             (let ((_%__splice5336053361%_
                                                    (gx#syntax-split-splice->vector
                                                     _%$%tl5289153015%_
                                                     '0)))
                                               (let ((_%$%tl5291452946%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5336053361%_
                                                         '1)))
                                                     (_%$%target5291252943%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5336053361%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%$%tl5291452946%_)
                                                     (_%__match5340853409%_
                                                      _%$%e5288953008%_
                                                      _%$%hd5289053012%_
                                                      _%$%tl5289153015%_
                                                      _%__splice5336053361%_
                                                      _%$%target5291252943%_
                                                      _%$%tl5291452946%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g5288552926%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g5288552926%_)))))
                                   (if (gx#stx-pair/null? _%$%tl5289153015%_)
                                       (let ((_%__splice5336053361%_
                                              (gx#syntax-split-splice->vector
                                               _%$%tl5289153015%_
                                               '0)))
                                         (let ((_%$%tl5291452946%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5336053361%_
                                                   '1)))
                                               (_%$%target5291252943%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5336053361%_
                                                   '0))))
                                           (if (gx#stx-null?
                                                _%$%tl5291452946%_)
                                               (_%__match5340853409%_
                                                _%$%e5288953008%_
                                                _%$%hd5289053012%_
                                                _%$%tl5289153015%_
                                                _%__splice5336053361%_
                                                _%$%target5291252943%_
                                                _%$%tl5291452946%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g5288552926%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g5288552926%_))))))
                           (if (gx#stx-pair/null? _%$%tl5289153015%_)
                               (let ((_%__splice5336053361%_
                                      (gx#syntax-split-splice->vector
                                       _%$%tl5289153015%_
                                       '0)))
                                 (let ((_%$%tl5291452946%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5336053361%_
                                           '1)))
                                       (_%$%target5291252943%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5336053361%_
                                           '0))))
                                   (if (gx#stx-null? _%$%tl5291452946%_)
                                       (_%__match5340853409%_
                                        _%$%e5288953008%_
                                        _%$%hd5289053012%_
                                        _%$%tl5289153015%_
                                        _%__splice5336053361%_
                                        _%$%target5291252943%_
                                        _%$%tl5291452946%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g5288552926%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g5288552926%_))))))
                   (let () (declare (not safe)) (_%$%g5288552926%_)))))))))))

;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; Instance syntax — concise method definitions for classes and interfaces.

(export instance
        definstance-method)

(defsyntax (definstance-method stx)
  (def (generate interface self klass method rebind)
    (syntax-case method ()
      (((method-id . args) body body-rest ...)
       (identifier? #'method-id)
       (with-syntax ((self self)
                     (klass klass)
                     (rebind rebind))
         (syntax-case interface ()
           ((interface-object Interface)
            (and (identifier? #'interface-object)
                 (syntax-local-interface-info? #'Interface))
            #'(defmethod {method-id klass}
                (lambda (self . args)
                  (using (interface-object self : Interface)
                    body body-rest ...))
                interface: Interface
                rebind: rebind))
           (Interface
            (syntax-local-interface-info? #'Interface)
            #'(defmethod {method-id klass}
                (lambda (self . args)
                  body body-rest ...)
                interface: Interface
                rebind: rebind))
           (bad-interface
            (raise-syntax-error
             #f "bad syntax; expected an interface or interface binding"
             stx #'bad-interface)))))
      (bad-method
       (raise-syntax-error
        #f "bad syntax; expected ((method . args) body ...)"
        stx #'bad-method))))

  (def (generate-for-class interface klass method rebind)
    (syntax-case klass ()
      ((self-id class-id)
       (and (identifier? #'self-id)
            (syntax-local-class-type-info? #'class-id))
       (generate interface #'self-id #'class-id method rebind))
      (class-id
       (syntax-local-class-type-info? #'class-id)
       (generate interface (genident 'self) #'class-id method rebind))
      (bad-class
       (raise-syntax-error
        #f "bad syntax; expected a class or (self class)"
        stx #'bad-class))))

  (syntax-case stx ()
    ((_ interface klass method rebind: rebind)
     (stx-boolean? #'rebind)
     (generate-for-class #'interface #'klass #'method #'rebind))
    ((_ interface klass method rebind: rebind)
     (raise-syntax-error
      #f "bad syntax; rebind: expects a boolean"
      stx #'rebind))
    ((_ interface klass method)
     (generate-for-class #'interface #'klass #'method #'#f))
    (_
     (raise-syntax-error #f "bad syntax" stx))))

(defsyntax (instance stx)
  (def (generate interface klass methods rebind)
    (with-syntax ((interface interface)
                  (klass klass)
                  ((method ...) methods)
                  (rebind rebind))
      #'(begin
          (definstance-method interface klass method rebind: rebind)
          ...)))

  (syntax-case stx ()
    ((_ interface klass method ... rebind: rebind)
     (stx-boolean? #'rebind)
     (generate #'interface #'klass #'(method ...) #'rebind))
    ((_ interface klass method ... rebind: rebind)
     (raise-syntax-error
      #f "bad syntax; rebind: expects a boolean"
      stx #'rebind))
    ((_ interface klass method ...)
     (generate #'interface #'klass #'(method ...) #'#f))
    (_
     (raise-syntax-error #f "bad syntax" stx))))

(import :std/misc/process)
(match (cddr (command-line))
  ([root count]
   (def remote "qualification.invalid/catalog")
   (def (at name) (path-expand name root))
   (def (write-source name contents)
     (call-with-output-file (at name) (cut display contents <>)))
   (def (git . args)
     (run-process (cons "git" args) stdout-redirection: #f))
   (for-each (lambda (name) (create-directory* (at name)))
             '("producer" "consumer" "remotes"))
   (write-source "producer/gerbil.pkg" "(package: issue-catalog)\n")
   (write-source "producer/build.ss"
     "#!/usr/bin/env gxi\n(import :std/build-script)\n(defbuild-script '())\n")
   (run-process ["chmod" "+x" (at "producer/build.ss")])
   (do ((i 0 (1+ i))) ((= i (string->number count)))
     (def directory (string-append "producer/modules/owner-" (number->string i)))
     (create-directory* (at directory))
     (write-source (string-append directory "/interface.ss")
       "(export ScopeContract Scope.)\n(def ScopeContract 'scope-contract)\n(def Scope. 'scope)\n"))
   (git "-C" (at "producer") "init" "-q")
   (git "-C" (at "producer") "add" ".")
   (git "-C" (at "producer") "-c" "user.name=Gerbil fixture"
        "-c" "user.email=fixture@invalid.example" "commit" "-qm" "Index fixture")
   (git "-C" (at "producer") "tag" "v0.1.0")
   (git "clone" "-q" "--bare" (at "producer") (at "remotes/catalog.git"))
   (write-source "gitconfig"
     (string-append "[url \"file://" (at "remotes") "/\"]\n"
                    "  insteadOf = https://qualification.invalid/\n"
                    "  insteadOf = git@qualification.invalid:\n"))
   (write-source "consumer/gerbil.pkg"
     (string-append "(package: issue-consumer depend: (\"" remote "@v0.1.0\"))\n")))
  (else (error "usage: package-fixture.ss ROOT COUNT")))

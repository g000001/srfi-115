;;;; srfi-115.asd -*- Mode: Lisp;-*- 

(cl:in-package :asdf)


(defsystem :srfi-115
  :version "20200303"
  :description "SRFI 115 for CL: Scheme Regular Expressions"
  :long-description "SRFI 115 for CL: Scheme Regular Expressions
https://srfi.schemers.org/srfi-115"
  :author "Alex Shinn"
  :maintainer "CHIBA Masaomi"
  :serial t
  :depends-on (srfi-172
               srfi-9
               srfi-46
               srfi-69
               srfi-13
               srfi-14
               srfi-60
               srfi-64
               srfi-1
               srfi-4
               r6rs-reader)
  :components ((:file "package")
               (:file "readtable")
               (:file "utils")
               (:file "boundary")
               (:file "srfi-115")
               (:file "test")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-115))))
  (let ((name "https://github.com/g000001/srfi-115")
        (nickname :srfi-115))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


(defmethod perform ((o test-op) (c (eql (find-system :srfi-115))))
  (let ((*package*
         (find-package
          "https://github.com/g000001/srfi-115#internals")))
    (eval
     (read-from-string "
                (or (run-tests) 
                    (error \"test-op failed\"))"))))

;;; *EOF*

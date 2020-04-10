(cl:in-package "https://github.com/g000001/srfi-115#internals")


(define-syntax eval-always
  (syntax-rules * ()
    ((eval-always body *)
     (cl:eval-when (:compile-toplevel :load-toplevel :execute)
       body *))))


(eval-always
  (let ((cl:*readtable* (cl:copy-readtable srfi-172-syntax)))
    (cl:set-macro-character #\" #'r6rs-reader:read-r6rs-string)
    (cl:defconstant srfi-115-syntax cl:*readtable*)))


(define-syntax in-syntax
  (syntax-rules * ()
    ((in-syntax readtable)
     (eval-always
       (cl:setq cl:*readtable* readtable)))))


;;; *EOF*



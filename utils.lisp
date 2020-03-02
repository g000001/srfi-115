(cl:in-package "https://github.com/g000001/srfi-115#internals")


(define immutable-char-set #'values)


(begin
  (cl:define-symbol-macro %char-set$letter
      (char-set-intersection char-set$ascii char-set$letter))
  (cl:define-symbol-macro %char-set$lower-case
      (char-set-intersection char-set$ascii char-set$lower-case))
  (cl:define-symbol-macro %char-set$upper-case
    (char-set-intersection char-set$ascii char-set$upper-case))
  (cl:define-symbol-macro %char-set$digit
    (char-set-intersection char-set$ascii char-set$digit))
  (cl:define-symbol-macro %char-set$letter+digit
    (char-set-intersection char-set$ascii char-set$letter+digit))
  (cl:define-symbol-macro %char-set$punctuation
    (char-set-intersection char-set$ascii char-set$punctuation))
  (cl:define-symbol-macro %char-set$symbol
    (char-set-intersection char-set$ascii char-set$symbol))
  (cl:define-symbol-macro %char-set$graphic
    (char-set-intersection char-set$ascii char-set$graphic))
  (cl:define-symbol-macro %char-set$whitespace
    (char-set-intersection char-set$ascii char-set$whitespace))
  (cl:define-symbol-macro %char-set$printing
    (char-set-intersection char-set$ascii char-set$printing))
  (cl:define-symbol-macro %char-set$iso-control
    (char-set-intersection char-set$ascii char-set$iso-control)))


(begin
  (define (string-start-arg s o)
    (if (pair? o) (string-index->cursor s (car o)) 0))
  (define (string-end-arg s o)
    (if (pair? o) (string-index->cursor s (car o)) (string-length s)))
  (define string-cursor? #'integer?)
  (define string-cursor=? #'=)
  (define string-cursor<? #'<)
  (define string-cursor<=? #'<=)
  (define string-cursor>? #'>)
  (define string-cursor>=? #'>=)
  (define string-cursor-ref #'string-ref)
  (define (string-cursor-next s i) s (+ i 1))
  (define (string-cursor-prev s i) s (- i 1))
  (define substring-cursor #'substring)
  (define (string-cursor->index str off) str off)
  (define (string-index->cursor str i) str i)
  )


;;; *EOF*

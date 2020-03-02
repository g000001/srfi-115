;;;; package.lisp -*- Mode: Lisp;-*- 

(cl:in-package :cl-user)


(defpackage "https://github.com/g000001/srfi-115"
  (:use)
  (:export
   regexp regexp? valid-sre? rx regexp->sre char-set->sre
   regexp-matches regexp-matches? regexp-search
   regexp-replace regexp-replace-all regexp-match->list
   regexp-fold regexp-extract regexp-split regexp-partition
   regexp-match? regexp-match-count
   regexp-match-submatch
   regexp-match-submatch-start regexp-match-submatch-end)
  (:export epsilon bos eos bol eol bow eow nwb bog eog grapheme word
   seq or ?  * + = >= ** -> $ ~ word word+ w/case w/nocase w/unicode
   w/ascii w/nocapture)
  (:shadowing-import-from
   "https://github.com/g000001/srfi-172"
   = or >= * +))
 

(cl:defpackage "https://github.com/g000001/srfi-115#internals" 
  (:use
   "https://github.com/g000001/srfi-115"
   "https://github.com/g000001/srfi-172"
   "https://github.com/g000001/srfi-9"
   "https://github.com/g000001/srfi-46"
   "https://github.com/g000001/srfi-14"
   "https://github.com/g000001/srfi-13"
   "https://github.com/g000001/srfi-69"
   srfi-60
   )
  (:shadowing-import-from rnrs define)
  (:shadowing-import-from
   "https://github.com/g000001/srfi-61"
   =>)
  (:shadowing-import-from 
   "https://github.com/g000001/srfi-1"
   every any)
  (:shadowing-import-from 
   "https://github.com/g000001/srfi-172"
   string-hash))


;;; *EOF*

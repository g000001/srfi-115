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
   w/ascii w/nocapture ! num)
  (:export 
   * zero-or-more + one-or-more ?  optional = exactly >= at-least **
   repeated \| or $ seq $ submatch -> submatch-named w/case w/nocase
   w/unicode w/ascii w/nocapture bos eos bol eol bog eog grapheme bow eow
   nwb word word+ ??  non-greedy-optional *?  non-greedy-zero-or-more **?
   non-greedy-repeated look-ahead look-behind neg-look-ahead
   neg-look-behind backref)
  (:export 
   char-set / char-range or \| and & - ~ complement w/case w/nocase
   w/ascii w/unicode any nonl ascii lower-case lower upper-case upper
   title-case title alphabetic alpha alphanumeric alphanum alnum numeric
   num punctuation punct symbol graphic graph whitespace white space
   printing print control cntrl hex-digit xdigit)
  (:shadowing-import-from
   "https://github.com/g000001/srfi-172"
   = or >= * +)
  (:shadowing-import-from rnrs and - /)
  (:shadowing-import-from
   "https://github.com/g000001/srfi-14"
   char-set))


(defpackage "https://github.com/g000001/srfi-115#internals" 
  (:use
   "https://github.com/g000001/srfi-115"
   "https://github.com/g000001/srfi-172"
   "https://github.com/g000001/srfi-9"
   "https://github.com/g000001/srfi-46"
   "https://github.com/g000001/srfi-14"
   "https://github.com/g000001/srfi-13"
   "https://github.com/g000001/srfi-69"
   "https://github.com/g000001/srfi-60"
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
   string-hash)
  (:shadowing-import-from 
   "https://github.com/g000001/srfi-64"
   test-begin
   test-end
   test-equal
   test-runner-current
   test-runner-create)
  (:shadowing-import-from 
   "https://github.com/g000001/srfi-4"
   u8vector))


;;; *EOF*





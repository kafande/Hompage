#!r6rs ;; Copyright notices may be found in "%3a152/strings.sls"
;; This file was written by Akku.scm
(library (srfi srfi-152)
  (export string? string-null? string-every string-any
   make-string string string-tabulate string-unfold
   string-unfold-right string->vector string->list
   vector->string list->string reverse-list->string
   string-length string-ref substring string-copy string-take
   string-take-right string-drop string-drop-right string-pad
   string-pad-right string-trim string-trim-right
   string-trim-both string-replace string=? string-ci=?
   string<? string-ci<? string>? string-ci>? string<=?
   string-ci<=? string>=? string-ci>=? string-prefix-length
   string-suffix-length string-prefix? string-suffix?
   string-index string-index-right string-skip
   string-skip-right string-contains string-contains-right
   string-take-while string-take-while-right string-drop-while
   string-drop-while-right string-break string-span
   string-append string-concatenate string-concatenate-reverse
   string-join string-fold string-fold-right string-map
   string-for-each string-count string-filter string-remove
   string-replicate string-segment string-split read-string
   write-string string-set! string-fill! string-copy!)
  (import
    (rename
      (except (rnrs) string->list string-for-each string-copy
        error)
      (string=? base-string=?) (string<? base-string<?)
      (string>? base-string>?) (string<=? base-string<=?)
      (string>=? base-string>=?) (string-ci=? base-string-ci=?)
      (string-ci<? base-string-ci<?)
      (string-ci>? base-string-ci>?)
      (string-ci<=? base-string-ci<=?)
      (string-ci>=? base-string-ci>=?))
    (except (rnrs mutable-strings) string-fill!) (rnrs r5rs)
    (srfi :0) (srfi :23) (srfi private include))
  (include/resolve ("srfi" "%3a152") "macros.scm")
  (include/resolve ("srfi" "%3a152") "portable.scm")
  (include/resolve ("srfi" "%3a152") "r7rs-shim.scm")
  (include/resolve
    ("srfi" "%3a152")
    "extend-comparisons.scm"))

#!r6rs ;; Copyright notices may be found in "%3a54/cat.sls"
;; This file was written by Akku.scm
(library (srfi srfi-54)
  (export cat)
  (import
    (except (rnrs) error)
    (rnrs r5rs)
    (srfi :23)
    (srfi private include))
  (include/resolve ("srfi" "%3a54") "srfi-54-impl.scm"))

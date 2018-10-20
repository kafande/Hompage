#!r6rs ;; Copyright notices may be found in "%3a156/predicate-combiners.sls"
;; This file was written by Akku.scm
(library (srfi srfi-156)
  (export is isnt)
  (import (rnrs) (srfi private include))
  (include/resolve ("srfi" "%3a156") "srfi-156-impl.scm"))

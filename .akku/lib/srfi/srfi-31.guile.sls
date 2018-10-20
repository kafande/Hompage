#!r6rs ;; Copyright notices may be found in "%3a31/rec.sls"
;; This file was written by Akku.scm
(library (srfi srfi-31)
  (export rec)
  (import (rnrs))
  (define-syntax rec
    (syntax-rules ()
      [(rec (NAME . VARIABLES) . BODY)
       (letrec ([NAME (lambda VARIABLES . BODY)]) NAME)]
      [(rec NAME EXPRESSION) (letrec ([NAME EXPRESSION]) NAME)])))

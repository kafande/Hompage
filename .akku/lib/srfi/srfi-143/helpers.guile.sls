#!r6rs ;; Copyright notices may be found in "%3a143/helpers/helpers.sls"
;; This file was written by Akku.scm
(library (srfi srfi-143 helpers)
  (export fxabs fxremainder fxquotient)
  (import (rnrs) (rnrs r5rs))
  (define fxabs (lambda (i) (if (fx<? i 0) (fx- i) i)))
  (define fxremainder (lambda (n d) (remainder n d)))
  (define fxquotient (lambda (n d) (quotient n d))))

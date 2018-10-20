#!r6rs ;; Copyright notices may be found in "%3a145/assumptions.sls"
;; This file was written by Akku.scm
(library (srfi srfi-145)
  (export assume)
  (import (rnrs) (srfi :0) (srfi :23))
  (define-syntax assume
    (syntax-rules ()
      [(_ expression message ...)
       (cond-expand
         (debug
           (unless expression
             (error "invalid assumption" 'expression message ...)))
         (else (if #f #f)))])))

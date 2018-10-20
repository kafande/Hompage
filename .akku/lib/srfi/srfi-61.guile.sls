#!r6rs ;; Copyright notices may be found in "%3a61/cond.sls"
;; This file was written by Akku.scm
(library (srfi srfi-61)
  (export (rename (general-cond cond)))
  (import (rnrs))
  (define-syntax general-cond
    (lambda (stx)
      (syntax-case stx ()
        [(_ clauses ...)
         (with-syntax ([(ours ...) (map (lambda (c)
                                          (syntax-case c (=>)
                                            [(generator guard => receiver)
                                             #'((let-values ([vals
                                                              generator])
                                                  (and (apply guard vals)
                                                       vals))
                                                 =>
                                                 (lambda (vals)
                                                   (apply receiver vals)))]
                                            [_ c]))
                                        #'(clauses ...))])
           #'(cond ours ...))]))))

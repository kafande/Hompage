#!r6rs ;; Copyright notices may be found in "%3a43/vectors.sls"
;; This file was written by Akku.scm
(library (srfi srfi-43)
  (export make-vector vector vector-unfold vector-unfold-right
   vector-copy vector-reverse-copy vector-append
   vector-concatenate vector? vector-empty? vector= vector-ref
   vector-length vector-fold vector-fold-right vector-map
   vector-map! vector-for-each vector-count vector-index
   vector-skip vector-index-right vector-skip-right
   vector-binary-search vector-any vector-every vector-set!
   vector-swap! (rename (my:vector-fill! vector-fill!))
   vector-reverse! vector-copy! vector-reverse-copy!
   (rename (my:vector->list vector->list)) reverse-vector->list
   (rename (my:list->vector list->vector))
   reverse-list->vector)
  (import (except (rnrs) vector-map vector-for-each) (rnrs r5rs)
    (srfi :23 error tricks) (srfi :8 receive)
    (for (srfi private vanish) expand) (srfi private include))
  (let-syntax ([define (let ([vd (vanish-define
                                   define
                                   (make-vector vector vector? vector-ref
                                     vector-set! vector-length))])
                         (lambda (stx)
                           (define (rename? id)
                             (memp
                               (lambda (x) (free-identifier=? id x))
                               (list
                                 #'vector-fill!
                                 #'vector->list
                                 #'list->vector)))
                           (define (rename id)
                             (datum->syntax
                               id
                               (string->symbol
                                 (string-append
                                   "my:"
                                   (symbol->string (syntax->datum id))))))
                           (syntax-case stx ()
                             [(_ name . r)
                              (and (identifier? #'name) (rename? #'name))
                              #`(define (unsyntax (rename #'name)) . r)]
                             [_ (vd stx)])))]
               [define-syntax (vanish-define define-syntax (receive))])
    (SRFI-23-error->R6RS
      "(library (srfi :43 vectors))"
      (include/resolve ("srfi" "%3a43") "vector-lib.scm"))))

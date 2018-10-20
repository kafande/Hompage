#!r6rs ;; Copyright notices may be found in "%3a5/let.sls"
;; This file was written by Akku.scm
(library (srfi srfi-5)
  (export let)
  (import (rename (rnrs) (let standard-let)))
  (define-syntax let
    (syntax-rules ()
      [(let () body ...) (standard-let () body ...)]
      [(let ([var val] ...) body ...)
       (standard-let ((var val) ...) body ...)]
      [(let ([var val] . bindings) body ...)
       (let-loop #f bindings (var) (val) (body ...))]
      [(let (name binding ...) body ...)
       (let-loop name (binding ...) () () (body ...))]
      [(let name bindings body ...)
       (let-loop name bindings () () (body ...))]))
  (define-syntax let-loop
    (syntax-rules ()
      [(let-loop name ((var0 val0) binding ...) (var ...)
         (val ...) body)
       (let-loop name (binding ...) (var ... var0) (val ... val0)
         body)]
      [(let-loop #f (rest-var rest-val ...) (var ...) (val ...)
         body)
       (standard-let
         ((var val) ... (rest-var (list rest-val ...)))
         .
         body)]
      [(let-loop name () (var ...) (val ...) body)
       ((letrec ([name (lambda (var ...) . body)]) name) val ...)]
      [(let-loop name (rest-var rest-val ...) (var ...) (val ...)
         body)
       ((letrec ([name (lambda (var ... . rest-var) . body)]) name)
         val
         ...
         rest-val
         ...)])))

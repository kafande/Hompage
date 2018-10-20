#!r6rs ;; Copyright notices may be found in "%3a99/records/inspection.sls"
;; This file was written by Akku.scm
(library (srfi srfi-99 inspection)
  (export record? record-rtd rtd-name rtd-parent
    rtd-field-names rtd-all-field-names rtd-field-mutable?)
  (import
    (rnrs base)
    (rnrs lists)
    (rnrs records inspection)
    (srfi :99 records helper))
  (define rtd-name record-type-name)
  (define rtd-parent record-type-parent)
  (define rtd-field-names record-type-field-names)
  (define (rtd-all-field-names rtd)
    (define (loop rtd othernames)
      (let ([parent (rtd-parent rtd)]
            [names (append
                     (vector->list (rtd-field-names rtd))
                     othernames)])
        (if parent (loop parent names) (list->vector names))))
    (loop rtd '()))
  (define (rtd-field-mutable? rtd0 fieldname)
    (define (loop rtd)
      (if (rtd? rtd)
          (let* ([names (vector->list (rtd-field-names rtd))]
                 [probe (memq fieldname names)])
            (if probe
                (record-field-mutable?
                  rtd
                  (- (length names) (length probe)))
                (loop (rtd-parent rtd))))
          (assertion-violation 'rtd-field-mutable?
            "illegal argument"
            rtd0
            fieldname)))
    (loop rtd0)))

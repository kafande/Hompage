#!r6rs ;; Copyright notices may be found in "%3a99/records/procedural.sls"
;; This file was written by Akku.scm
(library (srfi srfi-99 procedural)
  (export make-rtd rtd? rtd-constructor rtd-predicate
    rtd-accessor rtd-mutator)
  (import
    (rnrs base)
    (rnrs lists)
    (rnrs records procedural)
    (srfi :99 records inspection))
  (define (make-rtd name fieldspecs . rest)
    (let* ([parent (if (null? rest) #f (car rest))]
           [options (if (null? rest) '() (cdr rest))]
           [sealed? (and (memq 'sealed options) #t)]
           [opaque? (and (memq 'opaque options) #t)]
           [uid (let ([probe (memq 'uid options)])
                  (if (and probe (not (null? (cdr probe))))
                      (cadr probe)
                      #f))])
      (make-record-type-descriptor name parent uid sealed? opaque?
        (vector-map
          (lambda (fieldspec)
            (if (symbol? fieldspec)
                (list 'mutable fieldspec)
                fieldspec))
          (if (list? fieldspecs)
              (list->vector fieldspecs)
              fieldspecs)))))
  (define rtd? record-type-descriptor?)
  (define (rtd-constructor rtd . rest)
    (define (make-constructor fieldspecs allnames maker)
      (let* ([k (length fieldspecs)]
             [n (length allnames)]
             [buffer (make-vector n)]
             [reverse-all-names (reverse allnames)])
        (define (position fieldname)
          (let ([names (memq fieldname reverse-all-names)])
            (assert names)
            (- (length names) 1)))
        (let ([indexes (map position fieldspecs)])
          (lambda args
            (assert (= (length args) k))
            (for-each
              (lambda (arg posn) (vector-set! buffer posn arg))
              args
              indexes)
            (apply maker (vector->list buffer))))))
    (if (null? rest)
        (record-constructor
          (make-record-constructor-descriptor rtd #f #f))
        (begin
          (assert (null? (cdr rest)))
          (make-constructor
            (vector->list (car rest))
            (vector->list (rtd-all-field-names rtd))
            (record-constructor
              (make-record-constructor-descriptor rtd #f #f))))))
  (define rtd-predicate record-predicate)
  (define (rtd-accessor rtd0 fieldname)
    (define (loop rtd)
      (if (rtd? rtd)
          (let* ([names (vector->list (rtd-field-names rtd))]
                 [probe (memq fieldname names)])
            (if probe
                (record-accessor rtd (- (length names) (length probe)))
                (loop (rtd-parent rtd))))
          (assertion-violation 'rtd-accessor
            "illegal argument"
            rtd0
            fieldname)))
    (loop rtd0))
  (define (rtd-mutator rtd0 fieldname)
    (define (loop rtd)
      (if (rtd? rtd)
          (let* ([names (vector->list (rtd-field-names rtd))]
                 [probe (memq fieldname names)])
            (if probe
                (record-mutator rtd (- (length names) (length probe)))
                (loop (rtd-parent rtd))))
          (assertion-violation 'rtd-mutator
            "illegal argument"
            rtd0
            fieldname)))
    (loop rtd0)))

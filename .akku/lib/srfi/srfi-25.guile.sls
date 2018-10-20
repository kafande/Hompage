#!r6rs ;; Copyright notices may be found in "%3a25/multi-dimensional-arrays.sls"
;; This file was written by Akku.scm
(library (srfi srfi-25)
  (export array? make-array shape array array-rank array-start
    array-end array-ref array-set! share-array)
  (import (srfi :25 multi-dimensional-arrays all)))

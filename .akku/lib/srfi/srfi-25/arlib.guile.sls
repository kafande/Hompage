#!r6rs ;; Copyright notices may be found in "%3a25/multi-dimensional-arrays/arlib.sls"
;; This file was written by Akku.scm
(library (srfi srfi-25 arlib)
  (export array-shape array-length array-size array-equal?
   shape-for-each array-for-each-index tabulate-array
   tabulate-array! array-retabulate! array-map array-map!
   array->vector array->list share-array/prefix share-row
   share-column share-array/origin share-array/index!
   array-append transpose share-nths)
  (import (rnrs) (rnrs r5rs) (srfi :23 error tricks)
    (srfi :25 multi-dimensional-arrays all)
    (srfi private include))
  (SRFI-23-error->R6RS
    "(library (srfi :25 multi-dimensional-arrays arlib))"
    (include/resolve ("srfi" "%3a25") "arlib.scm")))

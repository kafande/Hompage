#!r6rs ;; Copyright notices may be found in "%3a99/records.sls"
;; This file was written by Akku.scm
(library (srfi srfi-99)
  (export record? record-rtd rtd-name rtd-parent rtd-field-names
    rtd-all-field-names rtd-field-mutable? make-rtd rtd?
    rtd-constructor rtd-predicate rtd-accessor rtd-mutator
    define-record-type)
  (import
    (srfi :99 records inspection)
    (srfi :99 records procedural)
    (srfi :99 records syntactic)))

#!r6rs ;; Copyright notices may be found in "%3a99/records/helper.sls"
;; This file was written by Akku.scm
(library (srfi srfi-99 helper)
  (export rtd?)
  (import (rnrs base) (rnrs records procedural))
  (define rtd? record-type-descriptor?))

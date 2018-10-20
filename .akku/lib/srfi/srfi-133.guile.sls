#!r6rs ;; Copyright notices may be found in "%3a133/vectors.sls"
;; This file was written by Akku.scm
(library (srfi srfi-133)
  (export vector-unfold vector-unfold-right vector-copy
   vector-reverse-copy vector-append vector-concatenate
   vector-append-subvectors vector-empty? vector= vector-fold
   vector-fold-right vector-map vector-map! vector-for-each
   vector-count vector-cumulate vector-index vector-skip
   vector-index-right vector-skip-right vector-binary-search
   vector-any vector-every vector-partition vector-swap!
   vector-fill! vector-reverse! vector-copy!
   vector-reverse-copy! vector-reverse! vector-unfold!
   vector-unfold-right! vector->list reverse-vector->list
   list->vector reverse-list->vector vector->string
   string->vector)
  (import
    (rename
      (rnrs)
      (vector-fill! rnrs:vector-fill!)
      (vector->list rnrs:vector->list)
      (list->vector rnrs:list->vector))
    (rnrs mutable-strings)
    (srfi private include))
  (include/resolve ("srfi" "%3a133") "vectors-impl.scm"))

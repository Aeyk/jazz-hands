#!/usr/bin/guile
!#

(use-modules (srfi srfi-1)
	     (srfi srfi-13)
	     (ice-9 pretty-print))

(load "./display.scm")
(load "./helpers.scm")
(load "./intervals.scm")
(load "./modes.scm")
(load "./notes.scm")
(load "./scales.scm")
(load "./tabs.scm")

;; nameless display function from display.scm
;(n 0)

(display "C_major") 
(newline)
;(pretty-print
;(map-notes (scale-on-string (major-scale 0) (chromatic-scale 4))))


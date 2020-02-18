#!/usr/bin/guile
!#

(use-modules (srfi srfi-1)
	     (srfi srfi-26)
	     (ice-9 pretty-print))


(load "./scales.scm")

(define (first-inversion n)
  n)

(define (second-inversion n)
  (rotate n 1))

(define (third-inversion n)
  (rotate n 2))


(define (unison n)
  (list n n))


(define (P4 n)
  (list n (+ n 5)))

(define (P5 n)
  (list n (+ n 7)))

(define (P8 n)
  (list n (+ n 12)))



(define (M2 n)
  (list n (+ n 2)))

(define (M3 n)
  (list n (+ n 4)))

(define (M6 n)
  (list n (+ n 9)))

(define (M7 n)
  (list n (+ n 11)))



(define (m2 n)
  (list n (+ n 1)))

(define (m3 n)
  (list n (+ n 3)))

(define (m6 n)
  (list n (+ n 8)))

(define (m7 n)
  (list n (+ n 10)))



(define (aug2 n)
  (list n (+ n 3)))

(define (aug3 n)
  (list n (+ n 5)))

(define (aug4 n)
  (list n (+ n 6)))

(define (aug5 n)
  (list n (+ n 8)))

(define (aug6 n)
  (list n (+ n 10)))

(define (aug7 n)
  (list n (+ n 12)))


(define (dim2 n)
  (list n (+ n 0)))

(define (dim3 n)
  (list n (+ n 2)))

(define (dim4 n)
  (list n (+ n 4)))

(define (dim5 n)
  (list n (+ n 6)))

(define (dim6 n)
  (list n (+ n 8)))

(define (dim7 n)
  (list n (+ n 10)))

(define (apply-list flist n)
  (let loop ((flist flist)
	     (new '()))
  (if (null? flist)
      new
      (loop (cdr flist) (cons ((car flist) n) new)))))

(define (chord root . intervals)
  (sort (delete-duplicates (concatenate (apply-list intervals root))) <))

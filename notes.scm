
;; A note is an associated list with the following fields. 
;; pitch <number>
;; duration: <complex>
(define (make-note pitch duration . flat)
  (cond
   ((= pitch -1)
    (acons 'pitch pitch
	   (acons 'note '__
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 12) 
    (acons 'pitch pitch
	   (acons 'note 'C'
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 0) 
    (acons 'pitch pitch
	   (acons 'note 'C'
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 2)
    (acons 'pitch pitch 
	   (acons 'note 'D'
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 4)
    (acons 'pitch pitch 
	   (acons 'note 'E'
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 5)
    (acons 'pitch pitch 
	   (acons 'note 'F'
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 7)
    (acons 'pitch pitch 
	   (acons 'note 'G'
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 9)
    (acons 'pitch pitch 
	   (acons 'note 'A'
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 11)
    (acons 'pitch pitch 
	   (acons 'note 'B'
		  (acons 'duration duration 
			 '()))))

   ((= (modulo pitch 13) 1)
    (acons 'pitch pitch
	   (acons 'note 'Db
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 3)
    (acons 'pitch pitch 
	   (acons 'note 'Eb
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 6)
    (acons 'pitch pitch 
	   (acons 'note 'Gb
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 8)
    (acons 'pitch pitch 
	   (acons 'note 'Ab 
		  (acons 'duration duration 
			 '()))))
   ((= (modulo pitch 13) 10)
    (acons 'pitch pitch 
	   (acons 'note 'Bb 
		  (acons 'duration duration 
			 '()))))))
#! 
  ((= (modulo pitch 13) 1)
   (acons 'pitch pitch
	  (acons 'note 'Cs
		 (acons 'duration duration 
			'()))))
  ((= (modulo pitch 13) 3)
   (acons 'pitch pitch 
	  (acons 'note 'Ds
		 (acons 'duration duration 
			'()))))
  ((= (modulo pitch 13) 6)
   (acons 'pitch pitch 
	  (acons 'note 'Fs
		 (acons 'duration duration 
			'()))))
  ((= (modulo pitch 13) 8)
   (acons 'pitch pitch 
	  (acons 'note 'Gs 
		 (acons 'duration duration 
			'()))))
  ((= (modulo pitch 13) 10)
   (acons 'pitch pitch 
	  (acons 'note 'As 
		 (acons 'duration duration 
			'()))))
!#

(define (map-notes notes . flat)
  (map (lambda (n) (make-note n (/ 1 4) flat)) notes))

(define (get-pitch n)
  (assoc-ref n 'pitch))

(define (get-note n)
  (assoc-ref n 'note))

(define (get-duration n)
  (assoc-ref n 'duration))

(define (get-octave n)
  (quotient (assoc-ref n 'pitch) 13))

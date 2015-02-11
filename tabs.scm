(define (scale-on-string scale string)
  (let l ((str string)
	  (new '()))
    (if (null? str)
	new
	(if 
	 (contains? 
	  (map (lambda (n) (modulo n 12)) scale)
	  (modulo (car str) 12))
	    (l (cdr str) (cons (car str) new))
	    (l (cdr str) (cons -1 new))))))

(define (guitar-neckboard scale)
  (let
      ((e2 (apply-sequence (chromatic 24) (+ (* 4 12) 4)))
       (b  (apply-sequence (chromatic 24) (+ (* 3 12) 11)))
       (g  (apply-sequence (chromatic 24) (+ (* 3 12) 7)))
       (d  (apply-sequence (chromatic 24) (+ (* 3 12) 2)))
       (a  (apply-sequence (chromatic 24) (+ (* 2 12) 9)))
       (e  (apply-sequence (chromatic 24) (+ (* 2 12) 4))))
    (list
     (map-notes (reverse (scale-on-string scale e2)))
     (map-notes (reverse (scale-on-string scale b)))
     (map-notes (reverse (scale-on-string scale g)))
     (map-notes (reverse (scale-on-string scale d)))
     (map-notes (reverse (scale-on-string scale a)))
     (map-notes (reverse (scale-on-string scale e))))))

(define (bass-neckboard scale)
  (let       
      ((g  (apply-sequence (chromatic 24) (+ (* 2 12) 7)))
       (d  (apply-sequence (chromatic 24) (+ (* 2 12) 2)))
       (a  (apply-sequence (chromatic 24) (+ (* 1 12) 9)))
       (e  (apply-sequence (chromatic 24) (+ (* 1 12) 4))))
    (list
     (map-notes (reverse (scale-on-string scale g)))
     (map-notes (reverse (scale-on-string scale d)))
     (map-notes (reverse (scale-on-string scale a)))
     (map-notes (reverse (scale-on-string scale e))))))

(define (neckboard neckboard scale)
  (map (lambda (n) (map get-note n)) (neckboard scale)))


(modulo 13 12)

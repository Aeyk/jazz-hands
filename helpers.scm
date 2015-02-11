(define (apply-sequence lst n)
  (reverse 
   (let loop ((seq (cons n '()))
	      (steps lst))
     (if (>= (- (length seq) 1) (length lst))
	 seq
	 (loop 
	  (cons (+ (car steps) (car seq)) seq)
	  (cdr steps))))))

(define (nth n l)
  (if (or (> n (length l)) (< n 0))
    (error "Index out of bounds.")
    (if (eq? n 0)
      (car l)
      (nth (- n 1) (cdr l)))))

(define (contains? l i)
  (cond ((null? l) #f)
	((equal? (car l) i) #t) 
	(else  (contains? (cdr l) i))))

(define (rotate seq n)
  (let loop ((n n)
	     (seq seq))
    (if (zero? n)
	seq
	(loop (- n 1) (cdr (append seq (list (car seq))))))))

(define (map-notes notes . flat)
  (map (lambda (n) (make-note n (/ 1 4) flat)) notes))

(define (transpose del n)
  (assoc-set! n 'pitch (+ del (get-pitch n))))

(define (m13 n)
  (modulo n 13))

(define (reverse lst)
  (fold cons '() lst))

(define (chromatic size)
  (let loop ((seq '(1)))
    (if (>= (length seq) size)
	seq
	(loop (cons 1 seq)))))


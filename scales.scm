(define (chromatic-scale n)
  (apply-sequence (chromatic 12) n))

(define (minor-scale n)
  (apply-sequence '(2 1 2 2 1 2 1) n))

(define (major-scale n)
  (apply-sequence '(2 2 1 2 2 2 1) n))


(define (chromatic-scale n)
  (apply-sequence (chromatic 12) n))

(define (minor-scale n)
  (apply-sequence '(2 1 2 2 1 2 1) n))

(define (major-scale n)
  (apply-sequence '(2 2 1 2 2 2 1) n))

(define (major-pentatonic-scale n)
  (chord n M2 M3 P5 M6))

(define (minor-pentatonic-scale n)
  (chord n m2 m3 P5 m6))

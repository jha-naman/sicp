(define (inc n) (+ n 1))
(define (square n) (* n n))

(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (if (< n 1)
      (lambda (x) x)
      (compose f (repeated f (- n 1)))))

(define (smooth f)
  (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3))

(define (n-fold-smooth f n)
  ((repeated smooth n) f))

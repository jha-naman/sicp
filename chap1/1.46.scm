(define tolerance 0.00001)
(define (average x y) (/ (+ x y) 2))

(define (iterative-improve good-enough? improve)
  (define (iter guess)
    (let ((next (improve guess)))
      (if (good-enough? guess next)
          next
          (iter next))))
  (lambda (guess) (iter guess)))

(define (fixed-point f init)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (improve-guess guess)
    (f guess))
  (define (iterate guess)
    (let ((next (improve-guess guess)))
      (if (close-enough? guess next)
          next
          (iterate next))))
  (iterate init))

(display (fixed-point cos 1.0))
(newline)

(define (sqrt x)
  (fixed-point (lambda (y) (average (/ x y) y)) 1.0))

(sqrt 4.0)

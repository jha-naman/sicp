(define (sum-of-square-of-largest a b c)
  (define (square x) (* x x))

  (cond ((and (> a b) (> c b) (+ (square a) (square c))))
        ((and (> a c) (> b c)) (+ (square a) (square b)))
        (else (+ (square b) (square c)))))

(sum-of-square-of-largest 1 2 3) ;; 13
(sum-of-square-of-largest 3 2 1) ;; 13
(sum-of-square-of-largest 3 1 2) ;; 13

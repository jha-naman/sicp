(define (square n) (* n n))
(define (f g) (g 2))

(f square)

(f (lambda (z) (* z (+ z 1))))
(f f) ;; this eventually gets converted to (2 2) and fails because `number` can not be used as operator''

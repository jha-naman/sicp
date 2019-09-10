(define (cont-frac n-term d-term k)
  (cond ((= k 0) 0)
        (else (/ (n-term k) (+ (d-term k) (cont-frac n-term d-term (- k 1)))))))

(define (n-term n) 1.0)
(define (d-term n)
  (let ((rem-3 (remainder n 3))
        (div-3 (floor (/ n 3))))
    (cond ((= rem-3 2) (* 2 (+ div-3 1)))
          (else 1))))

(define (tan-cf x k)
  (define (n-term i)
    (if (= i 1)
        x
        (* x x)))
  (define (d-term i) (* -1 (- (* 2 i) 1)))
  (cont-frac n-term d-term k))

(display (tan-cf (/ 3.14 4) 10)) ;; -0.0323712846567053

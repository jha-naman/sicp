(define (cont-frac n-term d-term k)
  (cond ((= k 0) 0)
        (else (/ (n-term k) (+ (d-term k) (cont-frac n-term d-term (- k 1)))))))

(define (term n) 1.0)

(define phi-inv (cont-frac term term 11)) ;; k = 11 gives precision till 4 digits
(newline)
(display (/ 1 1.6180327868852458))
(newline)
(display phi-inv)

(define (dec n) (- n 1))

(define (square n) (* n n))

(define (expt b n)
  (fast-expt-iter b n 1))

(define (fast-expt-iter b counter product)
  (if (= counter 0)
      product
      (cond ((even? counter) (fast-expt-iter (square b) (/ counter 2) product))
            (else (fast-expt-iter b (dec counter) (* b product))))))

(expt 3 3) ;; 27

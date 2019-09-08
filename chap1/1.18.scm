(define (double n) (+ n n))
(define (half n) (/ n 2))

(define (* a b)
  (define (iter a b product)
    (if (= b 0)
        product
        (cond ((even? b) (iter (double a) (half b) product))
              (else (iter a (- b 1) (+ a product))))))
  (iter a b 0))

(* 2 2) ;; 4

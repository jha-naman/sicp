(define (double n) (+ n n))
(define (half n) (/ n 2))

(define (* a b)
  (if (= b 0)
      0
      (cond ((even? b) (double (* a (half b))))
            (else (+ a (* a (- b 1)))))))

(* 7 2) ;; 14

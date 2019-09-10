(define (cube n) (* n n n))
(define (inc n) (+ n 1))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (next s) (f (+ a (* h s))))

  (define (term s)
    (* (cond ((or (= s 0) (= s n)) 1)
             ((odd? s) 2)
             (else 4))
       (next s)))

  (* (/ 1 3.0) h (sum term 0 inc n)))

(integral cube 0 1 10000) ;; 0.24996667166666667

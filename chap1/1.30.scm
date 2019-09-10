(define (cube n) (* n n n))
(define (inc n) (+ n 1))

(define (sum term a next b current-sum)
  (if (> a b)
      current-sum
      (sum term (next a) next b (+ (term a) current-sum))))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (next s) (f (+ a (* h s))))

  (define (term s)
    (* (cond ((or (= s 0) (= s n)) 1)
             ((odd? s) 2)
             (else 4))
       (next s)))

  (* (/ 1 3.0) h (sum term 0 inc n 0)))

(integral cube 0 1 1000) ;; 0.24966716666666663

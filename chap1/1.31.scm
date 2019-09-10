(define (inc n) (+ n 1))
(define (square n) (* n n))

(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

(define (find-pi n)
  (define (term s)
    (/ (* (* 2.0 s) (* 2 (+ s 1))) (square (+ (* 2 s) 1))))
  (* 4 (product term 1 inc n)))

(find-pi 100) ;; 3.1493784731686008

(define (factorial n)
  (define (term n) n)
  (product term 1 inc n))

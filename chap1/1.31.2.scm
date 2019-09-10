(define (inc n) (+ n 1))
(define (square n) (* n n))

(define (product term a next b current-product)
  (if (> a b)
      current-product
      (product term (next a) next b (* (term a) current-product))))

(define (find-pi n)
  (define (term s)
    (/ (* (* 2.0 s) (* 2 (+ s 1))) (square (+ (* 2 s) 1))))
  (* 4 (product term 1 inc n 1)))

(find-pi 100) ;; 3.149378473168601

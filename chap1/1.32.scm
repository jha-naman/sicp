(define (inc n) (+ n 1))

(define (accumalate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumalate combiner null-value term (next a) next b))))

(define (factorial-acc n)
  (define (term n) n)
  (accumalate * 1 term 1 inc n))

(factorial-acc 5) ;; 120

(define (product term a next b)
  (accumalate * 1 term a next b))

(define (factorial n)
  (define (term n) n)
  (product term 1 inc n))

(factorial 5) ;; 120

(define (sum term a next b)
  (accumalate + 0 term a next b))

(define (sum-to n)
  (define (term n) n)
  (sum term 0 inc n))

(sum-to 5) ;; 15

(define (accumalate-iter combiner null-value term a next b current)
  (if (> a b)
      current
      (accumalate-iter combiner null-value term (next a) next b (combiner a current))))

(define (factorial-acc-iter n)
  (define (term n) n)
  (accumalate-iter * 1 term 1 inc n 1))

(factorial-acc-iter 5) ;; 120

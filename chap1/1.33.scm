(define (inc n) (+ n 1))
(define (square x) (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (define (next n)
    (if (= n 2)
        3
        (+ n 2)))
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (filtered-accumalate filter combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((not (filter a))
         (filtered-accumalate filter combiner null-value term (next a) next b))
        (else (combiner
               (term a)
               (filtered-accumalate filter combiner null-value term (next a) next b)))))

(define (sum-of-squares-of-primes n)
  (filtered-accumalate prime? + 0 square 1 inc n))

(sum-of-squares-of-primes 10) ;; 88

(define (square x) (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (start-prime-test n (current-time)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime n (- (current-time) start-time))))

(define (report-prime n elapsed-time)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes start end)
  (define (iter current)
    (if (<= current end) (timed-prime-test current))
    (if (<= current end) (iter (+ 2 current))))
  (iter start))

(search-for-primes 1 10)

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10) ;; 1024
(A 2 4) ;; 65536
(A 3 3) ;; 65536

(define (f n) (A 0 n)) ;; f(n) = 2 * n
(f 100) ;; 200

(define (g n) (A 1 n)) ;; f(n) = 2 ** n; f(0) = 0
(g 3) ;; 8

(define (h n) (A 2 n)) ;; f(n) = 2 ** (2 ** (2 ** ...) (n - 1 times); f(0) = 0
(h 2) ;; 4

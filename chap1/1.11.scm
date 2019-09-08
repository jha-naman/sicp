(define (inc n) (+ n 1))

(define (f-rec n)
  (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (* 2 (f-rec (- n 2)))
                 (* 3 (f-rec (- n 3)))))))

(f-rec 4) ;; 11

(define (f-iter n)
  (define (get-val step n-1 n-2 n-3)
    (cond ((< step 3) step)
           (else (+ n-1 (* 2 n-2) (* 3 n-3)))))

  (define (iter step n-1 n-2 n-3)
    (cond ((= step n) (get-val step n-1 n-2 n-3))
          (else (iter (inc step) (get-val step n-1 n-2 n-3) n-1 n-2))))
  (iter 0 0 0 0))

(f-iter 4); 11

(define (dec n) ( - n 1))

(define (pascal-elem row elem)
  (if (or (= elem 1) (= row elem))
          1
          (+ (pascal-elem (dec row) (dec elem))
             (pascal-elem (dec row) elem))))

(pascal-elem 5 3) ;; 6

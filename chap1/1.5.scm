;; (define (p) (p))
;; (define (test x y)
;;  (if (= x 0)
;;    0
;;    y))
;; ( test 0 (p))

;; the above will fail to terminate when executed using applicative order evaluation because p is defined improperly
;; will return 0 with normal order evaluation as p is never evaluated

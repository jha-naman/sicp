(define tolerance 0.00001)
(define (average x y) (/ (+ x y) 2))

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (newline)
      (display next)
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (xth-power-of-x y)
  (fixed-point (lambda (x) (/ (log y) (log x))) 10.0))

(newline)
(display "calculating without average damping:")
(newline)
(xth-power-of-x 1000)

(define (xth-power-of-x-avg y)
  (fixed-point (lambda (x) (average x (/ (log y) (log x)))) 10.0))

(newline)
(display "calculating with average damping:")
(newline)

(xth-power-of-x-avg 1000)

;; output from the program clearly shows average damping takes fewer iterations
;;
;; calculating with average damping:
;;
;; 2.9999999999999996
;; 6.2877098228681545
;; 3.7570797902002955
;; 5.218748919675316
;; 4.1807977460633134
;; 4.828902657081293
;; 4.386936895811029
;; 4.671722808746095
;; 4.481109436117821
;; 4.605567315585735
;; 4.522955348093164
;; 4.577201597629606
;; 4.541325786357399
;; 4.564940905198754
;; 4.549347961475409
;; 4.5596228442307565
;; 4.552843114094703
;; 4.55731263660315
;; 4.554364381825887
;; 4.556308401465587
;; 4.555026226620339
;; 4.55587174038325
;; 4.555314115211184
;; 4.555681847896976
;; 4.555439330395129
;; 4.555599264136406
;; 4.555493789937456
;; 4.555563347820309
;; 4.555517475527901
;; 4.555547727376273
;; 4.555527776815261
;; 4.555540933824255
;; 4.555532257016376
;;
;; calculating with average damping:
;;
;; 6.5
;; 5.095215099176933
;; 4.668760681281611
;; 4.57585730576714
;; 4.559030116711325
;; 4.55613168520593
;; 4.555637206157649
;; 4.55555298754564
;; 4.555538647701617
;; 4.555536206185039


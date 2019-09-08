;; https://stackoverflow.com/a/8474402
;; new-if is a procedure, and Scheme uses applicative-order evaluation (1.1.5), so even before new-if is actually performed, it has to evaluate all the arguments first, which are guess and (sqrt-iter (improve guess x) x). You can see that the latter argument is a recursion, which calls a new new-if procedure, this is how the infinite loop occurs.

;; The ordinary if need not evaluate its arguments first, just go along the way, this is the difference between if and new-if. :)

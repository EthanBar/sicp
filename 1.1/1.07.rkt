#lang sicp

(define (square x) (* x x))

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

;; The improved checker 
(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.000000001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

#|
The new <good-enough?> function checks the next
iteration of sqrt-iter and checks its difference
from the previous iteration. If it is under a set
value, it is "good enough".

This function could be improved by:
- Passing in the second iteration value so it isn't calculated twice
- Dynamically determines the difference threshold for smaller numbers

Testing:
(old) (sqrt 0.0000001) 0.0312510 (+/- 0.031145) 
(new) (sqrt 0.0000001) 0.0003162 (+/- 0.000000)
(actual value)         0.0003162
|#

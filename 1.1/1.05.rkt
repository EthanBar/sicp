#lang sicp
(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

#|
This function highlights a possible drawback
to normal-order evaluation. By default,
this function will enter a recurisve loop
of attempting to evaluate (p) -> (p).
Under applicaiton order evaluation,
it would avoid evaluating the statement
until needed, which escapes the loop.
|#


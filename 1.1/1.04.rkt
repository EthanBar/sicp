#lang sicp

; Evaluates a + abs(b)
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

#|
This procedure is unique (so far) in that
it evaluates an if condition to determine
the operator to apply to <a b>.

If b is greater than zero, we add.
Otherwise we subtract.
This has the effect of adding the
absolute value of b to a.
|#

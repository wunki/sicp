#lang sicp

;; Exercise 1.3 -- Define a procedure which takes three numbers
;; as arguments and returns the sum of the squares of the two
;; larger numbers.
(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (square-of-largest a b c)
  (cond ((and (>= a b) (>= b c)) (sum-of-squares a b))
        ((and (>= a c) (>= c b)) (sum-of-squares a c))
        ((and (>= b a) (>= c a)) (sum-of-squares b c))))


(square-of-largest 1 2 3)

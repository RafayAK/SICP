#lang racket

; Exercise 1.3: Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

(define (myfunc a b c)
  (define (square x) (* x x))
  (define (sum-of-squares x y) (+ (square x) (square y)))
 
  (cond ((and (> b a) (> c a)) (sum-of-squares b c))
          ((and (> a c) (> b c)) (sum-of-squares a b))
          ((and (> a b) (> c b)) (sum-of-squares a c))))

(myfunc 1 2 3) ; 2^2 + 3^2 = 13
(myfunc 3 2 1) ; 13
(myfunc 3 1 2) ; 13
(myfunc 2 1 3) ; 13

(myfunc 2 1 2) ; 8
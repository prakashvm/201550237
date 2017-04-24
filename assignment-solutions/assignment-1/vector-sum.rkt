#lang racket

(define (vector-sum v) (for/sum ([x v]) (+ x)))

(check-equal? (vector-sum #()) 0 "test 1")
(check-equal? (vector-sum #(1 2 3)) 6 "test 2")
(check-equal? (vector-sum #(-1 2 3)) 4 "test 3")


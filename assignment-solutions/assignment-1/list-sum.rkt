#lang racket
(define list-sum
  (lambda (lst)
    (if (empty? lst)
        0
        (+ (car lst) (list-sum (cdr lst))))))


(check-equal? (list-sum '()) 0 "test 1")
(check-equal? (list-sum '(1 2)) 3 "test 2")
(check-equal? (list-sum '(1 2 8 4)) 15 "test 3")

#lang racket
(define (list-length lst)
  (if (empty? lst)
      0
      (+ 1 (list-length (rest lst)))))


(check-equal? (list-length '()) 0 "test 1")
(check-equal? (list-length '(1 2 a)) 3 "test 2")
(check-equal? (list-length '(1 2 (1 2 3))) 3 "test 3")
(check-equal? (list-length '((1 2) (3 4) (5 6))) 3 "test 4")

#lang racket

(define (list-length lst)
  (if (empty? lst)
      0
      (+ 1 (list-length (rest lst)))))

(check-equal? (list-length '(a b c)) 3 "List Length (a b c)")
(check-equal? (list-length '(1 2 3 4)) 4 "List Length (1 2 3 4)")

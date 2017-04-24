#lang racket
(require rackunit)

(define (list-map f list)
  (define (reduce list result)
    (if (null? list)
        (reverse result)
        (reduce (cdr list) (cons (f (car list)) result))))
  (reduce list '()))

(check-equal? (list-map add1 '(1 2 3 4)) '(2 3 4 5) "test 1")
(check-equal? (list-map boolean? '(1 #t #f 4)) '(#f #t #t #f) "test 2")


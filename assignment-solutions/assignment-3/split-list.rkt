#lang racket

(define (split-list ls a)
  (define (less b)      (<= b a))
    (define (greater b) (>  b a))
      (list (filter less ls)
            (filter greater ls)))


(check-equal? (split-list '() 3) '(() ()) "test 1")
(check-equal? (split-list '(1 2 3 4) 5) '((1 2 3 4) ()) "test 2")
(check-equal? (split-list '(3 1 2 6 5 7 5) 5) '((3 1 2 5 5) (6 7)) "test 3")
(check-equal? (split-list '(3 1 2 6 5 7 5) 0) '(() (3 1 2 6 5 7 5)) "test 4")
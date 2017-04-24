#lang racket

(define map-sqr
  (lambda (ls)
    (map (lambda (x) (* x x))
         ls)))

(check-equal? (map-sqr '(1 2 3 4)) '(1 4 9 16) "test-1")
(check-equal? (map-sqr '(1 2/3 3.0 3+4i)) '(1 4/9 9.0 -7+24i) "test 2")
(check-equal? (map-sqr '()) '() "test 3")

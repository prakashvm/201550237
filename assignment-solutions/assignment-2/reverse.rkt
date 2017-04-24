#lang racket

(define (reverse l)
  (if (null? l)
      '()
      (append (reverse (cdr l)) (list (car l)))
  )
)

(check-equal? (reverse '(a b c)) '(c b a) "Reverse (a b c)")
(check-equal? (reverse '(1 2 3 4)) '(4 3 2 1) "Reverse (1 2 3 4)")

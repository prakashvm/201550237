#lang racket

(define (flatten-list lst)
  (cond ((null? lst) '())
        ((pair? (car lst))
         (append (flatten-list (car lst))
                 (flatten-list (cdr lst))))
        (else (cons (car lst) (flatten-list (cdr lst))))))


(check-equal? (flatten-list '()) '() "test 1")
(check-equal? (flatten-list '((1) () (2))) '(1 2) "test 2")
(check-equal? (flatten-list '((1 2) ())) '(1 2) "test 3")
(check-equal? (flatten-list '(() (1) (3 4))) '(1 3 4) "test 4")
(check-equal? (flatten-list '(1 (2 (3 4) 5) 6)) '(1 2 3 4 5 6) "test 5")
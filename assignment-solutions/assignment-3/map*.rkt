#lang racket

(define (map* op l)
  (define (list x)
    (cond ((null? x) x)
          ((pair? x) (map list x))
          (else (op x))))
  (map list l))


(map* even? '(2 (4 3) ())) 
(map* add1 '((1 2) 3 (4 5) (6 7))) 
(map* boolean? '(1 #t #f -2 0)) 
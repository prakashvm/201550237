#lang racket
(require rackunit)


(define (add1 x) (+ x 1));

(define next-even? (compose even? add1))

(check-equal? (next-even? 4) #f "compose-t1")
(check-equal? (next-even? 5) #t "compose-t2")


(define (compose even? add1)
  (lambda (x)
    (even? (add1 x))))


;===== define another composite function ==========

(define (f x) (* x x))
(define (g x) (+ x 2))

(define (compose1 f g)
         (lambda (x)
           (f (g x))))

((compose1 f g) 4)
((compose1 g f) 5)

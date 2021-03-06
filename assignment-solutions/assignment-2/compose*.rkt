#lang racket
(require rackunit)

(define mul2
  (lambda (x) (* x 2)))

(define add1
  (lambda (y) (+ y 1)))

(define sub1
  (lambda (z) (- z 1)))

(define (compose . funcs)
  (let compose2
    ((func-list (cdr funcs))
     (func (lambda args (apply (car funcs) args))))
    (if (null? func-list)
    func
    (compose2
     (cdr func-list)
     (lambda args (func (apply (car func-list) args)))))))

(define f (compose add1 mul2 sub1))

(check-equal? (f 4) 7 "f 4")
(check-equal? (f 7) 13 "f 7")


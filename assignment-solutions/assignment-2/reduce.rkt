#lang racket

(define reduce
  (lambda (f init ls)
    (if (empty? ls)
        init
        (reduce f (f init (first ls)) (rest ls)))))

(define binary-and 
  (lambda (x y)
    (and x y)))

(define (all-satisfy predicate ls) 
  (reduce binary-and #t (map predicate ls)))


(check-equal?  (all-satisfy even? '(2 3 4)) #f "All-even-test #f")
(check-equal?  (all-satisfy even? '(2 4 6)) #t "All-even-test #t")
(check-equal?  (all-satisfy boolean? '(#t #f 6)) #f "All-boolean-test #f")
(check-equal?  (all-satisfy boolean? '(#t #f #t)) #t "All-boolean-test #t")

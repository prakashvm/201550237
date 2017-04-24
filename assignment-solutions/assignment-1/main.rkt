#lang racket

(define (list-length lst)
  (if (empty? lst)
      0
      (+ 1 (list-length (rest lst)))))


(define list-sum
  (lambda (lst)
    (if (empty? lst)
        0
        (+ (car lst) (list-sum (cdr lst))))))


(define map-sqr
  (lambda (lst)
    (cond ((null? lst) 0)
          (else (cons (* (car lst) (car lst))
                (map-sqr (cdr lst)))))))


(define member
 (lambda(lis item)
  (cond((null? lis) #f)
      (else(if(pair? (car lis))
               (if(member item (car lis)) #t (member item (cdr lis)))
               (if(equal? item (car lis)) #t (equal? item (cdr lis))))))))

(define (vector-sum v) (for/sum ([x v]) (+ x)))
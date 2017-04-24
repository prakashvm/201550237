#lang racket

(define member
 (lambda(lis item)
  (cond((null? lis) #f)
      (else(if(pair? (car lis))
               (if(member item (car lis)) #t (member item (cdr lis)))
               (if(equal? item (car lis)) #t (equal? item (cdr lis))))))))

(check-equal? (member? '() 'a) #f "test 1")
(check-equal? (member? '(a b c) 'a) #t "test 2")
(check-equal? (member? '("a" "b" "c") 'a) #f "test 3")
(check-equal? (member? '(1 2 3 (5 6)) '(5 6)) #t "test 4")


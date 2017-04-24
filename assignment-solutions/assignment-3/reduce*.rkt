#lang plai

(define equilateral-triangle-area
  (lambda (side)
    (* (/ (sqrt 3) 4) side side)));

(define square-area
  (lambda (side)
    (* side side)))

(define circle-area
  (lambda (radius)
    (* pi radius radius)))

(define square-perimeter
   (lambda (side)
        (* 4 side)))

(define equilateral-triangle-perimeter
    (lambda (side)
        (* 3 side)))

(define circle-perimeter
    (lambda (radius)
        (* 2 pi radius)))

(define (perimeter s)
   (type-case Shape s
     [square (s) (* 4 s)]
     [triangle (s) (* 3 s)]
     [circle (r) (* 2 pi r)]))

(define (area s)
   (type-case Shape s
     [square (s) (* s s)]
     [triangle (s) (* (/ (sqrt 3) 4) s s)]
     [circle (r) (* pi r r)]))


(define-type Shape
  [square (side number?)]
  [circle (radius number?)]
  [triangle (width number?)])

(triangle 3)
(square 3)
(circle 3)


(area (square 4))
(area (triangle 3))
(area (circle 4))

(equal? (area (triangle 3)) (equilateral-triangle-area 3))

(equal? (area (square 4)) (square-area 4))

(equal? (area (circle 4)) (circle-area 4))

(equal? (perimeter (triangle 3)) (equilateral-triangle-perimeter 3))

(equal? (perimeter (square 4)) (square-perimeter 4))

(equal? (perimeter (circle 4)) (circle-perimeter 4))

(equal? (perimeter (square 4)) (circle-area 4))

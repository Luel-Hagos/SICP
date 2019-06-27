; Exercise 1.12: The following pattern of numbers is called
; Pascal’s triangle.
;		1
;	   1 1
;      1 2 1
;     1 3 3 1
;    1 4 6 4 1
;	  . . .
; The numbers at the edge of the triangle are all 1, and each
; number inside the triangle is the sum of the two numbers
; above it.Write a procedure that computes elements of
; Pascal’s triangle by means of a recursive process

(define (factorial n)
(if (= n 1) 1 (* n (factorial (- n 1)))))

(define (pascal-triangle row column)
(if (or (= row column)(= column 0)) 1
	(/ (factorial row) (* (factorial column)(factorial (- row column))))))

; row starts from 0 and column starts from 0

; Test it for the above triangle of the last row
; (pascal-triangle 4 0) 
; $1 = 1
; (pascal-triangle 4 1)
; $2 = 4
; (pascal-triangle 4 2)
; $3 = 6
; (pascal-triangle 4 3)
; $4 = 4
; (pascal-triangle 4 4)
; $5 = 1

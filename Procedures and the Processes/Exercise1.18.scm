; Exercise 1.18: Using the results of Exercise 1.16 and Exercise 1.17, 
; devise a procedure that generates an iterative process for multiplying two integers in terms of adding, doubling, 
; and halving and uses a logarithmic number of steps

(define (double x)(* 2 x))  ; doubles a number (multiplies by 2)
(define (halve x)(/ x 2))   ; halves a number (divides by 2)

(define (* a b)
	(define (iterative a b)
		(cond ((= b 0) 0)
			((even? b) (iterative (double a) (halve b)))
				(else (+ a (iterative a (- b 1))))))
	(iterative a b))

; Sample Tests
; (* 9 10)
; $1 = 90
; (* 989 991)
; $2 = 980099
; (* 0 0)
; $3 = 0
; (* -1 5)
; $4 = -5



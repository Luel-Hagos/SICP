; Exercise 1.15: The sine of an angle (specified in radians)
; can be computed by making use of the approximation sin x ≈ x
; if x is sufficiently small, and the trigonometric identity
; sin x = 3 sinx/3 − 4sinx/3
; to reduce the size of the argument of sin. (For purposes of
; this exercise an angle is considered “sufficiently small” if its
; magnitude is not greater than 0.1 radians.) ese ideas are
; incorporated in the following procedures:
; to reduce the size of the argument of sin. (For purposes of
; this exercise an angle is considered “sufficiently small” if its
; magnitude is not greater than 0.1 radians.) ese ideas are
; incorporated in the following procedures:

(define (cube x) (* x x x))
	(define (p x) (- (* 3 x) (* 4 (cube x))))
		(define (sine angle)
		 (if (not (> (abs angle) 0.1))
			angle
				(p (sine (/ angle 3.0)))))

; a. How many times is the procedure p applied when (sine 12.15) is evaluated?
; p is applied 5 times (4.16666,1.3888888,0.46296296,0.1543,0.05144)
; b. What is the order of growth in space and number of
; steps (as a function of a) used by the process generated
; by the sine procedure when (sine a) is evaluated?
; order of growth=O(log a)
; number of steps= (ceil (\ (log (\ a 0.1) (log 3))))

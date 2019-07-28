;Exercise 1.34: Suppose we define the procedure
(define (f g) (g 2))
;Then we have
(f square)
	; 4
(f (lambda (z) (* z (+ z 1))))
	; 6
;What happens if we (perversely) ask the interpreter to evaluate the combination (f f)? Explain.
; Answer
; it will give as an ERROR: Wrong type to apply: 2
; this means
; 		(f f)
;		(f 2)
;		(2 2)
;		Then it will give us an errot, because 2 is not a function!

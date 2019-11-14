(define (check1 n guess iteration)
(if (= 0 iteration) guess 
	(check1 n 
		(/ (+ (* 2 guess) (/ n (* guess guess))) 3.0)
	 (- iteration 1))))



(define (cube_root n guess iteration)
(check1 n guess iteration))


; as we increse the number of iteration the accuracy will also increse

; sample inputs
(cube_root 8 1 10)
$1 = 2.0
(cube_root 100 1 10)
$2 = 4.64158883361313
(cube_root 1 1 10)
$3 = 1.0






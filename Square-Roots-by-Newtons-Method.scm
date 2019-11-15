
(define (Square_root n guess iteration)
(if (= 0 iteration) guess (Square_root n (/ (+ (/ n (* 1.0 guess)) guess) 2.0) (- iteration 1))))

; as we increse the number of iteration the accuracy will also increse


; sample inputs
(Square_root 100 0.5 6)
$1 = 10.033108838737885
(Square_root 100 0.5 10)
$2 = 10.0
(Square_root 9 2 7)
$3 = 3.0
(Square_root 2 1 10)
$4 = 1.414213562373095



; with out using iteration
(define (Square_root n guess)
(if (> 0.0000001 (abs(- n (* guess guess)))) guess 
	(Square_root n (/ (+ (/ n (* 1.0 guess)) guess) 2.0))))


; sample inputs
(Square_root 100 0.5 6)
$1 = 10.000000000149214
(Square_root 9 2 7)
$2 = 3.0000000000393214
(Square_root 2 1 10)
$3 = 1.4142135623746899





(define (check n guess iteration)
(if (= 0 iteration) guess (check n (/ (+ (/ n (* 1.0 guess)) guess) 2.0) (- iteration 1))))

(define (Square_root n guess iteration)
(check n guess iteration))

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




(define map
  (lambda (f l)
    (if (empty? l)
        '()
        (cons (f (car l))
              (map f (cdr l))))))

; sample inputes
(map (lambda (x) (* x 10)) '(1 2 3 4 5)) ====> (10 20 30 40 50)
(map (lambda (x) (square x)) '(1 2 3 4 5))===> (1 4 9 16 25)

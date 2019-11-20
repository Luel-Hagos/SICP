(define map
  (lambda (f l)
    (if (empty? l)
        '()
        (cons (f (car l))
              (map f (cdr l))))))
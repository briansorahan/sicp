(define (max x y) (if (< x y) y x))

(define (square x) (* x x))

(define (foo x y z)
  (cond ((and (= x (max x y)) (= y (max y z)))
         (+ (square x) (square y)))
        ((and (= x (max x y)) (= z (max y z)))
         (+ (square x) (square z)))
        (else (+ (square y) (square z)))))

(display (foo 3 7 5))
(newline)

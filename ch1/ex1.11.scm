;;        |-- n                             if n < 3
;; f(n) = |
;;        |-- f(n-1) + 2f(n-2) + 3f(n-3)    if n >= 3
;;
;; f(3) = 4
;; f(4) = 11
;; f(5) = 25

(define (f-recur n)
  (cond ((< n 3) n)
        (else (+ (f-recur (- n 1))
                 (* 2 (f-recur (- n 2)))
                 (* 3 (f-recur (- n 3)))))))

(define (f n)
  (cond ((< n 3) n)
        (else (f-iter 25 11 4 n))))

(define (f-iter f1 f2 f3 n)
  (cond ((<= n 3) f3)
        (else (f-iter (+ f1 (* 2 f2) (* 3 f3)) f1 f2 (- n 1)))))
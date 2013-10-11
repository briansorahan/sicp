(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))

;; in mathematical terms,
;;
;; f(x) = 2x
;;
;;        |-- 0 if x = 0
;; g(x) = |
;;        |-- 2^x otherwise
;;
;;        |-- 0 if x = 0
;;        |
;; h(x) = |-- 2 if x = 1
;;        |
;;        |-- 2^(2^(x-1))
;;
;; (h 2) is
;; (A 2 2)
;; (A 1 (A 2 1))
;; (A 1 2)
;; (A 0 (A 1 1))
;; (A 0 2)
;; 4
;;
;; (h 3) is
;; (A 2 3)
;; (A 1 (A 2 2))
;; (A
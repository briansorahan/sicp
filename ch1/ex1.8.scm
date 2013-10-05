;; Newton's method for cube roots
;; if you are trying to approximate (sqrt x) with y, then the next best
;; approximation is ((x / y^2) + 2y) / 3

(define (abs x) (if (< x 0) (- x) x))

(define (square x) (* x x))
(define (cube x) (* x x x))

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cbrt-iter guess x)
  (if (good-enough? (improve guess x) guess)
      guess
      (cbrt-iter (improve guess x) x)))

(define (cbrt x) (cbrt-iter (/ x 3.0) x))


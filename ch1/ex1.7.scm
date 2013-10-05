;; design a new version of sqrt-iter that uses a different version of good-enough?
;; where instead of evaluating whether (- (square guess) x) is less than some
;; threshold, we keep track of how much guess changes between each iteration and
;; wait until this is below some threshold

(define (abs x) (if (< x 0) (- x) x))

(define (square x) (* x x))

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) 0.001))

(define (good-enough-old? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? (improve guess x) guess)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt-iter-old guess x)
  (if (good-enough-old? guess x)
      guess
      (sqrt-iter-old (improve guess x) x)))

(define (sqrt x) (sqrt-iter (/ x 2.0) x))

(define (sqrt-old x) (sqrt-iter-old (/ x 2.0) x))


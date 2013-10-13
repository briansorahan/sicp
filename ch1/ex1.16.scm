(define (best-exp b n)
  (fast-exp-iter b n 1))

(define (fast-exp-iter b n a)
  (cond ((= n 0) 1)
        ((= n 1) a)
        ((even? n) (fast-exp-iter b (/ n 2) (* a (square b))))
        (else (fast-exp-iter b (- n 1) (* a b)))))

(define (fast-exp b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-exp b (/ n 2))))
        (else (* b (fast-exp b (- n 1))))))

(define (square n) (* n n))

(define (even? n) (= (remainder n 2) 0))
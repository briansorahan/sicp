(define (count-change amount) (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= 0 amount) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount (- kinds-of-coins 1))
                 (cc (- amount (first-denomination kinds-of-coins))
                     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(define (cc2 amount kinds-of-coins)
  (cc-iter 1 0 amount kinds-of-coins)

(define (cc-iter kinds total amount max-kinds)
  (cond ((= 0 amount) 1)
        ((or (< amount 0) (= kinds 0)) 0)
        ((= kinds kinds-of-coins) total)
        (else (cc-iter (- amount denom) (- kinds-of-coins 1)
        ;; (else (+ (cc amount (- kinds-of-coins 1))
        ;;          (cc (- amount (first-denomination kinds-of-coins))
        ;;              kinds-of-coins)))))


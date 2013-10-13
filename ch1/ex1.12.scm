;;
;; Computing elements of Pascal's triangle
;;
;;                 1
;;                1 1
;;               1 2 1
;;              1 3 3 1
;;             1 4 6 4 1
;;

(define (pt-elem row pos)
  (cond ((< pos 0) 0)
        ((> pos row) 0)
        ((= row 0) 1)
        (else (+ (pt-elem (- row 1) (- pos 1))
                 (pt-elem (- row 1) pos)))))
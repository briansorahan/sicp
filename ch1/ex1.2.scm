#!/usr/bin/guile -s
!#
;; translate
;; 5 + 4 + (2 - (3 - (6 + (4/5))))
;; _______________________________
;;     3(6 - 2)(2 - 7)
;;
;; into prefix form

(/ (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5)))))) (* 3 (- 6 2) (- 2 7)))
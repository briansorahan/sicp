;;
;; Prove Fib(n) is the closest integer to (phi^n) / rad(5)
;; where phi = (1 + rad(5)) / 2
;;
;; Hint:
;; Let gam = (1 - rad(5)) / 2
;; Use induction to show that Fib(n) = (phi^n - gam^n) / rad(5)
;; Also phi * gam = -1
;;
;; Induction proof:
;; Let g(n) = (phi^n - gam^n) / rad(5)
;; Fib(0) = g(0) = 0
;; Fib(1) = 1
;; g(1) = (phi - gam) / rad(5) = 1
;;
;; Assume Fib(n) = g(n) and show Fib(n+1) = g(n+1)
;;
;; Fib(n+1) = Fib(n) + Fib(n-1) = g(n) + g(n-1)
;; ((phi^n - gam^n) / rad(5)) + ((phi^(n-1) - gam^(n-1)) / rad(5))
;; (phi^n - gam^n + phi^(n-1) - gam^(n-1)) / rad(5)
;; (((phi^(n+1) + phi^n) / phi) - ((gam^(n+1) + gam^n) / gam)) / rad(5)

;; ((gam * phi^(n+1)) + (gam * phi^n) - (phi * gam^(n+1)) - (phi * gam^n))
;; _______________________________________________________________________
;;                        (phi * gam * rad(5))

;; (phi^n + phi^(n-1) - gam^n - gam(n-1))
;; --------------------------------------
;;                rad(5)

;; phi^n + phi^(n-1) = (phi^n)(1 + 1/phi) = (phi^n)(phi + 1)/phi
;; = (phi^(n-1))(phi + 1) = ...
;; 
(defvar sumOfSquares 0)
(defvar sumOfNums 0)
(defvar totalNums 100)
(loop for num from 1 to totalNums do
      (setq sumOfSquares (+ sumOfSquares (* num num)))
      )
;;Our favorite identity
(setq sumOfNums (/ (* totalNums (+ 1 totalNums)) 2))
(setq totalDiff (abs (- (* sumOfNums sumOfNums) sumOfSquares)))
(print totalDiff)

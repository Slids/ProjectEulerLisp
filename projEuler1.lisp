(defvar sum 0)
(loop for a from 3 to 999
      do (if (or (= (mod a 3) 0) (= (mod a 5) 0))
	     (setq sum (+ sum a))
	   )
)
(write sum)

(defvar primeList nil)

(defun isPrime (p) "is p prime?"
       (if (= p 1) (return-from isPrime t))
       (setq smallP (isqrt p))
       (loop for a in primeList
	     until (> a smallP)
	     do (if (= (mod p a) 0)
		    (return-from isPrime nil)
		  )
	     )
       (setq primeList (append primeList (list p)))
       (return-from isPrime 'true))


(setq startTime (get-internal-real-time))
(defvar sum 0)
(defvar lessThen 200000)
(loop for i from 2 to (- lessThen 1) do
      (if (isPrime i)
	  (setq sum (+ sum i))
	))
(setq endTime (get-internal-real-time))
(print sum)
(write-line "Time taken:")
(print (float (/ (- endTime startTime) internal-time-units-per-second)))










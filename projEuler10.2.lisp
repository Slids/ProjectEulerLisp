(defvar primeList nil)

(defun isPrime (p) "is p prime?"
       (if (= p 1) (return-from isPrime t))
       (loop for n from 2 to (isqrt p) do
	     (if (= (mod p n) 0)
		 (return-from isPrime nil)))
       (return-from isPrime 't))

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

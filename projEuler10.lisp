(defvar primeList nil)
(defvar lessThen 200000)
(defvar slessThen (isqrt lessThen))
(defvar smallP 0)

(defun isPrime (p) "is p prime?"
       (if (= p 1) (return-from isPrime t))
       (setq smallP (isqrt p))
       (loop for a in primeList
	     until (> a smallP)
	     do (if (= (mod p a) 0)
		    (return-from isPrime nil)))
       (if (<= p sLessThen) (setq primeList (append primeList (list p))))
       (return-from isPrime 'true))

(defun main () "Main"
       (defvar sum 0)
       (defvar startTime (get-internal-real-time))
       (loop for i from 2 to (- lessThen 1) do
	     (if (isPrime i)
		 (setq sum (+ sum i))
	       ))
       (defvar endTime (get-internal-real-time))
       (print sum)
       (write-line "Time taken:")
       (print (float (/ (- endTime startTime) internal-time-units-per-second)))
       )

(main)

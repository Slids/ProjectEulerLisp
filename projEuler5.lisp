;; First we will define the primes from 2 to 20
(defvar primeList (list 2 3 5 7 11 13 17 19))

(defun getFactor (p) "Provids a list of the factors"
       (setq factors nil)
       (loop for prime in primeList do
	     (block breakOut
		    (loop
		     (cond ((and (= (mod p prime) 0) (/= p 0))
			    (setq factors (cons prime factors))
			    (setq p (/ p prime))
			    )
			   )
		     (cond ((or (/= (mod p prime) 0) (= p 1))
			    (return-from breakOut)
			    ))))
	     (if (= p 1) (return-from getFactor factors))
	     ))

(defvar currFactors nil)
(loop for curr from 2 to 20 do
      (setq currFactList (getFactor curr))
      (loop for prime in primeList do
	    (setq seenInCurr (count prime currFactList))
	    (setq inCurrFactors (count prime currFactors))
	    (loop for a from 1 to (- seenInCurr inCurrFactors) do
		  (setq currFactors (cons prime currFactors))
		  )
	    )
      )
(defvar sum 1)
(loop while currFactors do
      (setq sum (* sum (car currFactors)))
      (setq currFactors (cdr currFactors))
      )
(print sum)

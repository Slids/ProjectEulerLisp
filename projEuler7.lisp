(defun isPrime-p (p) "is p prime?"
       (if (= p 1) (return-from isPrime-p t))
       (loop for a from 2 to (isqrt p)
	     do (if (= (mod p a) 0)
		    (return-from isPrime-p nil)
		  )
	     )
       (return-from isPrime-p 'true)
       )

(defvar atN 0)
(defvar nPrime 0)
(defvar counter 2)
(loop
 until (= atN 10001)
 when (isPrime-p counter)
 do (incf atN) (setq nPrime counter)
 
 do (incf counter)
 )
(print nPrime)

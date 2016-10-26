(defun isPalindrome (p) "Is this a palindrome?"
       (setq myList nil)
       (block loopBlock
	      (loop
	       (setq myList (cons (mod p 10) myList))
	       (setq p (floor (/ p 10)))
	       (if (= p 0) (return-from loopBlock))
	       )
	      )
       (setq sList (reverse myList))
       (loop for curr in myList do
	     (if (/= curr (car sList)) (return-from isPalindrome nil))
	     (setq sList (cdr sList))
	     )
       (return-from isPalindrome 't)
       )


(defconstant numDigits 3)
(defvar largestPal 0)
(setq smallExp (- numDigits 1))
(setq small (* (expt 10 smallExp) (expt 10 smallExp)))
(loop for a from (expt 10 smallExp) to (- (expt 10 numDigits) 1) do
      (loop for b from (expt 10 smallExp) to a do
	    (setq multiple (* a b))
	    (if (and (isPalindrome multiple) (> multiple largestPal))
		(setq largestPal multiple)
	      )
	    )
      )
(write largestPal)

(defvar numDiv 0)


					;Simple helper functino
(defun numDivisors (number) "Get the number of divisors of a number"
       (setq numDiv 2)
       (loop for n from 2 to (/ number 2) do
	     (if (= 0 (mod number n))
		 (incf numDiv))
	     )
       (return-from numDivisors numDiv))

(defun main () "Main" 
  (defvar triNum 0)
  (defvar triNumIter 0)
  (loop
					;First increment the iterator
   (incf triNumIter)
					;Get the next triangular number
   (setq triNum (+ triNum triNumIter))
   (print triNum)
   (print (numDivisors triNum))
   (terpri)
   (when (> (numDivisors triNum) 500)
     (return triNum))
   )
  (print triNum))

(main)

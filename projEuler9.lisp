(loop for a from 1 to 498 do
      (loop for b from a to 499
      do
      (setq c (- 1000 (+ a b)))
      (if (and (> c b) (= (+ (* a a) (* b b)) (* c c)))
      (print (* a b c)))
      ))

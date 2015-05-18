(ql:quickload :iterate)

(defun locate-largest-prime-factor (target-number)
	(let* ((prime-numbers '(2)) (largest-prime-factor 1) (current-prime-factor (generate-next-prime-number prime-numbers)))
		(loop
			 (if ())
			 (if (mod ))
			 )
		(if (= largest-prime-factor 1)
				(setq largest-prime-factor target-number))
		largest-prime-factor))

(defun generate-next-prime-number (prime-numbers)
	(let* ((current-prime-number (1+ (first prime-numbers))) (has-prime-factor nil))
		(loop
			 (if has-prime-factor
					 (break))
			 (iterate (for prime-number in prime-numbers)
								(if (= (mod )))
								))
		(if has-prime-factor
				)
		))
(defun fibonacci ( one-back two-back even-number-sum )
	(let* ((current-number (+ one-back two-back)))
		(print current-number)
		(cond ((< current-number 4000000)
					 (if (= (mod current-number 2) 0)
							 (setq even-number-sum (+ even-number-sum current-number)))
					 (fibonacci current-number one-back even-number-sum))
					(t
					 even-number-sum))))

(print (fibonacci 1 1 0))
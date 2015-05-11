(defun fibonacci ( one-back two-back even-number-sum )
	(let* ((current-number (+ one-back two-back)))
		(if (= (mod current-number 2))
				(setq even-number-sum (+ even-number-sum current-number)))
		(if (> current-number 40)
				even-number-sum
				(fibonacci current-number one-back even-number-sum))))

(print (fibonacci 1 1 0))
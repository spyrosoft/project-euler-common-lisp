(defvar multiples-total 0)
(defvar counter)

(dotimes (current-iteration 999)
	(setq counter (1+ current-iteration))
	(cond ((= (mod counter 3) 0) (setq multiples-total (+ multiples-total counter)))
				((= (mod counter 5) 0) (setq multiples-total (+ multiples-total counter)))))

(print multiples-total)
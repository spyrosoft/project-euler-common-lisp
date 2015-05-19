;The prime factors of 13195 are 5, 7, 13 and 29.
;What is the largest prime factor of the number 600851475143 ?

(ql:quickload :iterate)

; Third attempt:

(defun generate-next-prime-number (current-prime-test prime-numbers)
	(let ((prime-number))
		(iter (for prime-number in prime-numbers)
					(cond ((not (= (mod current-prime-test prime-number) 0))
								 current-prime-test)
								((generate-next-prime-number (1+ current-prime-test) prime-numbers))
								))))

(defun locate-largest-prime-factor (target-number)
	(do ((prime-numbers
				'(2)
				(push prime-numbers (generate-next-prime-number (1+ (first prime-numbers)) prime-numbers))))
			((= (mod target-number (first prime-numbers)) 0)
			 (/ target-number (first prime-numbers)))))

; Second attempt - trying to stuff this problem into the do construct - unsuccessful

;(defun second-generate-next-prime-number (prime-numbers)
;	(do ((current-prime-test
;				(1+ first prime-numbers)
;				(iter (for prime-number in prime-numbers)
;							(if (= (mod current-prime-test prime-number) 0)
;									(setq current-prime-test (1+ current-prime-test))
;									(setq has-prime-factor t)))
;			(if has-prime-factor
;					(break))
;			))
;		current-prime-test
;	))

; First attempt:

;(defun first-locate-largest-prime-factor (target-number)
;	(let* ((prime-numbers '(2)) (largest-prime-factor 1) (current-prime-factor (generate-next-prime-number prime-numbers)))
;		(loop
;			 (if ())
;			 (if (mod ))
;			 )
;		(if (= largest-prime-factor 1)
;				(setq largest-prime-factor target-number))
;		largest-prime-factor))
;
;(defun first-generate-next-prime-number (prime-numbers)
;	(let* ((current-prime-number (1+ (first prime-numbers))) (has-prime-factor nil))
;		(loop
;			 (if has-prime-factor
;					 (break))
;			 (iterate (for prime-number in prime-numbers)
;								(if (= (mod )))
;								))
;		(if has-prime-factor
;				)
;		))
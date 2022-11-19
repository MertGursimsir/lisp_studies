(defun fibonacci (n &optional (a 0) (b 1))
  (if (zerop n)
      nil
      (cons a (fibonacci (1- n) b (+ a b)))
  )
)

(write (fibonacci 2)) ; ==> (0 1 1 2 3)
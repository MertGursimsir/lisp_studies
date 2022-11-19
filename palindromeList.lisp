;program to check if given list is palindrome
(defun test(liste end)
    (if (<= 0 end)
        (cons (nth end liste) (test liste (1- end)))
    )
)

(setq a '(1 2 2 1))
(setq b (test a (1- (length a))))

(if (equal a b)
    (write "yess")
)

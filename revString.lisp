;program to reverse given string
(defun rev(str &optional (start 0) (end (1- (length str))))
    (if (<= start end)
        (if (char-equal (char str start) (char str end))
            (rev str (1+ start) (1- end))
            nil
        )
        t
    )
)

(setq a "2testsets")
(write (rev a))

(defun test(liste end)
    (when (<= 0 end)
        (if (listp (nth end liste))
            (cons (test (nth end liste) (1- (length (nth end liste)))) (test liste (1- end)))
            (cons (nth end liste) (test liste (1- end)))
        )
        
    )
)

(setq a '(1 2 2 1 3 (1 2 3) 6 (1 1 (1 4))))
(write (test a (1- (length a))))

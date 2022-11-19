;program to check number of occurences of given element in the complex list
(defun test (liste element)
    (if (not (null (car liste)))
        (if (listp (car liste))
            (+ (test (car liste) element) (test (cdr liste) element))
            (if (equal (car liste) element)
                (1+ (test (cdr liste) element))
                (test (cdr liste) element)
            )
        )
        0
    )
)

(write (test '(1 (3 5) (3 7 8) 2 3 (3 3)) 3))

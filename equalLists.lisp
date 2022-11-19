;program to check if two complex lists are equal
(defun test(list1 list2)
    (if (= (length list1) 0)
        (if (= (length list2) 0)
            t
            nil
        )
        (if (listp (car list1))
            (if (listp (car list2))
                (if (test (car list1) (car list2))
                    (test (cdr list1) (cdr list2))
                    nil
                )
                nil
            )
            (if (listp (car list2))
                nil
                (progn
                    (if (equal (car list1) (car list2))
                        (test (cdr list1) (cdr list2))
                        nil
                    )
                )
            )
        )
    )
)

(write (test '(a (b c) d) '()))

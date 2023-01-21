(defun changep(liste)
    (if (> (length liste) 1)
        (cons (nth 1 liste) (cons (car liste) (changep (cddr liste))))
        liste
    )
)

(write (changep '(1 2 3 4 5)))
(defun sanitize-strip-cr ()
    (interactive)
    (while (re-search-forward "\r" nil t)
        (replace-match "")))

(defun sanitize-implicit-utf-8-unix ()
    (interactive)
    (delete-trailing-whitespace)
    (untabify (point-min) (point-max))
    (sanitize-strip-cr))

(defun sanitize-explicit-utf-8-unix ()
    (interactive)
    (delete-trailing-whitespace)
    (sanitize-strip-cr))

(defun display-reset-window ()
    (interactive)
    (when(window-system)
        (set-frame-size     (selected-frame) 100 60)
        (set-frame-position (selected-frame) 0 0)
        (tool-bar-mode)
        (menu-bar-mode)))


(display-reset-window)
(set-default 'truncate-lines t)
(load-theme 'monokai 1)

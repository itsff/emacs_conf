(defun editing-unindent ()
    (interactive)
    (if (use-region-p)
        (indent-rigidly
            (utils-region-whole-line-beginning)
            (utils-region-whole-line-end)
            (- 0 tab-width))
        (indent-rigidly (line-beginning-position) (line-end-position) (- 0 tab-width)))
    (setq deactivate-mark nil))

(defun editing-indent ()
    (interactive)
    (if (use-region-p)
        (indent-rigidly
            (utils-region-whole-line-beginning)
            (utils-region-whole-line-end)
            tab-width)
        (indent-rigidly (line-beginning-position) (line-end-position) tab-width))
    (setq deactivate-mark nil))

(defun editing-smart-home ()
    (interactive)
    (if (eq (save-excursion (beginning-of-line-text) (point)) (point))
        (beginning-of-line)
        (beginning-of-line-text)))

(put 'editing-smart-home 'CUA 'move)

(defun editing-region-length ()
    "Compute the length of a region"
    (interactive)
    (message (format "%d" (- (region-end) (region-beginning)))))


;; Shift the selected region right if distance is postive, left if
;; negative

(defun shift-region (distance)
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      ;; Tell the command loop not to deactivate the mark
      ;; for transient mark mode
      (setq deactivate-mark nil))))

(defun shift-right ()
  (interactive)
  (shift-region 1))

(defun shift-left ()
  (interactive)
    (shift-region -1))

(defun align-to-equals (begin end)
  "Align region to equal signs"
   (interactive "r")
   (align-regexp begin end "\\(\\s-*\\)=" 1 1 ))

;(global-set-key [C-S-right] 'shift-right)
;(global-set-key [C-S-left] 'shift-left)

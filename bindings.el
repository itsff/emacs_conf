(defvar bindings-c-mode-keymap (make-keymap) "bindings-c-mode keymap")

(define-key bindings-c-mode-keymap (kbd "C-\\")       nil)
(define-key bindings-c-mode-keymap (kbd "C-\\ u")     'tagging-update-tags)
(define-key bindings-c-mode-keymap (kbd "C-\\ f")     'tagging-update-file-cache)
(define-key bindings-c-mode-keymap (kbd "C-\\ k")     'buffers-close-all)
(define-key bindings-c-mode-keymap (kbd "C-\\ a")     'align-current)
(define-key bindings-c-mode-keymap (kbd "C-\\ s")     'tags-apropos)
(define-key bindings-c-mode-keymap (kbd "C-\\ TAB")   'file-cache-minibuffer-complete)
(define-key bindings-c-mode-keymap (kbd "<C-tab>")    'editing-indent)
(define-key bindings-c-mode-keymap (kbd "<backtab>")  'editing-unindent)
(define-key bindings-c-mode-keymap (kbd "RET")        'align-newline-and-indent)
(define-key bindings-c-mode-keymap (kbd "<S-return>") 'newline-and-indent)
(define-key bindings-c-mode-keymap (kbd "<home>")     'editing-smart-home)
(define-key bindings-c-mode-keymap (kbd "M-.")        'tagging-find-tag-now)
(define-key bindings-c-mode-keymap (kbd "C-.")        'tagging-find-tag-other-window-now)
(define-key bindings-c-mode-keymap (kbd "C->")        'tagging-search-tags)

(define-minor-mode
    bindings-c-mode
    "c-mode bindings"
    nil
    nil
    bindings-c-mode-keymap)


(defvar bindings-dev-mode-keymap (make-keymap) "bindings-dev-mode keymap")

(define-key bindings-dev-mode-keymap (kbd "C-\\")       nil)
(define-key bindings-dev-mode-keymap (kbd "C-\\ u")     'tagging-update-tags)
(define-key bindings-dev-mode-keymap (kbd "C-\\ f")     'tagging-update-file-cache)
(define-key bindings-dev-mode-keymap (kbd "C-\\ k")     'buffers-close-all)
(define-key bindings-dev-mode-keymap (kbd "C-\\ a")     'align-current)
(define-key bindings-dev-mode-keymap (kbd "C-\\ s")     'tags-apropos)
(define-key bindings-dev-mode-keymap (kbd "C-\\ TAB")   'file-cache-minibuffer-complete)
(define-key bindings-dev-mode-keymap (kbd "<C-tab>")    'editing-indent)
(define-key bindings-dev-mode-keymap (kbd "<backtab>")  'editing-unindent)
(define-key bindings-dev-mode-keymap (kbd "RET")        'newline-and-indent)
(define-key bindings-dev-mode-keymap (kbd "<home>")     'editing-smart-home)
(define-key bindings-dev-mode-keymap (kbd "M-.")        'tagging-find-tag-now)
(define-key bindings-dev-mode-keymap (kbd "C-.")        'tagging-find-tag-other-window-now)
(define-key bindings-dev-mode-keymap (kbd "C->")        'tagging-search-tags)

(define-minor-mode
    bindings-dev-mode
    "dev-mode bindings"
    nil
    nil
    bindings-dev-mode-keymap)


(defvar bindings-basic-mode-keymap (make-keymap) "bindings-basic-mode keymap")

(define-key bindings-basic-mode-keymap (kbd "C-\\")      nil)
(define-key bindings-basic-mode-keymap (kbd "C-\\ u")    'tagging-update-tags)
(define-key bindings-basic-mode-keymap (kbd "C-\\ f")    'tagging-update-file-cache)
(define-key bindings-basic-mode-keymap (kbd "C-\\ k")    'buffers-close-all)
(define-key bindings-basic-mode-keymap (kbd "C-\\ s")    'tags-apropos)
(define-key bindings-basic-mode-keymap (kbd "C-\\ TAB")  'file-cache-minibuffer-complete)
(define-key bindings-basic-mode-keymap (kbd "<C-tab>")   'editing-indent)
(define-key bindings-basic-mode-keymap (kbd "<backtab>") 'editing-unindent)
(define-key bindings-basic-mode-keymap (kbd "<home>")    'editing-smart-home)
(define-key bindings-basic-mode-keymap (kbd "M-.")       'tagging-find-tag-now)
(define-key bindings-basic-mode-keymap (kbd "C-.")       'tagging-find-tag-other-window-now)
(define-key bindings-basic-mode-keymap (kbd "C->")       'tagging-search-tags)

(define-minor-mode
    bindings-basic-mode
    "basic-mode bindings"
    nil
    nil
    bindings-basic-mode-keymap)


(defvar bindings-minibuffer-mode-keymap (make-keymap) "bindings-minibuffer-mode keymap")

(define-key bindings-minibuffer-mode-keymap (kbd "C-\\")     nil)
(define-key bindings-minibuffer-mode-keymap (kbd "C-\\ u")   'tagging-update-tags)
(define-key bindings-minibuffer-mode-keymap (kbd "C-\\ f")   'tagging-update-file-cache)
(define-key bindings-minibuffer-mode-keymap (kbd "C-\\ k")   'buffers-close-all)
(define-key bindings-minibuffer-mode-keymap (kbd "C-\\ TAB") 'file-cache-minibuffer-complete)

(define-minor-mode
    bindings-minibuffer-mode
    "minibuffer-mode bindings"
    nil
    nil
    bindings-minibuffer-mode-keymap)
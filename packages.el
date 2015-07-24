(require 'package)

(setq-default package-user-dir "~/.emacs.d/.emacs_packages")

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless (package-installed-p 'scala-mode2)
    (package-refresh-contents)
    (ignore-errors (package-install 'scala-mode2)))

(unless (package-installed-p 'company)
    (package-refresh-contents)
    (ignore-errors (package-install 'company)))

(unless (package-installed-p 'path-headerline-mode)
    (package-refresh-contents)
    (ignore-errors (package-install 'path-headerline-mode)))

(unless (package-installed-p 'web-mode)
    (package-refresh-contents)
        (ignore-errors (package-install 'web-mode)))

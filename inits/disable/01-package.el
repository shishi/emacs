;;; package

(setq package-user-dir (concat user-emacs-directory "elisp/package"))
(fset 'package-desc-vers 'package--ac-desc-version)

(require 'package)

;; add package repository
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

;; set load-path for packages
(package-initialize)

;; (package-refresh-contents)

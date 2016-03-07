;;; init.el

;; load-path
(setq load-path
      (append
       (list
        ;; (expand-file-name "~/.emacs.d/")
        (expand-file-name "~/.emacs.d/elisp/")
        (expand-file-name "~/.emacs.d/elisp/el-get/el-get")
        )
       load-path))

;; pallet
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;; ;; need initialize before init-loader
;; (setq package-user-dir (concat user-emacs-directory "elisp/package"))
;; (package-initialize)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
;; (init-loader-show-log-after-init nil)

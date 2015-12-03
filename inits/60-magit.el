;;; magit
(require 'magit)

(setq magit-git-executable "git")
(setq magit-emacsclient-executable "emacsclient")

(define-key global-map (kbd "C-c m") 'magit-status)
(define-key global-map (kbd "C-x m") 'magit-file-popup)

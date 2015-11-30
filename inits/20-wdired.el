;;; wdired
(require 'wdired)
(setq wdired-allow-to-change-permissions t)

(add-hook 'helm-mode-hook
    (lambda () (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)))
;; (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
;; (add-hook 'helm-mode-hook
;;     (lambda () (local-set-key [tab] 'helm-do-something)))

;;; flycheck
(require 'flycheck)

;; (smartrep-define-key
;;     global-map "C-c" '(("M-n" . 'flycheck-next-error)
;;                        ("M-p" . 'flycheck-previous-error)))
;(setq flycheck-rubocoprc "config/rubocop.yml")
;;; Code
(flycheck-def-config-file-var flycheck-rubocoprc ruby-rubocop "config/rubocop.yml")

;; shell-popup

(require 'shell-pop)

(define-key global-map (kbd "C-c C-z") 'shell-pop)

;; multi-term に対応
(add-to-list 'shell-pop-internal-mode-list '("multi-term" "*terminal<1>*" '(lambda () (multi-term))))
(shell-pop-set-internal-mode "multi-term")

(shell-pop-set-internal-mode-shell shell-file-name)
(setq shell-pop-window-height 40)

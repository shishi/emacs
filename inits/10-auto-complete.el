;; auto-complete
(require 'pos-tip)
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/el-get/auto-complete/dict")

(ac-config-default)
(setq ac-auto-start t)

(setq ac-delay 0.3)
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 0.3)

(setq ac-use-menu-map t)
(define-key ac-mode-map (kbd "M-RET") 'auto-complete)
(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)
(define-key ac-completing-map (kbd "C-m") 'ac-complete)

;; 日本語入力中は off
(defadvice ac-on-post-command
  (around check-whether-input-type-is-japanese activate)
  (or current-input-method ad-do-it))

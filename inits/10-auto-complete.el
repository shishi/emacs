;; auto-complete
(require 'pos-tip)
(require 'auto-complete-config)
;; (global-auto-complete-mode t)

;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/el-get/auto-complete/dict")

;; (ac-config-default)
;; (setq ac-auto-start t)

;; (setq ac-delay 0.3)
;; (setq ac-use-quick-help t)
;; (setq ac-quick-help-delay 0.3)
;; ;; 補完メニュー表示時にC-n/C-pで補完候補選択
;; (setq ac-use-menu-map t)
;; (setq ac-use-fuzzy t)

;; (define-key ac-mode-map (kbd "M-<return>") 'auto-complete)

;; ;; 日本語入力中は off
;; (defadvice ac-on-post-command
;;   (around check-whether-input-type-is-japanese activate)
;;   (or current-input-method ad-do-it))

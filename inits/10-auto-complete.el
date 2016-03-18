;; auto-complete
(require 'pos-tip)
(require 'auto-complete-config)

(ac-config-default)

;; (global-auto-complete-mode t)

(setq ac-auto-start t)
(setq ac-delay 0.3)
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 0.3)
(setq ac-candidate-limit nil)
(setq ac-use-fuzzy t)
(ac-flyspell-workaround)

;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/el-get/auto-complete/dict")

;; 補完メニュー表示時にC-n/C-pで補完候補選択
(setq ac-use-menu-map t)

(define-key global-map (kbd "M-<return>") 'auto-complete)

;; ;; 日本語入力中は off
;; (defadvice ac-on-post-command
;;   (around check-whether-input-type-is-japanese activate)
;;   (or current-input-method ad-do-it))

;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                         (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

(setq ac-sources (append '(ac-source-filename) ac-sources))

(defun my-ac-ruby-mode-setup ()
  (setq ac-sources (append '(ac-source-yasnippet) ac-sources)))
(add-hook 'ruby-mode-hook 'my-ac-ruby-mode-setup)
(add-hook 'enh-ruby-mode-hook 'my-ac-ruby-mode-setup)

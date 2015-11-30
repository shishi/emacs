;; multi-term
(require 'multi-term nil t)
 (setq multi-term-program "zsh")
;;  (setenv "TERMINFO" "~/.terminfo")

(defun term-mode-hook-for-muilti-term-setting ()
  ;; C-h を term 内文字削除にする
  (define-key term-raw-map (kbd "C-h") 'term-send-backspace)
  ;; C-y を term 内ペーストにする
  (define-key term-raw-map (kbd "C-y") 'term-paste)
  (define-key term-raw-map (kbd "C-c C-n") 'multi-term-next)
  (define-key term-raw-map (kbd "C-c C-p") 'multi-term-prev))
(add-hook 'term-mode-hook 'term-mode-hook-for-muilti-term-setting)

(custom-set-variables
     '(term-default-bg-color nil)        ;; background color (black)
     '(term-default-fg-color nil))       ;; foreground color (yellow)

;; ;; emacs 起動時に shell を起動
;; (add-hook 'after-init-hook (lambda () (multi-term)))

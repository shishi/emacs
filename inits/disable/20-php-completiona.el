;; php-completion

(defun php-mode-hook-for-php-completion ()
  (require 'php-completion)
  (php-completion-mode t)
  ;; php-completionの補完実行キーバインドの設定
  ;; (define-key php-mode-map (kbd "M-RET") 'phpcmp-complete)
  (make-variable-buffer-local 'ac-sources)
  (add-to-list 'ac-sources 'ac-source-php-completion)
  (auto-complete-mode t))
(add-hook 'php-mode-hook 'php-mode-hook-for-php-completion)

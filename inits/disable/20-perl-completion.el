;; perl-completion

;; 単独で使用する場合
;; (add-hook 'cperl-mode-hook
;;           (lambda()
;;             (require 'perl-completion)
;;             (perl-completion-mode t)
;;             (define-key cperl-mode-map (kbd "C-c C-c e") 'plcmp-cmd-eval-buffer)
;;             (define-key cperl-mode-map (kbd "M-RET") 'plcmp-cmd-smart-complete)            ))

;; auto-complete と併用する場合
(defun cperl-mode-hook-for-perl-completion ()
  (require 'perl-completion)
  (perl-completion-mode t)
  (make-variable-buffer-local 'ac-sources)
  (add-to-list 'ac-sources 'ac-source-perl-completion)
  (auto-complete-mode t))
(add-hook 'cperl-mode-hook 'cperl-mode-hook-for-perl-completion)

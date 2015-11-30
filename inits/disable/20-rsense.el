;; rsense

;; UNIX系システムでの例
;; (setq rsense-home "/home/tomo/opt/rsense-0.2")
;; あるいは
;; (setq rsense-home (expand-file-name "~/opt/rsense-0.2"))
;; Windowsでの例
;; (setq rsense-home "C:\\rsense-0.2")
;; (add-to-list 'load-path (concat rsense-home "/etc"))
(setq rsense-home (expand-file-name "~/.emacs.d/rsense"))
(setq rsense-rurema-home "~/.emacs.d/rsense/src/rurema")
(setq rsense-rurema-refe "refe-1_9_2")

(require 'rsense)

;; auto-complete-mode利用
(defun ruby-mode-hook-for-rsense ()
  (make-variable-buffer-local 'ac-sources)
  (setq ac-sources (append '(ac-source-yasnippet
                             ac-source-rsense-method
                             ac-source-rsense-constant
                             ac-source-imenu)
                           ac-sources))
  (auto-complete-mode t))
(add-hook 'ruby-mode-hook 'ruby-mode-hook-for-rsense)
(add-hook 'enh-ruby-mode-hook 'ruby-mode-hook-for-rsense)

;; M-RET で補完
;; (add-hook 'ruby-mode-hook
;;            (lambda ()
;;              (local-set-key (kbd "M-RET") 'ac-complete-rsense)))

;;; haml-mode
;; (require 'haml-mode)
(autoload 'haml-mode "haml-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
;; (add-to-list 'auto-mode-alist '("\\.html\.haml$" . haml-mode))

;; ;; auto launching for auto-complete
;; (add-to-list 'ac-modes 'haml-mode)

(defun haml-mode-hook-for-haml-mode-setting ()
  (setq indent-tabs-mode nil)
  (define-key haml-mode-map (kbd "C-m") 'newline-and-indent))

(add-hook 'haml-mode-hook 'haml-mode-hook-for-haml-mode-setting)

;;; scss-mode

(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . scss-mode))

(add-hook 'scss-mode-hook 'ac-css-mode-setup)

(add-hook 'scss-mode-hook 'scss-mode-hook-setting)
(defun scss-mode-hook-setting ()
  (define-key scss-mode-map "{" 'my-css-electric-pair-brace)
  (define-key scss-mode-map ";" 'my-semicolon-ret)
  (setq css-indent-offset 2)
  (setq scss-compile-at-save nil))

;; (add-to-list 'ac-modes 'scss-mode)

;; http://d.hatena.ne.jp/CortYuming/20120110/p1
;; CSS
(defun my-css-electric-pair-brace ()
  (interactive)
  (insert "{")(newline-and-indent)
  (newline-and-indent)
  (insert "}")
  (indent-for-tab-command)
  (previous-line)(indent-for-tab-command)
  )

(defun my-semicolon-ret ()
  (interactive)
  (insert ";")
  (newline-and-indent))

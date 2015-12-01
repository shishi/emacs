;;; rainbow-delimiters
(require 'rainbow-delimiters)

;; (custom-set-faces '(rainbow-delimiters-depth-1-face ((t (:foreground "#7f8c8d")))))

(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'ruby-mode-hook #'rainbow-delimiters-mode)
(add-hook 'enh-ruby-mode-hook #'rainbow-delimiters-mode)

;; 括弧の色を強調する設定
(require 'cl-lib)
(require 'color)
(defun rainbow-delimiters-using-stronger-colors ()
  (interactive)
  (cl-loop
   for index from 1 to rainbow-delimiters-max-face-count
   do
   (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
    (cl-callf color-saturate-name (face-foreground face) 30))))
(add-hook 'emacs-startup-hook 'rainbow-delimiters-using-stronger-colors)

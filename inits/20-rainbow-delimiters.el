;;; rainbow-delimiters
(require 'rainbow-delimiters)

;; (custom-set-faces '(rainbow-delimiters-depth-1-face ((t (:foreground "#7f8c8d")))))

(add-hook 'elisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'enh-ruby-mode-hook #'rainbow-delimiters-mode)
(add-hook 'coffee-mode-hook #'rainbow-delimiters-mode)

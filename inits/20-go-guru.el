;;; go-guru

(require 'go-guru)
(add-hook 'go-mode-hook #'go-guru-hl-identifier-mode)

;;; highlight-symbol
(require 'highlight-symbol)

;; (setq highlight-symbol-colors '("DarkOrange" "DodgerBlue1" "DeepPink1"))

(add-hook 'emacs-lisp-mode-hook 'highlight-symbol-mode)
(add-hook 'ruby-mode-hook 'highlight-symbol-mode)
(add-hook 'enh-ruby-mode-hook 'highlight-symbol-mode)
(add-hook 'yaml-mode-hook 'highlight-symbol-mode)
(add-hook 'coffee-mode-hook 'highlight-symbol-mode)

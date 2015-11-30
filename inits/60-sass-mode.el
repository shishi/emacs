;; sass-mode

(require 'sass-mode)
(add-hook 'sass-mode-hook 'flymake-sass-load)
(add-hook 'sass-mode-hook 'ac-css-mode-setup)
(add-to-list 'ac-modes 'sass-mode)

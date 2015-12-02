;;; robe

(require 'robe)

(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'enh-ruby-mode-hook 'robe-mode)

(eval-after-load 'company '(push 'company-robe company-backends))
(add-hook 'robe-mode-hook 'ac-robe-setup)

;;; ruby-block
;; (require 'ruby-block)

(defun ruby-mode-hook-for-ruby-block ()
  (require 'ruby-block)
  (ruby-block-mode t)
  (setq ruby-block-highlight-toggle t)
  (setq ruby-block-delay 0.1))

(add-hook 'ruby-mode-hook 'ruby-mode-hook-for-ruby-block)
(add-hook 'enh-ruby-mode-hook 'ruby-mode-hook-for-ruby-block)

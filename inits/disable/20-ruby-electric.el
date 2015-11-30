;; yasnippet に干渉するので使わない
;;  ruby-electric.el --- electric editing commands for ruby files
(defun ruby-mode-hook-for-ruby-electric ()
  (require 'ruby-electric)
  (ruby-electric-mode t))
(add-hook 'ruby-mode-hook 'ruby-mode-hook-for-ruby-electric)

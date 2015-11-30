;; inf-ruby
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")

(defun ruby-mode-hook-for-inf-ruby ()
  (inf-ruby-keys))
(add-hook 'ruby-mode-hook 'ruby-mode-hook-for-inf-ruby)

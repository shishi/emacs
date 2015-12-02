;; inf-ruby

(require 'inf-ruby)
(autoload 'inf-ruby-minor-mode "inf-ruby" "Run an inferior Ruby process" t)

(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-eval-binding "Pry.toplevel_binding")
(add-hook 'inf-ruby-mode-hook 'ansi-color-for-comint-mode-on)

(define-key inf-ruby-mode-map (kbd "<return>") 'comint-send-input)

(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

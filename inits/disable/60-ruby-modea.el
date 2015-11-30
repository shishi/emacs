;; ruby-mode
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)

(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
;; (define-key ruby-mode-map (kbd "C-m") 'reindent-then-newline-and-indent)

(setq ruby-indent-level 2)
(setq ruby-indent-tabs-mode nil)
(setq ruby-deep-indent-paren-style 'space)

(custom-set-variables
 '(ruby-insert-encoding-magic-comment nil))

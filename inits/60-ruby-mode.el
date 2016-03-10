;; ruby-mode

;; (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.recipe$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.cap$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Gemfile.lock$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.jbuilder$" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

;;(add-hook 'ruby-mode-hook 'robe-mode)
;;(add-hook 'ruby-mode-hook 'yard-mode)

(define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
;; (define-key ruby-mode-map (kbd "C-m") 'reindent-then-newline-and-indent)

;; ;; auto-complete-mode on
;; (add-to-list 'ac-modes 'ruby-mode))

(setq ruby-indent-level 2)
(setq ruby-indent-tabs-mode nil)
(setq ruby-deep-indent-paren-style 'space)

(custom-set-variables
 '(ruby-insert-encoding-magic-comment nil))

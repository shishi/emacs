;; rspec-mode

(require 'rspec-mode)

;; (setq rspec-use-rvm t)
(custom-set-variables '(rspec-use-rake-flag nil))
(custom-set-variables '(rspec-use-bundler-when-possible t))
(custom-set-variables '(rspec-spec-command "rspec"))


;; (defcustom rspec-key-command-prefix  (kbd "C-c ,")
;;   "The prefix for all rspec related key commands"
;;   :type 'string
;;   :group 'rspec-mode)

(define-prefix-command 'rspec-mode-verifiable-keymap)
(define-prefix-command 'rspec-mode-keymap)

(define-key rspec-mode-verifiable-keymap (kbd "v") 'rspec-verify)
(define-key rspec-mode-verifiable-keymap (kbd "a") 'rspec-verify-all)
(define-key rspec-mode-verifiable-keymap (kbd "t") 'rspec-toggle-spec-and-target)
(define-key rspec-mode-verifiable-keymap (kbd "r") 'rspec-rerun)
(define-key rspec-mode-verifiable-keymap (kbd "m") 'rspec-verify-matching)
(define-key rspec-mode-verifiable-keymap (kbd "c") 'rspec-verify-continue)

(set-keymap-parent rspec-mode-keymap rspec-mode-verifiable-keymap)

(define-key rspec-mode-keymap (kbd "s") 'rspec-verify-single)
(define-key rspec-mode-keymap (kbd "d") 'rspec-toggle-example-pendingness)

(define-prefix-command 'rspec-dired-mode-keymap)
(define-key rspec-dired-mode-keymap (kbd "v") 'rspec-dired-verify)
(define-key rspec-dired-mode-keymap (kbd "s") 'rspec-dired-verify-single)
(define-key rspec-dired-mode-keymap (kbd "a") 'rspec-verify-all)
(define-key rspec-dired-mode-keymap (kbd "r") 'rspec-rerun)

;; (when (require 'yasnippet nil t)
;;     (eval-after-load 'rspec-mode
;;       '(rspec-install-snippets)))

;; (defun ruby-mode-after-save-hook-for-rspec-mode ()
;;   (when (eq major-mode 'ruby-mode)
;;     (rspec-verify)))
;; (add-hook after-save-hook 'ruby-mode-after-save-hook-for-rspec-mode)

;; (defun ruby-mode-after-save-hook-for-rspec-mode ()
;;   (when (eq (rinari-root) t)
;;     (rspec-verify)))
;; (add-hook after-save-hook 'ruby-mode-after-save-hook-for-rspec-mode)

;; ;; rspec-mode hook
;; (add-hook 'rspec-mode-hook
;;           (lambda ()
;;             (add-hook 'after-save-hook
;;                       (lambda ()
;;                         (rspec-verify)))))

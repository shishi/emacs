;; enhanced-ruby-mode

;; (autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(require 'enh-ruby-mode)

(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.recipe$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.cap$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile.lock$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder$" . enh-ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

;; (remove-hook 'enh-ruby-mode-hook 'erm-define-faces)

;;(add-hook 'enh-ruby-mode-hook 'robe-mode)
;;(add-hook 'enh-ruby-mode-hook 'yard-mode)

;; 上書きされるため再定義
(define-key enh-ruby-mode-map (kbd "C-m") 'newline-and-indent)
;; (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
;; (define-key ruby-mode-map (kbd "C-m") 'reindent-then-newline-and-indent)

(add-hook 'enh-ruby-mode-hook 'flycheck-mode)

;; auto-complete-mode on
(setq ac-modes
  (append ac-modes
    (list 'enh-ruby-mode)))

;; 保存時にmagic commentを追加しないようにする
(setq enh-ruby-use-encoding-map nil)
(defadvice enh-ruby-mode-set-encoding (around stop-enh-ruby-mode-set-encoding)
  "If enh-ruby-not-insert-magic-comment is true, stops enh-ruby-mode-set-encoding."
  (if (and (boundp 'enh-ruby-not-insert-magic-comment)
           (not enh-ruby-not-insert-magic-comment))
      ad-do-it))
(ad-activate 'enh-ruby-mode-set-encoding)
(setq-default enh-ruby-not-insert-magic-comment t)

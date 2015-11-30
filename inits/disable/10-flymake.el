;;; flymake
;; 各言語用の flymake 設定はそれらの言語用のモードの設定に書く
(require 'flymake nil t)
(require 'flymake-cursor)

;; error, warning 時の face
(set-face-background 'flymake-errline "red4")
;; (set-face-foreground 'flymake-errline "black")
(set-face-background 'flymake-warnline "yellow")
;; (set-face-foreground 'flymake-warnline "black")

;; (define-key global-map (kbd "C-c e") 'flymake-display-err-menu-for-current-line)
;; (define-key global-map (kbd "C-c n") 'flymake-goto-next-error)
;; (define-key global-map (kbd "C-c p") 'flymake-goto-prev-error)

;; syntax-check error を無視
(defadvice flymake-post-syntax-check (before flymake-force-check-was-interrupted)
  (setq flymake-check-was-interrupted t))
(ad-activate 'flymake-post-syntax-check)

;; (when (require 'flymake nil t)
;; )

;; (when (not (fboundp 'flymake-php-init))
;; )

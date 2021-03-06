;;; color-theme

;; built-in color theme

(load-theme 'smyx t)

;; old color theme
;; ;; (setq color-theme-directory "~/.emacs.d/elisp/theme/")
;; ;; (setq color-theme-directory (expand-file-name "~/.emacs.d/elisp/themes"))
;; (require 'color-theme)
;; (color-theme-initialize)
;; (setq color-theme-is-global t)
;; ;; (color-theme-sunburst)
;; (color-theme-desert)

;; web+db press vol.58 P.78
;; 括弧の対応をハイライト
;; 表示までの秒数。初期値は0.125
;; テーマで上書きされるためここで指定
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-foreground 'show-paren-match-face nil)
(set-face-background 'show-paren-match-face nil)
(set-face-underline 'show-paren-match-face "yellow")

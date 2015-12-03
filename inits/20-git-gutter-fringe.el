;;; git-gutter-fringe

(require 'git-gutter-fringe)

;; (setq git-gutter-fr:side 'right-fringe)

;; ;; If you enable global minor mode
(global-git-gutter-mode t)

;; ;; If you enable git-gutter-mode for some modes
;; (add-hook 'ruby-mode-hook 'git-gutter-mode)

;; (global-set-key (kbd "C-x C-g") 'git-gutter:toggle)
;; (global-set-key (kbd "C-x v =") 'git-gutter:popup-hunk)

;; Jump to next/previous hunk
;; (define-key global-map (kbd "C-x C-p") 'git-gutter:previous-hunk)
;; (define-key global-map (kbd "C-x C-n") 'git-gutter:next-hunk)
(smartrep-define-key
    global-map "C-q" '(("M-n" . (next-error))
                       ("M-p" . (previous-error))))

;; Revert current hunk
;; (define-key global-map (kbd "C-x C-r") 'git-gutter:revert-hunk)

;; (set-face-foreground 'git-gutter-fr:modified "yellow")
;; (set-face-foreground 'git-gutter-fr:added    "blue")
;; (set-face-foreground 'git-gutter-fr:deleted  "white")

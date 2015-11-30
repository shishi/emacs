;;; anzu
(require 'anzu)
(global-anzu-mode +1)
;; (anzu-mode +1)

(setq anzu-use-migemo nil)
(setq anzu-search-threshold 10000)
(setq anzu-minimum-input-length 2)

(global-set-key (kbd "C-c r") 'anzu-query-replace)
(global-set-key (kbd "C-c R") 'anzu-query-replace-regexp)

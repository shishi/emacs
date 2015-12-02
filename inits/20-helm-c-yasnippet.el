;;; helm-c-yasnippet

(require 'helm-c-yasnippet)
(setq helm-yas-space-match-any-greedy t)
(global-set-key (kbd "C-s-<return>") 'helm-yas-complete)

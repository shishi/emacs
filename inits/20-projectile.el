;;; projectile
(require 'projectile)
;; (require 'helm-projectile)

(projectile-global-mode)

(define-key global-map (kbd "C-'") 'helm-projectile)
(define-key global-map (kbd "C-M-'") 'projectile-find-dir)

;; (setq projectile-indexing-method 'native)
;; (setq projectile-enable-caching t)

;; (setq projectile-require-project-root nil)

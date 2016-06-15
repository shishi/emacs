;;; helm-ls-git
(require 'helm-ls-git)
(require 'projectile)

;; (define-key global-map (kbd "C-'") 'helm-ls-git-ls)
;; (define-key global-map (kbd "C-x C-'") 'helm-ls-git-ls)

(defun ls-git-fallback-projectile ()
  (interactive)
  (if (helm-ls-git-not-inside-git-repo)
      (helm-projectile)
    (helm-ls-git-ls)
    ))

(define-key global-map (kbd "C-'") 'ls-git-fallback-projectile)

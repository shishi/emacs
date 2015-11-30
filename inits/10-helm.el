;;; helm
(require 'helm-config)

(helm-mode 1)

(setq helm-idle-delay 0.1)
(setq helm-input-idle-delay 0.1)
(setq helm-candidate-number-limit 200)
(setq helm-buffers-fuzzy-matching t)
(setq helm-ff-search-library-in-sexp  t)
(setq helm-ff-file-name-history-use-recentf t)
(setq helm-quick-update t)
(setq helm-su-or-sudo "sudo")

;; ;; setting for splitting
(setq helm-full-frame nil)
(setq helm-split-window-default-side 'other)

;; helm カーソル合った時に persistent-action 実行
(defun show-buffer-move-by-move-extend ()
  (interactive)
  (when (or ;; (memq (assoc-default 'type (helm-get-current-source)) '(buffer sexp))
         (equal (cdr (assq 'name (helm-get-current-source))) "Buffers")
         ;; (equal (cdr (assq 'name (helm-get-current-source))) "Recentf")
         ;; (equal (cdr (assq 'name (helm-get-current-source))) "Files from Current Directory")
         (equal (cdr (assq 'name (helm-get-current-source))) "Imenu")
         (equal (cdr (assq 'name (helm-get-current-source))) "Etags")
         (equal (cdr (assq 'name (helm-get-current-source))) "Exuberant ctags"))
    (helm-execute-persistent-action))
  ;; (y-or-n-p (message "%s" (anything-get-current-source)))
  )
;; (defun execute-persistent-action-move-by-move ()
;;     (anything-execute-persistent-action))
(add-hook 'helm-move-selection-after-hook 'show-buffer-move-by-move-extend)

(define-key global-map (kbd "M-x") 'helm-M-x)
;; (define-key global-map (kbd "C-;") 'helm-buffers-list)
(define-key global-map (kbd "C-;") 'helm-for-files)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "C-x C-b") 'helm-buffers-list)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
(define-key global-map (kbd "M-s-d") 'helm-apropos)
(define-key global-map (kbd "C-<return>") 'helm-buffer-switch-other-window)

;; (define-key global-map (kbd "M-o") 'helm-occur)
;; (define-key global-map (kbd "C-M-o") 'helm-multi-occur)
;; (define-key isearch-mode-map (kbd "M-o") 'helm-occur-from-isearch)

;; helm in dired
;; http://d.hatena.ne.jp/syohex/20120105/1325770778
(defun my/helm-dired ()
  (interactive)
  (let ((curbuf (current-buffer)))
    (if (helm-other-buffer
         '(helm-c-source-files-in-current-dir)
         "*helm-dired*")
        (kill-buffer curbuf))))
(define-key dired-mode-map (kbd "p") 'my/helm-dired)

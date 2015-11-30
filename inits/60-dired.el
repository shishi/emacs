;; dired
(setq diredp-hide-details-initially-flag nil)
(require 'dired+)
;; (require 'dired-x)

(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

(setq delete-by-moving-to-trash t)

(defun dired-start-eshell (arg)
  "diredで選択されたファイル名がペーストされた状態で、eshellを起動する。"
  (interactive "P")
  (let ((files (mapconcat 'shell-quote-argument
                          (dired-get-marked-files (not arg))
                          " ")))
    (if (fboundp 'shell-pop) (shell-pop) (eshell t))
    (save-excursion (insert " " files))))
(define-key dired-mode-map [remap dired-do-shell-command] 'dired-start-eshell)

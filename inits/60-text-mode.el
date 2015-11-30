;;; text-mode

(setq paragraph-start '"^\\([ 　・○<\t\n\f]\\|(?[0-9a-zA-Z]+)\\)")

;; ;; skk の変換がおかしくならないように
;; (setq-default fill-nobreak-predicate 'refill-skk-ignore)
;; (defun refill-skk-ignore ()
;;   (interactive)
;;   (if
;;       (or
;;        skk-henkan-mode
;;        skk-current-rule-tree)
;;       t
;;     nil))

;; (defun hook-for-text-mode-setting ()
;;   (setq fill-column 80)
;;   (refill-mode t)
;;   (add-to-list 'ac-sources 'ac-source-filename)
;;   (auto-complete-mode t))
;; (add-hook 'text-mode-hook 'hook-for-text-mode-setting)
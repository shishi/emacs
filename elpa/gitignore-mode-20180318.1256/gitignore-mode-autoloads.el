;;; gitignore-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gitignore-mode" "../../../../../../../.emacs.d/elpa/gitignore-mode-20180318.1256/gitignore-mode.el"
;;;;;;  "e83c3cfa861f715b53df91bb96bf598d")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/gitignore-mode-20180318.1256/gitignore-mode.el

(autoload 'gitignore-mode "gitignore-mode" "\
A major mode for editing .gitignore files.

\(fn)" t nil)

(dolist (pattern (list "/\\.gitignore\\'" "/info/exclude\\'" "/git/ignore\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitignore-mode)))

;;;### (autoloads "actual autoloads are elsewhere" "gitignore-mode"
;;;;;;  "../../../../../../../.emacs.d/elpa/gitignore-mode-20180318.1256/gitignore-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/gitignore-mode-20180318.1256/gitignore-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gitignore-mode" '("gitignore-mode-font-lock-keywords")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/gitignore-mode-20180318.1256/gitignore-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/gitignore-mode-20180318.1256/gitignore-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gitignore-mode-autoloads.el ends here

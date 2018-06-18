;;; gitconfig-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gitconfig-mode" "../../../../../../../.emacs.d/elpa/gitconfig-mode-20180318.1256/gitconfig-mode.el"
;;;;;;  "2470d4e799051b1bdb0c0ab76b5bfca2")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/gitconfig-mode-20180318.1256/gitconfig-mode.el

(autoload 'gitconfig-mode "gitconfig-mode" "\
A major mode for editing .gitconfig files.

\(fn)" t nil)

(dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'" "/modules/.*/config\\'" "/git/config\\'" "/\\.gitmodules\\'" "/etc/gitconfig\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitconfig-mode)))

;;;### (autoloads "actual autoloads are elsewhere" "gitconfig-mode"
;;;;;;  "../../../../../../../.emacs.d/elpa/gitconfig-mode-20180318.1256/gitconfig-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/gitconfig-mode-20180318.1256/gitconfig-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gitconfig-mode" '("gitconfig-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/gitconfig-mode-20180318.1256/gitconfig-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/gitconfig-mode-20180318.1256/gitconfig-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gitconfig-mode-autoloads.el ends here

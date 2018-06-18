;;; wgrep-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "wgrep" "../../../../../../../.emacs.d/elpa/wgrep-20141016.1656/wgrep.el"
;;;;;;  "46dc7575ae241fabcb47264349448f04")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/wgrep-20141016.1656/wgrep.el

(autoload 'wgrep-setup "wgrep" "\
Setup wgrep preparation.

\(fn)" nil nil)

(add-hook 'grep-setup-hook 'wgrep-setup)

;;;### (autoloads "actual autoloads are elsewhere" "wgrep" "../../../../../../../.emacs.d/elpa/wgrep-20141016.1656/wgrep.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/wgrep-20141016.1656/wgrep.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "wgrep" '("wgrep-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/wgrep-20141016.1656/wgrep-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/wgrep-20141016.1656/wgrep.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; wgrep-autoloads.el ends here

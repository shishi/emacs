;;; gitattributes-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gitattributes-mode" "../../../../../../../.emacs.d/elpa/gitattributes-mode-20180318.1256/gitattributes-mode.el"
;;;;;;  "e5330114e6b07cc81e8a9841fc8b64cf")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/gitattributes-mode-20180318.1256/gitattributes-mode.el

(autoload 'gitattributes-mode "gitattributes-mode" "\
A major mode for editing .gitattributes files.
\\{gitattributes-mode-map}

\(fn)" t nil)

(dolist (pattern '("/\\.gitattributes\\'" "/info/attributes\\'" "/git/attributes\\'")) (add-to-list 'auto-mode-alist (cons pattern #'gitattributes-mode)))

;;;### (autoloads "actual autoloads are elsewhere" "gitattributes-mode"
;;;;;;  "../../../../../../../.emacs.d/elpa/gitattributes-mode-20180318.1256/gitattributes-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/gitattributes-mode-20180318.1256/gitattributes-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gitattributes-mode" '("gitattributes-mode-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/gitattributes-mode-20180318.1256/gitattributes-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/gitattributes-mode-20180318.1256/gitattributes-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gitattributes-mode-autoloads.el ends here

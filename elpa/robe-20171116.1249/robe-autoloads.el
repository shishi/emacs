;;; robe-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ac-robe" "../../../../../../../.emacs.d/elpa/robe-20171116.1249/ac-robe.el"
;;;;;;  "ac9a0897772134da26ef30d7bf8ae584")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/robe-20171116.1249/ac-robe.el

(autoload 'ac-robe-available "ac-robe" "\
Return t if `robe-mode' completions are available, otherwise nil.

\(fn)" nil nil)

(autoload 'ac-robe-setup "ac-robe" "\


\(fn)" nil nil)

(defconst ac-source-robe '((available . ac-robe-available) (prefix . ac-robe-prefix) (candidates . ac-robe-candidates) (document . ac-robe-doc) (symbol . "r")) "\
`auto-complete' completion source for Ruby using `robe-mode'.")

;;;### (autoloads "actual autoloads are elsewhere" "ac-robe" "../../../../../../../.emacs.d/elpa/robe-20171116.1249/ac-robe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/robe-20171116.1249/ac-robe.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ac-robe" '("ac-robe-")))

;;;***

;;;***

;;;### (autoloads nil "company-robe" "../../../../../../../.emacs.d/elpa/robe-20171116.1249/company-robe.el"
;;;;;;  "6d779558c1e3e24b3d300285c409c301")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/robe-20171116.1249/company-robe.el

(autoload 'company-robe "company-robe" "\
A `company-mode' completion back-end for `robe-mode'.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-robe"
;;;;;;  "../../../../../../../.emacs.d/elpa/robe-20171116.1249/company-robe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/robe-20171116.1249/company-robe.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-robe" '("company-robe--")))

;;;***

;;;***

;;;### (autoloads nil "robe" "../../../../../../../.emacs.d/elpa/robe-20171116.1249/robe.el"
;;;;;;  "f98f57636e50008e82d91e77da1e6908")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/robe-20171116.1249/robe.el

(autoload 'robe-mode "robe" "\
Improved navigation for Ruby.

The following commands are available:

\\{robe-mode-map}

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "robe" "../../../../../../../.emacs.d/elpa/robe-20171116.1249/robe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/robe-20171116.1249/robe.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "robe" '("robe-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/robe-20171116.1249/ac-robe.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/robe-20171116.1249/company-robe.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/robe-20171116.1249/robe-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/robe-20171116.1249/robe-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/robe-20171116.1249/robe.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; robe-autoloads.el ends here

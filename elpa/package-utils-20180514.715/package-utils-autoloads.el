;;; package-utils-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "package-utils" "../../../../../../../.emacs.d/elpa/package-utils-20180514.715/package-utils.el"
;;;;;;  "e8b42ce7cf4a3e5e3c379406d68dace9")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/package-utils-20180514.715/package-utils.el

(autoload 'package-utils-list-upgrades "package-utils" "\
List all packages that can be upgraded.

With prefix argument NO-FETCH, do not call `package-refresh-contents'.

\(fn &optional NO-FETCH)" t nil)

(autoload 'package-utils-upgrade-all "package-utils" "\
Upgrade all packages that can be upgraded.

With prefix argument NO-FETCH, do not call `package-refresh-contents'.

\(fn &optional NO-FETCH)" t nil)

(autoload 'package-utils-upgrade-all-no-fetch "package-utils" "\
Upgrade all packages that can be upgraded without calling `package-refresh-contents' first.

\(fn)" t nil)

(autoload 'package-utils-upgrade-all-and-quit "package-utils" "\
Upgrade all packages that can be upgraded, then quit emacs.

With prefix argument NO-FETCH, do not call `package-refresh-contents'.

\(fn &optional NO-FETCH)" t nil)

(autoload 'package-utils-upgrade-all-and-restart "package-utils" "\
Upgrade all packages that can be upgraded, then restart emacs.

With prefix argument NO-FETCH, do not call `package-refresh-contents'.

\(fn &optional NO-FETCH)" t nil)

(autoload 'package-utils-upgrade-by-name "package-utils" "\
Upgrade the package NAME.

With prefix argument NO-FETCH, do not call `package-refresh-contents'.

\(fn NAME &optional NO-FETCH)" t nil)

(autoload 'package-utils-upgrade-by-name-no-fetch "package-utils" "\
Upgrade the package NAME, without calling `package-refresh-contents' first.

\(fn NAME)" t nil)

(autoload 'package-utils-remove-by-name "package-utils" "\
Uninstall the package NAME.

\(fn NAME)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "package-utils"
;;;;;;  "../../../../../../../.emacs.d/elpa/package-utils-20180514.715/package-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/package-utils-20180514.715/package-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "package-utils" '("package-utils-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/package-utils-20180514.715/package-utils-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/package-utils-20180514.715/package-utils.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; package-utils-autoloads.el ends here

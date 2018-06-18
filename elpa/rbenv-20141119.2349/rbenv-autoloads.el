;;; rbenv-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "rbenv" "../../../../../../../.emacs.d/elpa/rbenv-20141119.2349/rbenv.el"
;;;;;;  "121f51d4ef3aca04e017f5d99e6eed6a")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/rbenv-20141119.2349/rbenv.el

(autoload 'rbenv-use-global "rbenv" "\
activate rbenv global ruby

\(fn)" t nil)

(autoload 'rbenv-use-corresponding "rbenv" "\
search for .ruby-version and activate the corresponding ruby

\(fn)" t nil)

(autoload 'rbenv-use "rbenv" "\
choose what ruby you want to activate

\(fn RUBY-VERSION)" t nil)

(defvar global-rbenv-mode nil "\
Non-nil if Global Rbenv mode is enabled.
See the `global-rbenv-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-rbenv-mode'.")

(custom-autoload 'global-rbenv-mode "rbenv" nil)

(autoload 'global-rbenv-mode "rbenv" "\
use rbenv to configure the ruby version used by your Emacs.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "rbenv" "../../../../../../../.emacs.d/elpa/rbenv-20141119.2349/rbenv.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/rbenv-20141119.2349/rbenv.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rbenv" '("rbenv")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/rbenv-20141119.2349/rbenv-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/rbenv-20141119.2349/rbenv.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rbenv-autoloads.el ends here

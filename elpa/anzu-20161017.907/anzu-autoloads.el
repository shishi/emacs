;;; anzu-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "anzu" "../../../../../../../.emacs.d/elpa/anzu-20161017.907/anzu.el"
;;;;;;  "03484cdf6ce4e2f7b974c66f05576344")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/anzu-20161017.907/anzu.el

(autoload 'anzu-mode "anzu" "\
minor-mode which display search information in mode-line.

\(fn &optional ARG)" t nil)

(defvar global-anzu-mode nil "\
Non-nil if Global Anzu mode is enabled.
See the `global-anzu-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-anzu-mode'.")

(custom-autoload 'global-anzu-mode "anzu" nil)

(autoload 'global-anzu-mode "anzu" "\
Toggle Anzu mode in all buffers.
With prefix ARG, enable Global Anzu mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Anzu mode is enabled in all buffers where
`anzu--turn-on' would do it.
See `anzu-mode' for more information on Anzu mode.

\(fn &optional ARG)" t nil)

(autoload 'anzu-query-replace-at-cursor "anzu" "\
Replace symbol at cursor with to-string.

\(fn)" t nil)

(autoload 'anzu-query-replace-at-cursor-thing "anzu" "\
Replace symbol at cursor within `anzu-replace-at-cursor-thing' area.

\(fn)" t nil)

(autoload 'anzu-query-replace "anzu" "\
anzu version of `query-replace'.

\(fn ARG)" t nil)

(autoload 'anzu-query-replace-regexp "anzu" "\
anzu version of `query-replace-regexp'.

\(fn ARG)" t nil)

(autoload 'anzu-replace-at-cursor-thing "anzu" "\
anzu-query-replace-at-cursor-thing without query.

\(fn)" t nil)

(autoload 'anzu-isearch-query-replace "anzu" "\
anzu version of `isearch-query-replace'.

\(fn ARG)" t nil)

(autoload 'anzu-isearch-query-replace-regexp "anzu" "\
anzu version of `isearch-query-replace-regexp'.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "anzu" "../../../../../../../.emacs.d/elpa/anzu-20161017.907/anzu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/anzu-20161017.907/anzu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "anzu" '("anzu-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/anzu-20161017.907/anzu-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/anzu-20161017.907/anzu.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; anzu-autoloads.el ends here

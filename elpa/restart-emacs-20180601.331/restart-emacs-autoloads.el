;;; restart-emacs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "restart-emacs" "../../../../../../../.emacs.d/elpa/restart-emacs-20180601.331/restart-emacs.el"
;;;;;;  "c533b666618be8e05f034c2fe32ee6a7")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/restart-emacs-20180601.331/restart-emacs.el

(autoload 'restart-emacs-handle-command-line-args "restart-emacs" "\
Handle the --restart-emacs-desktop command line argument.

The value of the argument is the desktop file from which the frames should be
restored.  IGNORED are ignored.

\(fn &rest IGNORED)" nil nil)

(add-to-list 'command-switch-alist '("--restart-emacs-desktop" . restart-emacs-handle-command-line-args))

(autoload 'restart-emacs "restart-emacs" "\
Restart Emacs.

When called interactively ARGS is interpreted as follows

- with a single `universal-argument' (`C-u') Emacs is restarted
  with `--debug-init' flag
- with two `universal-argument' (`C-u') Emacs is restarted with
  `-Q' flag
- with three `universal-argument' (`C-u') the user prompted for
  the arguments

When called non-interactively ARGS should be a list of arguments
with which Emacs should be restarted.

\(fn &optional ARGS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "restart-emacs"
;;;;;;  "../../../../../../../.emacs.d/elpa/restart-emacs-20180601.331/restart-emacs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/restart-emacs-20180601.331/restart-emacs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "restart-emacs" '("restart-emacs-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/restart-emacs-20180601.331/restart-emacs-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/restart-emacs-20180601.331/restart-emacs.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; restart-emacs-autoloads.el ends here

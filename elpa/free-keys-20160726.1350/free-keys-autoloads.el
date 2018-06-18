;;; free-keys-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "free-keys" "../../../../../../../.emacs.d/elpa/free-keys-20160726.1350/free-keys.el"
;;;;;;  "fd873e3c2f4328d2c723190d40adeadd")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/free-keys-20160726.1350/free-keys.el

(autoload 'free-keys "free-keys" "\
Display free keys in current buffer.

A free key is a key that has no associated key-binding as
determined by function `key-binding'.

By default, keys on `free-keys-keys' list with no prefix sequence
are considered, possibly together with modifier keys from
`free-keys-modifiers'.  You can change the prefix sequence by
hitting 'p' in the *Free keys* buffer.  Prefix is supplied in
format recognized by `kbd', for example \"C-x\".

\(fn &optional PREFIX BUFFER)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "free-keys" "../../../../../../../.emacs.d/elpa/free-keys-20160726.1350/free-keys.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/free-keys-20160726.1350/free-keys.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "free-keys" '("free-keys-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/free-keys-20160726.1350/free-keys-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/free-keys-20160726.1350/free-keys.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; free-keys-autoloads.el ends here

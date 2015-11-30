;;; auto-async-byte-compile
(require 'auto-async-byte-compile)

(setq auto-async-byte-compile-exclude-files-regexp "/\(backup\|trash\)/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

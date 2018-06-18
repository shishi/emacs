;;; fish-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "fish-mode" "../../../../../../../.emacs.d/elpa/fish-mode-20180306.818/fish-mode.el"
;;;;;;  "d8ef2ea33c85615484523e157ed3b5c1")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/fish-mode-20180306.818/fish-mode.el

(autoload 'fish_indent-before-save "fish-mode" "\


\(fn)" t nil)

(autoload 'fish-mode "fish-mode" "\
Major mode for editing fish shell files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.fish\\'" . fish-mode))

(add-to-list 'auto-mode-alist '("/fish_funced\\..*\\'" . fish-mode))

(add-to-list 'interpreter-mode-alist '("fish" . fish-mode))

;;;### (autoloads "actual autoloads are elsewhere" "fish-mode" "../../../../../../../.emacs.d/elpa/fish-mode-20180306.818/fish-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/fish-mode-20180306.818/fish-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fish-mode" '("fish")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/fish-mode-20180306.818/fish-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/fish-mode-20180306.818/fish-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; fish-mode-autoloads.el ends here

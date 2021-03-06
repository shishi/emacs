;;; tuareg-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ocamldebug" "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/ocamldebug.el"
;;;;;;  "9e2f578f57757893a9a58d827aaf31fb")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/ocamldebug.el

(autoload 'ocamldebug "ocamldebug" "\
Run ocamldebug on program FILE in buffer *ocamldebug-FILE*.
The directory containing FILE becomes the initial working directory
and source-file directory for ocamldebug.  If you wish to change this, use
the ocamldebug commands `cd DIR' and `directory'.

\(fn PGM-PATH)" t nil)

(defalias 'camldebug 'ocamldebug)

;;;### (autoloads "actual autoloads are elsewhere" "ocamldebug" "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/ocamldebug.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/ocamldebug.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ocamldebug" '("ocamldebug-" "def-ocamldebug")))

;;;***

;;;***

;;;### (autoloads nil "tuareg" "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg.el"
;;;;;;  "ad37d6d6c14c4973f2db2f2275d86d61")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg.el
(add-to-list 'auto-mode-alist '("\\.ml[ip]?\\'" . tuareg-mode))
(add-to-list 'auto-mode-alist '("\\.eliomi?\\'" . tuareg-mode))
(dolist (ext '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi"
               ".annot" ".cmt" ".cmti"))
 (add-to-list 'completion-ignored-extensions ext))

(autoload 'tuareg-mode "tuareg" "\
Major mode for editing OCaml code.

Dedicated to Emacs and XEmacs, version 21 and higher.  Provides
automatic indentation and compilation interface.  Performs font/color
highlighting using Font-Lock.  It is designed for OCaml but handles
Caml Light as well.

The Font-Lock minor-mode is used according to your customization
options.

You have better byte-compile tuareg.el.

For customization purposes, you should use `tuareg-mode-hook'
\(run for every file) or `tuareg-load-hook' (run once) and not patch
the mode itself.  You should add to your configuration file something like:
  (add-hook 'tuareg-mode-hook
            (lambda ()
               ... ; your customization code
            ))
For example you can change the indentation of some keywords, the
`electric' flags, Font-Lock colors... Every customizable variable is
documented, use `C-h-v' or look at the mode's source code.

`dot-emacs.el' is a sample customization file for standard changes.
You can append it to your `.emacs' or use it as a tutorial.

`M-x ocamldebug' FILE starts the OCaml debugger ocamldebug on the executable
FILE, with input and output in an Emacs buffer named *ocamldebug-FILE*.

A Tuareg Interactive Mode to evaluate expressions in a REPL (aka toplevel) is
included.  Type `M-x tuareg-run-ocaml' or simply `M-x run-ocaml' or see
special-keys below.

Short cuts for the Tuareg mode:
\\{tuareg-mode-map}

Short cuts for interactions with the REPL:
\\{tuareg-interactive-mode-map}

\(fn)" t nil)

(autoload 'tuareg-run-ocaml "tuareg" "\
Run an OCaml REPL process.  I/O via buffer `*OCaml*'.

\(fn)" t nil)

(defalias 'run-ocaml 'tuareg-run-ocaml)

(add-to-list 'interpreter-mode-alist '("ocamlrun" . tuareg-mode))

(add-to-list 'interpreter-mode-alist '("ocaml" . tuareg-mode))

;;;### (autoloads "actual autoloads are elsewhere" "tuareg" "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tuareg" '("tuareg-")))

;;;***

;;;***

;;;### (autoloads nil "tuareg-dune" "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-dune.el"
;;;;;;  "8b5a3ef3da8528e75466e11e9b656740")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-dune.el

(autoload 'tuareg-dune-mode "tuareg-dune" "\
Major mode to edit dune files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\(?:\\`\\|/\\)jbuild\\(?:\\.inc\\)?\\'" . tuareg-dune-mode))

;;;### (autoloads "actual autoloads are elsewhere" "tuareg-dune"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-dune.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-dune.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tuareg-dune" '("tuareg-dune-" "verbose-tuareg-dune-smie-rules")))

;;;***

;;;***

;;;### (autoloads nil "tuareg-menhir" "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-menhir.el"
;;;;;;  "f1865266e69c6df20cf39723155a4e55")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-menhir.el

(add-to-list 'auto-mode-alist '("\\.mly\\'" . tuareg-menhir-mode))

(autoload 'tuareg-menhir-mode "tuareg-menhir" "\
Major mode to edit Menhir (and Ocamlyacc) files.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "tuareg-menhir"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-menhir.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-menhir.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tuareg-menhir" '("tuareg-menhir-")))

;;;***

;;;***

;;;### (autoloads nil "tuareg-opam" "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-opam.el"
;;;;;;  "e194cbede5cc192045433d6fc0bab616")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-opam.el

(autoload 'tuareg-opam-mode "tuareg-opam" "\
Major mode to edit opam files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("[./]opam_?\\'" . tuareg-opam-mode))

;;;### (autoloads "actual autoloads are elsewhere" "tuareg-opam"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-opam.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-opam.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tuareg-opam" '("tuareg-opam-" "verbose-tuareg-opam-smie-rules")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "tuareg-site-file"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-site-file.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-site-file.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tuareg-site-file" '("run-ocaml" "camldebug")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/dot-emacs.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/ocamldebug.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-dune.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-menhir.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-opam.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg-site-file.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/tuareg-20180512.1306/tuareg.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; tuareg-autoloads.el ends here

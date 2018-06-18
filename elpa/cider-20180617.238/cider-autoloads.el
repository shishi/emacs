;;; cider-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "cider" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider.el"
;;;;;;  "3a0c0e153231331e72d21d5378f2fd99")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider.el

(autoload 'cider-version "cider" "\
Display CIDER's version.

\(fn)" t nil)

(autoload 'cider-jack-in "cider" "\
Start an nREPL server for the current project and connect to it.
If PROMPT-PROJECT is t, then prompt for the project for which to
start the server.
If CLJS-TOO is non-nil, also start a ClojureScript REPL session with its
own buffer.

\(fn &optional PROMPT-PROJECT CLJS-TOO)" t nil)

(autoload 'cider-jack-in-clojurescript "cider" "\
Start an nREPL server and connect to it both Clojure and ClojureScript REPLs.
If PROMPT-PROJECT is t, then prompt for the project for which to
start the server.

\(fn &optional PROMPT-PROJECT)" t nil)

(defalias 'cider-jack-in-cljs #'cider-jack-in-clojurescript)

(autoload 'cider-connect "cider" "\
Connect to an nREPL server identified by HOST and PORT.
Create REPL buffer and start an nREPL client connection.

When the optional param PROJECT-DIR is present, the connection
gets associated with it.

\(fn HOST PORT &optional PROJECT-DIR)" t nil)

(autoload 'cider-connect-clojurescript "cider" "\
Connect to a ClojureScript REPL.

It just delegates pretty much everything to `cider-connect' and just sets
the appropriate REPL type in the end.

\(fn)" t nil)

(defalias 'cider-connect-cljs #'cider-connect-clojurescript)

(eval-after-load 'clojure-mode '(progn (define-key clojure-mode-map (kbd "C-c M-j") #'cider-jack-in) (define-key clojure-mode-map (kbd "C-c M-J") #'cider-jack-in-clojurescript) (define-key clojure-mode-map (kbd "C-c M-c") #'cider-connect) (define-key clojure-mode-map (kbd "C-c M-C") #'cider-connect-clojurescript)))

;;;### (autoloads "actual autoloads are elsewhere" "cider" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-apropos" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-apropos.el"
;;;;;;  "08420bf64c776ddd0cca7f05e0dee068")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-apropos.el

(autoload 'cider-apropos "cider-apropos" "\
Show all symbols whose names match QUERY, a regular expression.
QUERY can also be a list of space-separated words (e.g. take while) which
will be converted to a regular expression (like take.+while) automatically
behind the scenes.  The search may be limited to the namespace NS, and may
optionally search doc strings (based on DOCS-P), include private vars
\(based on PRIVATES-P), and be case-sensitive (based on CASE-SENSITIVE-P).

\(fn QUERY &optional NS DOCS-P PRIVATES-P CASE-SENSITIVE-P)" t nil)

(autoload 'cider-apropos-documentation "cider-apropos" "\
Shortcut for (cider-apropos <query> nil t).

\(fn)" t nil)

(autoload 'cider-apropos-select "cider-apropos" "\
Similar to `cider-apropos', but presents the results in a completing read.

Show all symbols whose names match QUERY, a regular expression.
QUERY can also be a list of space-separated words (e.g. take while) which
will be converted to a regular expression (like take.+while) automatically
behind the scenes.  The search may be limited to the namespace NS, and may
optionally search doc strings (based on DOCS-P), include private vars
\(based on PRIVATES-P), and be case-sensitive (based on CASE-SENSITIVE-P).

\(fn QUERY &optional NS DOCS-P PRIVATES-P CASE-SENSITIVE-P)" t nil)

(autoload 'cider-apropos-documentation-select "cider-apropos" "\
Shortcut for (cider-apropos-select <query> nil t).

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-apropos"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-apropos.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-apropos.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-apropos" '("cider-" "apropos-special-form")))

;;;***

;;;***

;;;### (autoloads nil "cider-browse-ns" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-browse-ns.el"
;;;;;;  "e61c89665d02d9fb0642c5f2781d3981")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-browse-ns.el

(autoload 'cider-browse-ns "cider-browse-ns" "\
List all NAMESPACE's vars in BUFFER.

\(fn NAMESPACE)" t nil)

(autoload 'cider-browse-ns-all "cider-browse-ns" "\
List all loaded namespaces in BUFFER.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-browse-ns"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-browse-ns.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-browse-ns.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-browse-ns" '("cider-browse-ns-")))

;;;***

;;;***

;;;### (autoloads nil "cider-browse-spec" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-browse-spec.el"
;;;;;;  "774d0bd1ffd6493bc5ed66b9ef70d712")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-browse-spec.el

(autoload 'cider-browse-spec "cider-browse-spec" "\
Browse SPEC definition.

\(fn SPEC)" t nil)

(autoload 'cider-browse-spec-all "cider-browse-spec" "\
Open list of specs in a popup buffer.

With a prefix argument ARG, prompts for a regexp to filter specs.
No filter applied if the regexp is the empty string.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-browse-spec"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-browse-spec.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-browse-spec.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-browse-spec" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-cheatsheet" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-cheatsheet.el"
;;;;;;  "3b0f54cd6800142fb87e774a72af3a05")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-cheatsheet.el

(autoload 'cider-cheatsheet "cider-cheatsheet" "\
Navigate `cider-cheatsheet-hierarchy' with `completing-read'.

When you make it to a Clojure var its doc buffer gets displayed.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-cheatsheet"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-cheatsheet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-cheatsheet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-cheatsheet" '("cider-cheatsheet-")))

;;;***

;;;***

;;;### (autoloads nil "cider-classpath" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-classpath.el"
;;;;;;  "47203f4b9f8b9b72529740c0b6d1fb3a")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-classpath.el

(autoload 'cider-classpath "cider-classpath" "\
List all classpath entries.

\(fn)" t nil)

(autoload 'cider-open-classpath-entry "cider-classpath" "\
Open a classpath entry.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-classpath"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-classpath.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-classpath.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-classpath" '("cider-classpath-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-client"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-client.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-client.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-client" '("cider-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-common"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-common.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-common.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-common" '("cider-")))

;;;***

;;;### (autoloads nil "cider-debug" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-debug.el"
;;;;;;  "6c9019350f312225a08174ec60299c69")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-debug.el

(autoload 'cider-debug-defun-at-point "cider-debug" "\
Instrument the \"top-level\" expression at point.
If it is a defn, dispatch the instrumented definition.  Otherwise,
immediately evaluate the instrumented expression.

While debugged code is being evaluated, the user is taken through the
source code and displayed the value of various expressions.  At each step,
a number of keys will be prompted to the user.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-debug"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-debug.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-debug.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-debug" '("cider-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-doc" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-doc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-doc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-doc" '("cider-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-eldoc"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-eldoc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-eldoc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-eldoc" '("cider-")))

;;;***

;;;### (autoloads nil "cider-grimoire" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-grimoire.el"
;;;;;;  "144295dd55f234b0b09b9dc5dcb16a2b")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-grimoire.el

(autoload 'cider-grimoire-web "cider-grimoire" "\
Open grimoire documentation in the default web browser.

Prompts for the symbol to use, or uses the symbol at point, depending on
the value of `cider-prompt-for-symbol'.  With prefix arg ARG, does the
opposite of what that option dictates.

\(fn &optional ARG)" t nil)

(autoload 'cider-grimoire "cider-grimoire" "\
Open grimoire documentation in a popup buffer.

Prompts for the symbol to use, or uses the symbol at point, depending on
the value of `cider-prompt-for-symbol'.  With prefix arg ARG, does the
opposite of what that option dictates.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-grimoire"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-grimoire.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-grimoire.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-grimoire" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-inspector" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-inspector.el"
;;;;;;  "7b24fe636c4559ce930cbb3e33ec64de")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-inspector.el

(autoload 'cider-inspect-last-sexp "cider-inspector" "\
Inspect the result of the the expression preceding point.

\(fn)" t nil)

(autoload 'cider-inspect-defun-at-point "cider-inspector" "\
Inspect the result of the \"top-level\" expression at point.

\(fn)" t nil)

(autoload 'cider-inspect-last-result "cider-inspector" "\
Inspect the most recent eval result.

\(fn)" t nil)

(autoload 'cider-inspect "cider-inspector" "\
Inspect the result of the preceding sexp.

With a prefix argument ARG it inspects the result of the \"top-level\" form.
With a second prefix argument it prompts for an expression to eval and inspect.

\(fn &optional ARG)" t nil)

(autoload 'cider-inspect-expr "cider-inspector" "\
Evaluate EXPR in NS and inspect its value.
Interactively, EXPR is read from the minibuffer, and NS the
current buffer's namespace.

\(fn EXPR NS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-inspector"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-inspector.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-inspector.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-inspector" '("cider-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-interaction"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-interaction.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-interaction.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-interaction" '("cider-")))

;;;***

;;;### (autoloads nil "cider-macroexpansion" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-macroexpansion.el"
;;;;;;  "68fa9f91793dd4c6e035dc45c38703f0")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-macroexpansion.el

(autoload 'cider-macroexpand-1 "cider-macroexpansion" "\
Invoke \\=`macroexpand-1\\=` on the expression preceding point.
If invoked with a PREFIX argument, use \\=`macroexpand\\=` instead of
\\=`macroexpand-1\\=`.

\(fn &optional PREFIX)" t nil)

(autoload 'cider-macroexpand-all "cider-macroexpansion" "\
Invoke \\=`macroexpand-all\\=` on the expression preceding point.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-macroexpansion"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-macroexpansion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-macroexpansion.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-macroexpansion" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-mode" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-mode.el"
;;;;;;  "ac23347874b487c3bc0a67792dc22fea")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-mode.el

(defvar cider-mode-line '(:eval (format " cider[%s]" (cider--modeline-info))) "\
Mode line lighter for cider mode.

The value of this variable is a mode line template as in
`mode-line-format'.  See Info Node `(elisp)Mode Line Format' for details
about mode line templates.

Customize this variable to change how cider mode displays its status in the
mode line.  The default value displays the current connection.  Set this
variable to nil to disable the mode line entirely.")

(custom-autoload 'cider-mode-line "cider-mode" t)

(eval-after-load 'clojure-mode '(easy-menu-define cider-clojure-mode-menu-open clojure-mode-map "Menu for Clojure mode.\n  This is displayed in `clojure-mode' buffers, if `cider-mode' is not active." `("CIDER" :visible (not cider-mode) ["Start a Clojure REPL" cider-jack-in :help "Starts an nREPL server (with Leiningen, Boot, or Gradle) and connects a REPL to it."] ["Connect to a Clojure REPL" cider-connect :help "Connects to a REPL that's already running."] ["Connect to a ClojureScript REPL" cider-connect-clojurescript :help "Connects to a ClojureScript REPL that's already running."] ["Start a Clojure REPL, and a ClojureScript REPL" cider-jack-in-clojurescript :help "Starts an nREPL server, connects a Clojure REPL to it, and then a ClojureScript REPL."] "--" ["View manual online" cider-view-manual])))

(autoload 'cider-mode "cider-mode" "\
Minor mode for REPL interaction from a Clojure buffer.

\\{cider-mode-map}

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-mode" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-mode" '("cider-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-overlays"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-overlays.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-overlays.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-overlays" '("cider-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-popup"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-popup.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-popup.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-popup" '("cider-")))

;;;***

;;;### (autoloads nil "cider-profile" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-profile.el"
;;;;;;  "d374cf7d35d15d70314d45b8372e53b4")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-profile.el

(autoload 'cider-profile-samples "cider-profile" "\
Displays current max-sample-count.
If optional QUERY is specified, set max-sample-count and display new value.

\(fn &optional QUERY)" t nil)

(autoload 'cider-profile-var-profiled-p "cider-profile" "\
Displays the profiling status of var under point.
Prompts for var if none under point or QUERY is present.

\(fn QUERY)" t nil)

(autoload 'cider-profile-ns-toggle "cider-profile" "\
Toggle profiling for the ns associated with optional QUERY.

If optional argument QUERY is non-nil, prompt for ns.  Otherwise use
current ns.

\(fn &optional QUERY)" t nil)

(autoload 'cider-profile-toggle "cider-profile" "\
Toggle profiling for the given QUERY.
Defaults to the symbol at point.
With prefix arg or no symbol at point, prompts for a var.

\(fn QUERY)" t nil)

(autoload 'cider-profile-summary "cider-profile" "\
Display a summary of currently collected profile data.

\(fn)" t nil)

(autoload 'cider-profile-var-summary "cider-profile" "\
Display profile data for var under point QUERY.

Defaults to the symbol at point.  With prefix arg or no symbol at point,
prompts for a var.

\(fn QUERY)" t nil)

(autoload 'cider-profile-clear "cider-profile" "\
Clear any collected profile data.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-profile"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-profile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-profile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-profile" '("cider-profile-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-repl" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-repl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-repl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-repl" '("cider-")))

;;;***

;;;### (autoloads nil "cider-repl-history" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-repl-history.el"
;;;;;;  "e4e651ed771884c74ec03ccb4ab49cb2")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-repl-history.el

(autoload 'cider-repl-history "cider-repl-history" "\
Display items in the CIDER command history in another buffer.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-repl-history"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-repl-history.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-repl-history.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-repl-history" '("cider-repl-history-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-resolve"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-resolve.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-resolve.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-resolve" '("cider-resolve-")))

;;;***

;;;### (autoloads nil "cider-scratch" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-scratch.el"
;;;;;;  "fa02495318894c8e6b6dba5960bcd974")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-scratch.el

(autoload 'cider-scratch "cider-scratch" "\
Go to the scratch buffer named `cider-scratch-buffer-name'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-scratch"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-scratch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-scratch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-scratch" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-selector" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-selector.el"
;;;;;;  "bf7355915b5dba268cb725b154fb0f13")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-selector.el

(autoload 'cider-selector "cider-selector" "\
Select a new buffer by type, indicated by a single character.
The user is prompted for a single character indicating the method by
which to choose a new buffer.  The `?' character describes then
available methods.  OTHER-WINDOW provides an optional target.

See `def-cider-selector-method' for defining new methods.

\(fn &optional OTHER-WINDOW)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-selector"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-selector.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-selector.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-selector" '("??" "?c" "?e" "?q" "?r" "?n" "?m" "?x" "?d" "?s" "def-cider-selector-method" "cider-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cider-stacktrace"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-stacktrace.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-stacktrace.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-stacktrace" '("cider-")))

;;;***

;;;### (autoloads nil "cider-test" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-test.el"
;;;;;;  "bba306be2ea899b29f2929ad72bc8d52")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-test.el

(defvar cider-auto-test-mode nil "\
Non-nil if Cider-Auto-Test mode is enabled.
See the `cider-auto-test-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `cider-auto-test-mode'.")

(custom-autoload 'cider-auto-test-mode "cider-test" nil)

(autoload 'cider-auto-test-mode "cider-test" "\
Toggle automatic testing of Clojure files.

When enabled this reruns tests every time a Clojure file is loaded.
Only runs tests corresponding to the loaded file's namespace and does
nothing if no tests are defined or if the file failed to load.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-test" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-test.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-test.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-test" '("cider-")))

;;;***

;;;***

;;;### (autoloads nil "cider-util" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-util.el"
;;;;;;  "a17f472b0160e25c003fe44b08b36e8b")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-util.el

(autoload 'cider-view-manual "cider-util" "\
View the manual in your default browser.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cider-util" "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-util.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-util.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cider-util" '("cider-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "nrepl-client"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/nrepl-client.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/nrepl-client.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "nrepl-client" '("nrepl-" "cider-enlighten-mode")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "nrepl-dict" "../../../../../../../.emacs.d/elpa/cider-20180617.238/nrepl-dict.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/cider-20180617.238/nrepl-dict.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "nrepl-dict" '("nrepl-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-apropos.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-browse-ns.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-browse-spec.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-cheatsheet.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-classpath.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-client.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-common.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-compat.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-debug.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-doc.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-eldoc.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-grimoire.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-inspector.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-interaction.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-macroexpansion.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-mode.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-overlays.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-popup.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-profile.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-repl-history.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-repl.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-resolve.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-scratch.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-selector.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-stacktrace.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-test.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider-util.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/cider.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/nrepl-client.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/cider-20180617.238/nrepl-dict.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cider-autoloads.el ends here

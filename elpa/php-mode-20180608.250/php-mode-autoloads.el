;;; php-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "php-array" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-array.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-array.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-array" '("php-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-classobj"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-classobj.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-classobj.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-classobj" '("php")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-control-structures"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-control-structures.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-control-structures.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-control-structures" '("php-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-crack" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-crack.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-crack.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-crack" '("php-crack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-dio" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-dio.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-dio.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-dio" '("php-dio_")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-dom" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-dom.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-dom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-dom" '("php-dom")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-exceptions"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-exceptions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-exceptions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-exceptions" '("php-try-catch")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-exif" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-exif.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-exif.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-exif" '("php-exif_")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-ext" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-ext.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-ext.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-ext" '("php-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-filesystem"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-filesystem.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-filesystem.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-filesystem" '("php-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-gd" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-gd.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-gd.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-gd" '("php-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-math" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-math.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-math.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-math" '("php-")))

;;;***

;;;### (autoloads nil "php-mode" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-mode.el"
;;;;;;  "89496d0c2409237963f8d77e49dcef65")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-mode.el

(let ((loads (get 'php 'custom-loads))) (if (member '"php-mode" loads) nil (put 'php 'custom-loads (cons '"php-mode" loads))))

(defvar php-extra-constants 'nil "\
A list of additional strings to treat as PHP constants.")

(custom-autoload 'php-extra-constants "php-mode" nil)

(if (version< emacs-version "24.4") (dolist (i '("php" "php5" "php7")) (add-to-list 'interpreter-mode-alist (cons i 'php-mode))) (add-to-list 'interpreter-mode-alist (cons "php\\(?:-?[3457]\\(?:\\.[0-9]+\\)*\\)?" 'php-mode)))

(define-obsolete-variable-alias 'php-available-project-root-files 'php-project-available-root-files "1.19.0")

(let ((loads (get 'php-faces 'custom-loads))) (if (member '"php-mode" loads) nil (put 'php-faces 'custom-loads (cons '"php-mode" loads))))

(autoload 'php-mode "php-mode" "\
Major mode for editing PHP code.

\\{php-mode-map}

\(fn)" t nil)

(autoload 'php-current-class "php-mode" "\
Insert current class name if cursor in class context.

\(fn)" t nil)

(autoload 'php-current-namespace "php-mode" "\
Insert current namespace if cursor in namespace context.

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons (eval-when-compile (rx (or (: "." (or (: "php" (32 (in "s345t"))) "amk" "phtml")) (: "/" (or "Amkfile" ".php_cs" ".php_cs.dist"))) string-end)) 'php-mode) t)

;;;### (autoloads "actual autoloads are elsewhere" "php-mode" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-mode" '("php-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-pcre" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-pcre.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-pcre.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-pcre" '("php-preg_")))

;;;***

;;;### (autoloads nil "php-project" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-project.el"
;;;;;;  "fe95262dc594ca612b08c34a1dc0541c")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-project.el

(defvar-local php-project-root 'auto "\
Method of searching for the top level directory.

`auto' (default)
      Try to search file in order of `php-project-available-root-files'.

SYMBOL
      Key of `php-project-available-root-files'.

STRING
      A file/directory name of top level marker.
      If the string is an actual directory path, it is set as the absolute path
      of the root directory, not the marker.")

(put 'php-project-root 'safe-local-variable #'(lambda (v) (or (stringp v) (assq v php-project-available-root-files))))

(defvar-local php-project-bootstrap-scripts nil "\
List of path to bootstrap php script file.

The ideal bootstrap file is silent, it only includes dependent files,
defines constants, and sets the class loaders.")

(put 'php-project-bootstrap-scripts 'safe-local-variable #'php-project--eval-bootstrap-scripts)

(defvar-local php-project-php-executable nil "\
Path to php executable file.")

(put 'php-project-php-executable 'safe-local-variable #'(lambda (v) (and (stringp v) (file-executable-p v))))

(defvar-local php-project-phan-executable nil "\
Path to phan executable file.")

(put 'php-project-phan-executable 'safe-local-variable #'php-project--eval-bootstrap-scripts)

(defvar-local php-project-coding-style nil "\
Symbol value of the coding style of the project that PHP major mode refers to.

Typically it is `pear', `drupal', `wordpress', `symfony2' and `psr2'.")

(put 'php-project-coding-style 'safe-local-variable #'symbolp)

(autoload 'php-project-get-bootstrap-scripts "php-project" "\
Return list of bootstrap script.

\(fn)" nil nil)

(autoload 'php-project-get-root-dir "php-project" "\
Return path to current PHP project.

\(fn)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "php-project"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-project.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-project.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-project" '("php-project-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-regex" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-regex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-regex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-regex" '("php-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-simplexml"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-simplexml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-simplexml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-simplexml" '("php-simplexml_")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-strings"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-strings.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-strings.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-strings" '("php-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-var" "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-var.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-var.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-var" '("php-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-xmlparser"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-xmlparser.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-xmlparser.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-xmlparser" '("php-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "php-xmlreader"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-xmlreader.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-xmlreader.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "php-xmlreader" '("php-xmlreader")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-array.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-classobj.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-control-structures.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-crack.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-dio.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-dom.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-exceptions.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-exif.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-ext.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-filesystem.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-gd.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-math.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-mode-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-mode.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-pcre.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-project.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-regex.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-simplexml.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-strings.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-var.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-xmlparser.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/php-mode-20180608.250/php-xmlreader.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; php-mode-autoloads.el ends here

;;; Compiled snippets and support files for `php-mode'
;;; contents of the .yas-setup.el support file:
;;;
;;; .yas-setup.el --- Yasnippet helper functions for PHP snippets

;;; Commentary:

;;; Code:
(require 'yasnippet)

(defun yas-php-get-class-name-by-file-name ()
  "Return name of class-like construct by `file-name'.

\"class-like\" contains class, trait and interface."
  (file-name-nondirectory
   (file-name-sans-extension (or (buffer-file-name)
                                 (buffer-name (current-buffer))))))

;;; .yas-setup.el ends here
;;; Snippet definitions:
;;;
(yas-define-snippets 'php-mode
                     '(("ve" "var_export(${1:$var}${2:, true});" "var_export()" nil
                        ("generic")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/ve" nil nil)
                       ("vde" "var_dump(${1:$var});exit(1);" "var_dump() exit" nil
                        ("generic")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/vde" nil nil)
                       ("vd" "var_dump(${1:$var});" "var_dump()" nil
                        ("generic")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/vd" nil nil)
                       ("@var" "/** @var ${type} */\n" "PHPDoc: @var (one-line)" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/var-oneline" nil nil)
                       ("*var" "* @var ${type}${0:\n*}" "PHPDoc: var" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/var-doc" nil nil)
                       ("try" "try {\n    $0\n} catch (${1:\\PDOException} ${2:$e}) {\n    ${3:\n    throw $e;}\n}" "try" nil
                        ("control structure")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/try" nil nil)
                       ("trait" "trait ${1:`(yas-php-get-class-name-by-file-name)`}\n{\n    $0\n}" "trait" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/trait" nil nil)
                       ("ticks" "declare(ticks=${1:1});" "declare(ticks=)" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/ticks" nil nil)
                       ("switch" "switch (${1:condition}) {\n    case ${2:expr}:\n        $0\n        break;\n    default:\n}" "switch" nil
                        ("control structure")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/switch" nil nil)
                       ("stdout" "fwrite(STDOUT, ${1:$var}${2: . PHP_EOL});" "fwrite(STDOUT)" nil
                        ("generic")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/stdout" nil nil)
                       ("set" "public function set${1:$(upcase-initials yas-text)}(\\$$1)\n{\n    \\$this->$1 = \\$$1;\n}" "set" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/set" nil nil)
                       ("*return" "* @return ${1:type} ${2:description}" "PHPDoc @return" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/return-doc" nil nil)
                       ("psysh" "eval(\\Psy\\sh());" "psysh" nil
                        ("generic")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/psysh" nil nil)
                       ("*property" "* @property ${1:type} ${2:$variable} ${3:description}${0:\n*}" "PHPDoc @property" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/property-doc" nil nil)
                       ("*param" "* @param ${1:type} ${2:$variable} ${3:description}${0:\n*}" "PHPDoc @param" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/param-doc" nil nil)
                       ("*property" "* @property ${1:type} ${2:$variable} ${3:description}${0:\n*}" "PHPDoc @property" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/method-doc" nil nil)
                       ("*license-mpl" "* @license https://www.mozilla.org/en-US/MPL/2.0/ MPL-2.0${0:\n*}" "PHPDoc @license MPL" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/license-doc-mpl" nil nil)
                       ("*license-mit" "* @license https://opensource.org/licenses/MIT MIT${0:\n*}" "PHPDoc @license MIT" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/license-doc-mit" nil nil)
                       ("*license-gplv2" "* @license https://www.gnu.org/licenses/old-licenses/gpl-2.0.html GPL-2.0${0:\n*}" "PHPDoc @license GPLv2" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/license-doc-gplv2" nil nil)
                       ("*license-apache" "* @license https://www.apache.org/licenses/LICENSE-2.0 Apache-2.0${0:\n*}" "PHPDoc @license Apache License" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/license-doc-apache" nil nil)
                       ("*license" "* @license ${1:https://www.gnu.org/licenses/gpl-3.0.html} ${2:GPL-3.0}${0:\n*}" "PHPDoc @license" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/license-doc" nil nil)
                       ("interface" "interface ${1:`(yas-php-get-class-name-by-file-name)`}\n{\n    $0\n}" "interface" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/interface" nil nil)
                       ("if" "if (${1:condition}) {\n    $0\n}" "if" nil
                        ("control structure")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/if" nil nil)
                       ("get" "public function get${1:$(upcase-initials yas-text)}()\n{\n    return \\$this->$1;\n}" "get" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/get" nil nil)
                       ("function:" "${4:public }function ${1:name}(${2:$arg, ...}): ${3:type}\n{\n    $0\n}" "function :type" nil
                        ("control structure")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/function-return-type" nil nil)
                       ("function" "${4:public }function ${1:name}(${2:$arg, ...})\n{\n    $0\n}" "function statement" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/function" nil nil)
                       ("foreach=>" "foreach (${1:$expression} as \\$${2:key} => \\$${3:value}) {\n    $0\n}" "foreach (array as $key => $value)" nil
                        ("control structure")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/foreach_value" nil nil)
                       ("foreach" "foreach (${1:$expression} as \\$${2:value}) {\n    $0\n}" "foreach" nil
                        ("control structure")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/foreach" nil nil)
                       ("fn" "function (${2:$arg, ...}) ${3:use ($var) }{\n    $0\n}`(if (eq (point) (line-end-position)) \";\" \"\")`" "function expr (closure)" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/fn" nil nil)
                       ("elseif" "elseif (${1:condition}) {\n    $0\n}" "elseif" nil
                        ("control structure")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/elseif" nil nil)
                       ("else" "else {\n    $0\n}" "else" nil
                        ("control structure")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/else" nil nil)
                       ("*" "/** ${1:Summary} */\n" "Doc comment (one-line)" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/doc-comment-oneline" nil nil)
                       ("/**" "/**\n * ${1:Summary}\n *\n *$0\n */" "PHPDoc (multi-line)" nil
                        ("annotation")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/doc-comment-multiline" nil nil)
                       ("define" "define('${1:NAME}', ${2:value});" "define" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/define" nil nil)
                       ("const" "const ${1:NAME} = ${2:value};" "const" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/const" nil nil)
                       ("clsi" "class ${1:`(yas-php-get-class-name-by-file-name)`} implements ${interface}\n{\n    $0\n}" "class implements" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/clsi" nil nil)
                       ("clse" "class ${1:`(yas-php-get-class-name-by-file-name)`} extends ${2:ParentClass}\n{\n    $0\n}" "class extends" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/clse" nil nil)
                       ("cls" "class ${1:`(yas-php-get-class-name-by-file-name)`}\n{\n  $0\n}" "class" nil
                        ("definitions")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/cls" nil nil)
                       ("catch" "catch (${1:\\PDOException} ${2:$e}) {\n    ${3:\n    throw $e;}\n}" "catch" nil
                        ("control structure")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/catch" nil nil)
                       ("__callStatic" "public function __callStatic($name, $args)\n{\n    $0\n}" "__callStatic()" nil
                        ("Magic Methods")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/__callStatic" nil nil)
                       ("__call" "public function __call($name, $args)\n{\n    $0\n}" "__call()" nil
                        ("Magic Methods")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/php-mode/__call" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:06 2018

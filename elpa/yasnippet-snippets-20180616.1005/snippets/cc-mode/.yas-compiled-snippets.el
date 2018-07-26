;;; Compiled snippets and support files for `cc-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'cc-mode
                     '(("while" "while (${1:condition}) {\n      $0\n}" "while" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/while" nil nil)
                       ("?" "(${1:cond}) ? ${2:then} : ${3:else};" "ternary" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/ternary" nil nil)
                       ("switch" "switch (${1:expr}) {\ncase ${2:constexpr}:${3: \\{}\n    $0\n    break;\n${3:$(if (string-match \"\\{\" yas-text) \"\\}\\n\" \"\")}default:\n    break;\n}" "switch (...) { case : ... default: ...}" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/switch" nil nil)
                       ("struct" "struct ${1:name}\n{\n    $0\n};" "struct ... { ... }" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/struct" nil nil)
                       ("printf" "printf(\"${1:%s}\\\\n\"${1:$(if (string-match \"%\" yas-text) \", \" \"\\);\")\n}$2${1:$(if (string-match \"%\" yas-text) \"\\);\" \"\")}" "printf" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/printf" nil nil)
                       ("!<" "/*!< ${1:Detailed description after the member} */" "Member description" nil
                        ("doxygen")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/member_description" nil nil)
                       ("if" "if (${1:condition}) ${2:{\n    $0\n}}" "if (...) { ... }" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/if" nil nil)
                       ("\\brief" "/**\n *  \\brief ${1:function description}\n ${2:*\n *  ${3:Detailed description}\n *\n }*  \\param ${4:param}\n *  \\return ${5:return type}\n */" "Function description" nil
                        ("doxygen")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/function_description" nil nil)
                       ("forn" "for (${1:auto }${2:i} = ${3:0}; $2 < ${4:MAXIMUM}; ++$2) {\n    $0\n}\n" "for_n" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/for_n" nil nil)
                       ("for" "for (${1:i = 0}; ${2:i < N}; ${3:++i}) {\n    $0\n}\n" "for" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/for" nil nil)
                       ("\\file" "/**\n *   \\file ${1:`(file-name-nondirectory(buffer-file-name))`}\n *   \\brief ${2:A Documented file.}\n ${3:*\n *  ${4:Detailed description}\n *\n}*/\n" "File description" nil
                        ("doxygen")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/file_description" nil nil)
                       ("else" "else${1: {\n    $0\n}}" "else { ... }" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/else" nil nil)
                       ("do" "do\n{\n    $0\n} while (${1:condition});" "do { ... } while (...)" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/do" nil nil)
                       ("case" "case ${2:constexpr}:${3: \\{}\n    $0\n    break;\n${3:$(if (string-match \"\\{\" yas-text) \"\\}\" \"\")}" "case : {...}" nil nil
                        ((yas-also-auto-indent-first-line t))
                        "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cc-mode/case" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:00 2018

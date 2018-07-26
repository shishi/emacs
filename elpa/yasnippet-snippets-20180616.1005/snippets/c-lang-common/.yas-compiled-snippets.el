;;; Compiled snippets and support files for `c-lang-common'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c-lang-common
                     '(("typedef" "typedef ${1:type} ${2:alias};" "typedef" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/c-lang-common/typedef" nil nil)
                       ("once" "#ifndef ${1:`(upcase (file-name-nondirectory (file-name-sans-extension (or (buffer-file-name) \"\"))))`_H}\n#define $1\n\n$0\n\n#endif /* $1 */" "#ifndef XXX; #define XXX; #endif" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/c-lang-common/once" nil nil)
                       ("math" "#include <math.h>\n$0" "math" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/c-lang-common/math" nil nil)
                       ("main" "int main(${1:int argc, char *argv[]})\n{\n    $0\n    return 0;\n}\n" "main" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/c-lang-common/main" nil nil)
                       ("incl" "#include \"$1\"" "#include \"...\"" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/c-lang-common/inc.1" nil nil)
                       ("incs" "#include <$1>" "#include <...>" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/c-lang-common/inc" nil nil)
                       ("ifdef" "#ifdef ${1:MACRO}\n\n$0\n\n#endif // $1" "ifdef" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/c-lang-common/ifdef" nil nil)
                       ("doxy" "/**\n * @brief    ${1:function description}\n *\n * @details  ${2:detailed description}\n *\n * @param    ${3:param}\n *\n * @return   ${4:return type}\n */\n" "Function Doxygen Doc" nil
                        ("doxygen")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/c-lang-common/function_doxygen_doc" nil nil)
                       ("fopen" "FILE *${fp} = fopen(${\"file\"}, \"${r}\");" "FILE *fp = fopen(..., ...);" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/c-lang-common/fopen" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:00 2018

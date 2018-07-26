;;; Compiled snippets and support files for `nsis-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'nsis-mode
                     '(("sec" "Section \"${1:Program}\"\n        $0\nSectionEnd" "section" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/section" nil nil)
                       ("out" "outFile \"${1:setup}.exe\"" "outfile" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/outfile" nil nil)
                       ("$" "$OUTDIR" "outdir" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/outdir" nil nil)
                       ("msg" "MessageBox MB_OK \"${1:hello}\"" "message" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/message" nil nil)
                       ("macro" "!macro ${1:Name} UN\n$0\n\n!macroend" "macro" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/macro" nil nil)
                       ("$" "$INSTDIR" "instdir" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/instdir" nil nil)
                       ("im" "!insertmacro ${1:Name} ${2:\"args\"}\n" "insert_macro" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/insert_macro" nil nil)
                       ("inc" "!include \"${Library.nsh}\"" "include" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/include" nil nil)
                       ("if" "${IF} ${1:cond}\n      $0\n${ElseIf} ${2:else_cond}\n\n${EndIf}" "if" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/if" nil nil)
                       ("fun" "Function ${1:Name}\n         $0\nFunctionEnd" "function" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/function" nil nil)
                       ("def" "!define ${1:CONSTANT} ${2:value}" "define" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/nsis-mode/define" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:05 2018

;;; Compiled snippets and support files for `sh-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'sh-mode
                     '(("while" "while ${1:cond}; do\n    $0\ndone" "while loop" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/sh-mode/while" nil nil)
                       ("until" "until ${1:cond}; do\n    $0\ndone" "until loop" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/sh-mode/until" nil nil)
                       ("s!" "#!/usr/bin/env bash\nset -euo pipefail\nIFS=$'\\n\\t'\n\n$0" "safer bash settings for scripts" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/sh-mode/safe-bang" nil nil)
                       ("ife" "if ${1:cond}\nthen ${2:stuff}\nelse ${3:other}\nfi\n$0" "ife" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/sh-mode/ife" nil nil)
                       ("if" "if ${1:[ -f file]}\n   then ${2:do}\nfi\n$0" "if" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/sh-mode/if" nil nil)
                       ("f" "function ${1:name} {\n         $0\n}" "function" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/sh-mode/function" nil nil)
                       ("for" "for ${1:var} in ${2:stuff}; do\n    $0\ndone" "for loop" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/sh-mode/for loop" nil nil)
                       ("!" "#!/usr/bin/env bash\n$0" "bang" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/sh-mode/bang" nil nil)
                       ("args" "if [ $# -lt ${1:2} ]\n   then $0\nfi" "args" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/sh-mode/args" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:08 2018

;;; Compiled snippets and support files for `lisp-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'lisp-mode
                     '(("typecast" "(coerce ${1:object} ${2:type})\n$0\n" "cast" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/typecast" nil nil)
                       ("switch" "(cond (${1:case1} (${2:do-this}))\n      (${3:case2} (${4:do-this}))     \n      (t ${5:default}))\n$0\n" "switch" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/switch" nil nil)
                       ("slot" "(${1:name} :initarg :${1:$(yas/substr yas-text \"[^: ]*\")}\n           :initform (error \":${1:$(yas/substr yas-text \"[^: ]*\")} must be specified\")\n           ;; :accessor ${1:$(yas/substr yas-text \"[^: ]*\")}\n           :reader ${1:$(yas/substr yas-text \"[^: ]*\")}-changed\n           :writer set-${1:$(yas/substr yas-text \"[^: ]*\")}\n           :type\n           :allocation ${3::class :instance}\n           :documentation \"${2:about-slot}\")\n$0\n" "slot" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/slot" nil nil)
                       ("ifnot" "(unless (${1:condition})\n        (${2:then-do-this}))\n$0\n" "ifnot (...) (...)  ..." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/ifnot" nil nil)
                       ("ifelse" "(if (${1:condition})\n    (${2:then})\n    (${3:else}))\n$0\n" "ifelse (...) (...) (...) ..." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/ifelse" nil nil)
                       ("if" "(when (${1:condition})\n      (${2:then-do-this}))\n$0\n" "if" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/if" nil nil)
                       ("print" "(format t \"~& $0 ~%\")\n" "format" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/format" nil nil)
                       ("foreach" "(dolist (${1:var} ${2:list-form})\n        ${3:body})\n$0\n" "do" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/foreach" nil nil)
                       ("for" "(dotimes (${1:var} ${2:count-form})\n         ${3:body})\n$0\n" "do" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/for" nil nil)
                       ("do" "(do ((${1:var1} ${2:init-form} ${3:step-form})\n     (${4:var2} ${5:init-form} ${6:step-form}))  \n    (${7:condition} ${8:return-value})\n    (${9:body}))\n$0\n" "do" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/do" nil nil)
                       ("defp" "(defpackage #:${1:name}\n   (:nicknames #:${2:nick})\n   (:use #:cl #:closer-mop #:${3:package})\n   (:shadow :${4.symbol})\n   (:shadowing-import-from #:${5:package} #:${6:symbol})\n   (:export :$0))\n" "defpackage" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/defpackage" nil nil)
                       ("/*" "#|${1:type the comment here}|#\n$0\n" "comment" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/comment" nil nil)
                       ("cls" "(defclass ${1:name} (${2:inherits})\n   (${4:slot})\n   (:documentation \"${3:doc}\"))\n$0\n" "class" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/lisp-mode/class" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:04 2018

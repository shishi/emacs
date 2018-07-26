;;; Compiled snippets and support files for `cmake-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'cmake-mode
                     '(("set" "set(${1:var} ${2:value})" "set" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/set" nil nil)
                       ("proj" "project($0)" "project" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/project" nil nil)
                       ("opt" "option(${1:OPT} \"${2:docstring}\" ${3:value})" "option" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/option" nil nil)
                       ("msg" "message(${1:STATUS }\"$0\")" "message" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/message" nil nil)
                       ("macro" "macro(${1:name}${2: args})\n        $2\nendmacro($1)$0" "macro" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/macro" nil nil)
                       ("inc" "include($0)\n" "include" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/include" nil nil)
                       ("if" "if(${1:cond})\n        $2\nelse(${3:cond})\n        $0\nendif($1)$0" "ifelse" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/ifelse" nil nil)
                       ("if" "if(${1:cond})\n   $2\nendif($1)$0" "if" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/if" nil nil)
                       ("fun" "function(${1:name})\n         $2\nendfunction($1)$0" "function" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/function" nil nil)
                       ("for" "foreach(${1:var} \\${${2:array}})\n        $3\nendforeach($1)$0" "foreach" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/foreach" nil nil)
                       ("min" "cmake_minimum_required(VERSION ${1:2.6})" "cmake_minimum_required" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/cmake_minimum_required" nil nil)
                       ("lib" "add_library($1 ${2:class.cpp})\ntarget_link_libraries($1 $3)" "add_library" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/add_library" nil nil)
                       ("exe" "add_executable($1 ${2:main.cpp})\ntarget_link_libraries($1 $3)" "add_executable" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/cmake-mode/add_executable" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:01 2018

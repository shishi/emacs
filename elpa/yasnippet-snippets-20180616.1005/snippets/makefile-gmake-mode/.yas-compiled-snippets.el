;;; Compiled snippets and support files for `makefile-gmake-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'makefile-gmake-mode
                     '(("wl" "$(wildcard $0)" "wildcard" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/wildcard" nil nil)
                       (nil "define ${1:PROGRAM$(upcase yas-text)}_template\n$0\nendef\n\n\\$(foreach ${2:${1:$(downcase yas-text)}},\\$(${3:$1S}),\\$(eval \\$(call $1_template,\\$($2))))" "template" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/template" "C-c C-t" nil)
                       ("." ".${1:PHONY$(upcase yas-text)}: $0" "special targets" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/special" nil nil)
                       ("sh" "\\$(shell ${1:command})$0" "shell" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/shell" nil nil)
                       ("ph" ".PHONY = $0" "phony" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/phony" nil nil)
                       ("ps" "$(patsubst ${1:from},${2:to},${3:src})" "patsubst" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/patsubst" nil nil)
                       ("nd" "\\$(notdir ${1:\\$(${2:paths})})$0" "notdir" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/notdir" nil nil)
                       ("make" "\\$(MAKE) --directory=${1:\\$@}\n$0" "make" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/make" nil nil)
                       ("d" "\\$(dir ${1:\\$(${2:paths})})$0" "dir" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/dir" nil nil)
                       ("as" "\\$(addsuffix ${1:.suffix},${2:\\$(${3:items})})$0" "addsuffix" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/addsuffix" nil nil)
                       ("ap" "\\$(addprefix ${1:\\$(${2:dir})/},${3:\\$(${4:items})})$0" "addprefix" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/addprefix" nil nil)
                       ("abs" "\\$(abspath ${1:\\$(${2:paths})})$0" "abspath" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/makefile-gmake-mode/abspath" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:05 2018

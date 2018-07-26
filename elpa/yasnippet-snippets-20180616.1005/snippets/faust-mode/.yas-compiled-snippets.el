;;; Compiled snippets and support files for `faust-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'faust-mode
                     '(("wi" "with {\n  ${1:expression}\n};\n$0" "with" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/with" nil nil)
                       ("vs" "vslider(\"${1:name}\", ${2:default}, ${3:min}, ${4:max}, ${5:step})$0" "vslider" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/vslider" nil nil)
                       ("vg" "vgroup(\"${1:name}\", ${2:expression})$0" "vgroup" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/vgroup" nil nil)
                       ("vb" "vbargraph(\"${1:name}\", ${2:min}, ${3:max})$0" "vbargraph" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/vbargraph" nil nil)
                       ("tg" "tgroup(\"${1:name}\", ${2:expression})$0" "tgroup" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/tgroup" nil nil)
                       ("su" "sum(${1:i}, ${2:Nr}, ${3:expression})$0" "sum" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/sum" nil nil)
                       ("se" "seq(${1:i}, ${2:Nr}, ${3:expression})$0" "seq" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/seq" nil nil)
                       ("ru" "  (${1:pattern}) => ${2:expression};\n$0" "rule" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/rule" nil nil)
                       ("mu" "prod(${1:i}, ${2:Nr}, ${3:expression})$0" "prod" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/prod" nil nil)
                       ("px" "process(${1:x}) = ${2:expression}($1);" "processx" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/processx" nil nil)
                       ("pr" "process = $1;\n$0" "process" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/process" nil nil)
                       ("pa" "par(${1:i}, ${2:Nr}, ${3:expression})$0" "par" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/par" nil nil)
                       ("ne" "nentry(\"${1:name}\", ${2:default}, ${3:min}, ${4:max}, ${5:step})$0" "nentry" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/nentry" nil nil)
                       ("im" "import(\"$1.lib\");$0" "import" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/import" nil nil)
                       ("hs" "hslider(\"${1:name}\", ${2:default}, ${3:min}, ${4:max}, ${5:step})$0" "hslider" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/hslider" nil nil)
                       ("hg" "hgroup(\"${1:name}\", ${2:expression})$0" "hgroup" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/hgroup" nil nil)
                       ("he" "declare name \"$1\";\ndeclare version \"${2:0.1}\";\ndeclare author \"$3\";\ndeclare license \"${4:$$\n  (yas-choose-value '(\n    \"AGPLv3\"\n    \"Apache\"\n    \"BSD 2-clause\"\n    \"BSD 3-clause\"\n    \"GPLv2\"\n    \"GPLv3\"\n    \"LGPLv3\"\n    \"MIT\"\n  ))}\";\n$0\n" "header" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/header" nil nil)
                       ("hb" "hbargraph(\"${1:name}\", ${2:min}, ${3:max})$0" "hbargraph" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/hbargraph" nil nil)
                       ("dv" "declare version \"${1:0.1}\";\n$0" "declare version" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/declareversion" nil nil)
                       ("dn" "declare name \"$1\";\n$0" "declare name" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/declarename" nil nil)
                       ("dl" "declare license \"${1:$$\n  (yas-choose-value '(\n    \"AGPLv3\"\n    \"Apache\"\n    \"BSD 2-clause\"\n    \"BSD 3-clause\"\n    \"GPLv2\"\n    \"GPLv3\"\n    \"LGPLv3\"\n    \"MIT\"\n  ))}\";\n$0" "declare license" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/declarelicense" nil nil)
                       ("da" "declare author \"$1\";\n$0" "declare author" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/declareauthor" nil nil)
                       ("de" "declare ${1:key} \"${2:value}\";\n$0" "declare" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/declare" nil nil)
                       ("co" "component(\"$1.dsp\")$0" "component" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/component" nil nil)
                       ("ch" "checkbox(\"$1\")$0" "checkbox" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/checkbox" nil nil)
                       ("ca" "case {\n  $1\n  };\n$0" "case" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/case" nil nil)
                       ("bu" "button(\"$1\")$0" "button" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/faust-mode/button" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:03 2018

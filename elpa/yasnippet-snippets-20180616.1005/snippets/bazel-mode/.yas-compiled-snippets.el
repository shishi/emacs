;;; Compiled snippets and support files for `bazel-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'bazel-mode
                     '(("ws" "workspace(name = \"$0\")\n" "workspace" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/ws" nil nil)
                       ("shtest" "sh_test(\n    name = \"$0\",\n    size = \"$1\",\n    srcs = \"$2\",\n    deps = \"$3\",\n    data = \"$4\"\n)\n" "sh_test" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/shtest" nil nil)
                       ("shlib" "sh_library(\n    name = \"$0\",\n    data = [\n        \"$1\"\n    ]\n)\n" "sh_library" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/shlib" nil nil)
                       ("shbin" "sh_binary(\n    name = \"$0\",\n    srcs = \"$1\",\n    data = \"$2\"\n)\n" "sh_binary" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/shbin" nil nil)
                       ("pytest" "py_test(\n    name = \"$0\",\n    srcs = [\n        \"$1\"\n    ],\n    main = \"$2\",\n)\n" "py_test" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/pytest" nil nil)
                       ("pyrun" "py_runtime(\n    name = \"$0\",\n    files = \"$1\",\n    interpreter = \"$2\"\n)\n" "py_runtime" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/pyrun" nil nil)
                       ("pylib" "py_library(\n    name = \"$0\",\n    deps = \"$1\",\n    srcs = \"$2\"\n)\n" "py_library" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/pylib" nil nil)
                       ("pybin" "py_binary(\n    name = \"$0\",\n    srcs = \"$1\",\n    data = \"$2\"\n    deps = [\n        \"$3\"\n    ]\n)\n" "py_binary" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/pybin" nil nil)
                       ("jtest" "java_test(\n    name = \"$0\",\n    size = \"$1\",\n    runtime_deps = [\n        \"$2\"\n    ]\n)\n" "java_test" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/jtest" nil nil)
                       ("jrun" "java_runtime(\n    name = \"$0\",\n    srcs = \"$1\",\n    java_home = \"$2\"\n)\n" "java_runtime" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/jrun" nil nil)
                       ("jlib" "java_library(\n    name = \"$0\",\n    deps = \"$1\"\n)\n" "java_library" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/jlib" nil nil)
                       ("jimp" "java_import(\n    name = \"$0\",\n    jars = [\n        \"$1\"\n    ]\n)\n" "java_import" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/jimp" nil nil)
                       ("jbin" "java_binary(\n    name = \"$0\",\n    srcs = \"$1\",\n    deps = \"$2\"\n)\n" "java_binary" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/jbin" nil nil)
                       ("genq" "genquery(\n    name = \"$0\",\n    expression = \"$1\",\n    scope = \"$2\"\n)\n" "genquery" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/genq" nil nil)
                       ("fg" "filegroup(\n    name = \"$0\",\n    srcs = \"$1\"\n)\n" "filegroup" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/fg" nil nil)
                       ("cct" "cc_test(\n    name = \"$0\"\n    srcs = [\"$1\"],\n    deps = [\"$2\"]\n)\n" "cc_test" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/cct" nil nil)
                       ("ccp" "cc_proto_library(\n    name = \"$0\",\n    deps = [\"$1\"]\n)\n" "cc_proto_library" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/ccp" nil nil)
                       ("ccl" "cc_library(\n    name = \"$0\",\n    srcs = [\"$1\"],\n    hdrs = [\"$2\"],\n    deps = [\"$3\"]\n)\n" "cc_library" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/ccl" nil nil)
                       ("ccinc" "cc_inc_library(\n    name = \"$0\",\n    hdrs = [\"$1\"],\n    prefix = \"$2\",\n    deps = [\"$3\"]\n)\n" "cc_inc_library" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/ccinc" nil nil)
                       ("cci" "cc_import(\n    name = \"$0\",\n    hdrs = [\"$1\"]\n)\n" "cc_import" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/cci" nil nil)
                       ("ccb" "cc_binary(\n    name = \"$0\",\n    srcs = [\"$1\"],\n    deps = [\"$2\"]\n)\n" "cc_binary" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/ccb" nil nil)
                       ("alias" "alias(\n    name = \"$0\",\n    actual = \"$1\"\n)\n" "alias" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bazel-mode/alias" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:27:59 2018

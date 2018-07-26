;;; Compiled snippets and support files for `js-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'js-mode
                     '(("*ty" "* @type {${type}}" "type-inline-comment"
                        (=
                         (js2-node-type
                          (js2-node-at-point))
                         js2-COMMENT)
                        nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/type-multiline-comment" nil nil)
                       ("@ty" "/** @type {${type}} */" "type-inline-comment"
                        (not
                         (=
                          (js2-node-type
                           (js2-node-at-point))
                          js2-COMMENT))
                        nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/type-inline-comment" nil nil)
                       ("try" "try {\n  $1\n} catch (err) {\n  $2\n}${3: finally {\n  $4\n}}" "try...catch statement" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/try-catch" nil nil)
                       ("sw" "switch (${1:condition}) {\n  case ${2:expression}:\n    $0\n    break;\n  default:\n}" "switch" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/switch" nil nil)
                       ("set" "set ${1:prop}(${2:value}) {\n  $0\n}" "setter" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/setter" nil nil)
                       ("*@r" "* @return {${type}}" "return-comment"
                        (=
                         (js2-node-type
                          (js2-node-at-point))
                         js2-COMMENT)
                        nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/return-comment" nil nil)
                       ("req.json" "new Request.JSON({\n  onSuccess: function(responseJSON, responseText) {\n    $0\n  }\n}).${1:send}(${2:url});" "json" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/req.json" nil nil)
                       ("req.html" "new Request.HTML({\n  onSuccess: function(responseTree, responseElements, responseHTML, responseJavaScript) {\n    $0\n  }\n}).${1:get}(${2:url});" "html" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/req.html" nil nil)
                       ("prom" "new Promise((resolve, reject) => {\n  $0\n});" "Promise" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/promise" nil nil)
                       ("*@p" "* @param {${type}} ${comment}." "param-comment"
                        (=
                         (js2-node-type
                          (js2-node-at-point))
                         js2-COMMENT)
                        nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/param-comment" nil nil)
                       ("/**" "/**\n * $0\n */" "multiline-comment" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/multiline-comment" nil nil)
                       ("met" "${1:name}(${2:arg}) {\n  $0\n}" "method" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/method" nil nil)
                       ("log" "console.log($0);" "console.log" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/log" nil nil)
                       ("let" "let ${1:name} = ${2:initial};" "let declaration" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/let" nil nil)
                       ("init" "constructor(${1:arg}) {\n  ${2:super(${3:arg});}\n  $0\n}" "init-es6" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/init-es6" nil nil)
                       ("init" "initialize: function($1) {\n  $0\n}" "Constructor" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/init" nil nil)
                       ("imm" "import { ${1:member1}, ${2:member2} } from '${3:module}';" "import member" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/import-member" nil nil)
                       ("imp" "import ${1:defaultMember}${2:, { ${3:member} }} from '${4:module}';" "import" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/import" nil nil)
                       ("if" "if (${1:condition}) {\n  $0\n}" "if" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/if" nil nil)
                       ("get" "get ${1:prop}() {\n  return $0;\n}" "getter" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/getter" nil nil)
                       ("f" "function ${1:name}(${2:arg}) {\n         $0\n}\n" "function" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/function" nil nil)
                       ("for" "for (var ${1:i} = ${2:0}; $1 < ${3:collection}.length; $1++) {\n  $0\n}" "for" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/for" nil nil)
                       ("exp" "export${1: default} $0;" "export" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/export" nil nil)
                       ("ev.fire" "fireEvent('$0')" "fireEvent" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/ev.fire" nil nil)
                       ("ev.add" "addEvent('${1:event}', function($2) {\n  $0\n});" "addEvent" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/ev.add" nil nil)
                       ("el" "else {\n  $0\n}" "else" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/el" nil nil)
                       ("each" "${1:collection}.forEach(function (${2:elem}) {\n  $0\n});" "each" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/each" nil nil)
                       ("dbg" "debugger;" "debugger" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/debugger" nil nil)
                       ("const" "const ${1:name} = ${2:initial};" "const declaration" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/const" nil nil)
                       ("com" "/*\n * $0\n */" "comment (/* ... */)" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/com" nil nil)
                       ("class" "class ${1:Class}${2: extends ${3:ParentClass}} {\n  ${4:constructor(${5:arg}) {\n    ${6:super(arg);}\n    $7\n  }}\n\n  $0\n}" "class-es6" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/class-es6" nil nil)
                       ("class" "var ${1:name} = new Class({\n  initialize: function($2) {\n    $0\n  }\n});" "Class" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/class" nil nil)
                       ("af" "(${1:arg}) => $0" "arrow function" nil
                        ("es6")
                        nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/arrow-function" nil nil)
                       ("al" "alert($0);" "alert" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/js-mode/al" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:04 2018

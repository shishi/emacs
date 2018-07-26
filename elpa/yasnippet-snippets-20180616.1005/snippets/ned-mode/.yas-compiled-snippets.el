;;; Compiled snippets and support files for `ned-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'ned-mode
                     '(("sub" "submodules:\n   $0" "submodules" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/ned-mode/submodules" nil nil)
                       ("simple" "simple ${1:Component}${2: extends ${3:Component}}\n{\n    $0\n}" "simple" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/ned-mode/simple" nil nil)
                       ("net" "network ${1:Name}\n{\n        submodules:\n           $2\n        connections:\n           $3\n}" "network" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/ned-mode/network" nil nil)
                       ("imp" "import ned.${1:Package};" "import" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/ned-mode/import" nil nil)
                       ("for" "for ${1:i}=${2:0}..${3:sizeof(port)-1} {\n    $0\n}" "for" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/ned-mode/for" nil nil)
                       ("conn" "connections${1: allowunconnected}:\n                $0" "connections" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/ned-mode/connections" nil nil)
                       ("chan" "channel Channel extends ${1:ned.DelayChannel} {\n        $0\n}\n" "chan" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/ned-mode/chan" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:05 2018

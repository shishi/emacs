;;; Compiled snippets and support files for `erlang-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'erlang-mode
                     '(("undef" "-undef($1).\n$0\n" "-undef(...)." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/undef" nil nil)
                       ("try" "try $1 of\n    $0\ncatch\nafter\nend\n" "try ... of ... catch after end" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/try" nil nil)
                       ("rec" "-record($1,{$2}).\n$0\n" "-record(...,{...})." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/rec" nil nil)
                       ("rcv.after" "receive\nafter\n    $1 -> $0\nend\n" "receive after ... -> ... end" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/rcv.after" nil nil)
                       ("rcv" "receive\n    $1 -> $0\nend\n" "receive ... -> ... end" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/rcv" nil nil)
                       ("mod" "-module(${1:`(file-name-nondirectory\n              (file-name-sans-extension (or (buffer-file-name) (buffer-name))))`}).\n$0\n" "-module()." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/mod" nil nil)
                       ("loop" "${1:loop}($2) ->\n    receive\n	${3:_} ->\n	    $1($2)\n    end.\n$0\n" "loop(...) -> receive _ -> loop(...) end." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/loop" nil nil)
                       ("inc.lib" "-include_lib(\"$1\").\n$0\n" "-include_lib(\"...\")." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/inc.lib" nil nil)
                       ("inc" "-include(\"$1\").\n$0\n" "-include(\"...\")." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/inc" nil nil)
                       ("imp" "-import(${1:lists}, [${2:map/2, sum/1}]).\n$0\n" "-import([])." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/imp" nil nil)
                       ("ifndef" "-ifndef($1).\n$0\n-endif.\n" "-ifndef(...). ... -endif." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/ifndef" nil nil)
                       ("ifdef" "-ifdef($1).\n$0\n-endif.\n" "-ifdef(...). ... -endif." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/ifdef" nil nil)
                       ("if" "if\n    $1 -> $2;\n    true -> $0\nend\n" "if ... -> ... ; true -> ... end" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/if" nil nil)
                       ("fun" "fun ($1) -> $0 end\n" "fun (...) -> ... end" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/fun" nil nil)
                       ("exp" "-export([${1:start/0}]).\n$0\n" "-export([])." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/exp" nil nil)
                       ("def" "-define($1,$2).\n$0\n" "-define(...,...)." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/def" nil nil)
                       ("compile" "-compile([${1:export_all}]).\n$0\n" "-compile(...)." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/compile" nil nil)
                       ("case" "case $1 of\n    $0\nend\n" "case ... of ... end" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/case" nil nil)
                       ("beh" "-behaviour(${1:gen_server}).\n$0\n" "-behaviour(...)." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/beh" nil nil)
                       ("begin" "begin\n    $0\nend\n" "begin ... end" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/begin" nil nil)
                       ("after" "after\n    $1 -> $0\n" "after ... ->" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/erlang-mode/after" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:02 2018

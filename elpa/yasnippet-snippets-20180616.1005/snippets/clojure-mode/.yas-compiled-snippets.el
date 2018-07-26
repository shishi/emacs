;;; Compiled snippets and support files for `clojure-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'clojure-mode
                     '(("whenl" "(when-let [$1 $2]\n  $3)$>\n  $0$>" "whenl" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/whenl" nil nil)
                       ("when" "(when $1\n      $2)$>\n$0$>\n" "when" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/when" nil nil)
                       ("use" "(:use [$1 :refer [$2]])$>" "use" nil nil
                        ((yas-triggers-in-field nil))
                        "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/use" nil nil)
                       ("try" "(try\n$1$>\n(catch ${2:Exception} e$>\n$3$>))$>" "try" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/try" nil nil)
                       ("test" "(deftest $1\n  (is (= $2))$>\n  $0)$>\n" "test" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/test" nil nil)
                       ("require" "(:require [$1 :as $2])$>\n" "require" nil nil
                        ((yas-triggers-in-field nil))
                        "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/require" nil nil)
                       ("reduce" "(reduce ${1:(fn [p n] $0)} $2)\n" "reduce" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/reduce" nil nil)
                       ("print" "(println $1)\n$0" "print" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/print" nil nil)
                       ("pr" "(prn $1)\n$0" "pr" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/pr" nil nil)
                       ("opts" "{:keys [$1]$>\n :or {$2}$>\n :as $3}$>" "opts" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/opts" nil nil)
                       ("ns" "(ns `(cl-flet ((try-src-prefix\n		(path src-pfx)\n		(let ((parts (split-string path src-pfx)))\n		  (if (= 2 (length parts))\n		      (cl-second parts)\n		    nil))))\n       (let* ((p (buffer-file-name))\n	      (p2 (cl-first\n		   (cl-remove-if-not '(lambda (x) x)\n				     (mapcar\n				      '(lambda (pfx)\n					 (try-src-prefix p pfx))\n				      '(\"/src/cljs/\" \"/src/clj/\" \"/src/\" \"/test/\")))))\n	      (p3 (file-name-sans-extension p2))\n	      (p4 (mapconcat '(lambda (x) x)\n			     (split-string p3 \"/\")\n			     \".\")))\n	 (replace-regexp-in-string \"_\" \"-\" p4)))`)\n" "ns" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/ns" nil nil)
                       ("mdoc" "^{:doc \"$1\"}" "mdoc" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/mdoc" nil nil)
                       ("map" "(map #($1) $2)$>" "map lambda" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/map.lambda" nil nil)
                       ("map" "(map $1 $2)" "map" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/map" nil nil)
                       ("let" "(let [$1 $2]$>\n  $3)$>\n$0\n" "let" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/let" nil nil)
                       ("is" "(is (= $1 $2))\n" "is" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/is" nil nil)
                       ("import" "(:import ($1))$>" "import" nil nil
                        ((yas-triggers-in-field nil))
                        "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/import" nil nil)
                       ("ifl" "(if-let [$1 $2]\n  $3)$>\n$0" "ifl" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/ifl" nil nil)
                       ("if" "(if $1\n  $2$>\n  $3)$>\n$0\n" "if" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/if" nil nil)
                       ("for" "(for [$1 $2]\n  $3)$>\n" "for" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/for" nil nil)
                       ("fn" "(fn [$1]\n  $0)$>\n" "fn" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/fn" nil nil)
                       ("doseq" "(doseq [$1 $2]\n  $3)$>\n$0" "doseq" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/doseq" nil nil)
                       ("deft" "(deftype\n  ^{\"$1\"}$>\n  $2$>\n  [$3]$>\n  $0)$>" "deftype" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/deft" nil nil)
                       ("defr" "(defrecord\n  ^{\"$1\"}$>\n  $2$>\n  [$3]$>\n  $0)$>\n" "defrecord" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/defr" nil nil)
                       ("defn" "(defn $1\n  \"$2\"$>\n  [$3]$>\n  $0)$>\n" "defn" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/defn" nil nil)
                       ("defm" "(defmacro $1\n  \"$2\"$>\n  [$3]$>\n  $0)$>\n" "defmacro" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/defm" nil nil)
                       ("def" "(def $0)\n" "def" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/def" nil nil)
                       ("bp" "(swank.core/break)\n" "bp" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/bp" nil nil)
                       ("bench" "(dotimes [_ 5 ]$>\n  (time (dotimes [i 1000000]$>\n  $0$>\n  )))$>" "bench" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/clojure-mode/bench" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:01 2018

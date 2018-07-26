;;; Compiled snippets and support files for `go-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'go-mode
                     '(("var" "var (\n  ${1:name} ${2:type}\n)" "var (...)" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/var(" nil nil)
                       ("var" "var ${1:name} ${2:type}\n$0" "var" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/var" nil nil)
                       ("type" "type $1 $2 {\n  $0\n}" "type" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/type" nil nil)
                       ("testmain" "func TestMain(m *testing.M) {\n	setup()\n	ret := m.Run()\n	if ret == 0 {\n		teardown()\n	}\n	os.Exit(ret)\n}\n\nfunc setup() {\n	$1\n}\n\nfunc teardown() {\n	$2\n}" "testmain" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/testmain" nil nil)
                       ("at" "func Test$1(t *testing.T) {\n	$0\n}\n" "test" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/test" nil nil)
                       ("sw" "switch $1 {\ncase $2:\n  $0\n}" "switch" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/switch" nil nil)
                       ("sel" "select {\ncase $1:\n  $0\n}" "select" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/select" nil nil)
                       ("pr" "fmt.Printf(\"${1:%s}\\n\", ${2:args})\n$0" "fmt.Printf(...)" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/printf" nil nil)
                       ("parbench" "func Benchmark$1(b *testing.B) {\n	b.RunParallel(func(pb *testing.PB) {\n		for pb.Next() {\n			$0\n		}\n	})\n}\n" "parallel_benchmark" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/parallel_benchmark" nil nil)
                       ("mthd" "// $2 ${5:...}\nfunc (${1:recv}) ${2:name}(${3:args}) $4 {\n  $0\n}" "method" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/method" nil nil)
                       ("map" "map[${1:type}]${2:type}\n" "map" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/map" nil nil)
                       ("main" "func main() {\n  $0\n}" "func main()"
                        (progn
                          (forward-line 0)
                          (not
                           (and
                            (eq
                             (point-min)
                             (point))
                            (looking-at-p "package"))))
                        nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/main" nil nil)
                       ("lambda" "func(${1:args}) $2 {\n  $0\n}()" "lambda func" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/lambda" nil nil)
                       ("imp" "import (\n  \"$0\"\n)\n" "import (...)" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/import(" nil nil)
                       ("imp" "import \"$1\"\n$0" "import" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/import" nil nil)
                       ("iferr" "if err != $1 {\n  $0\n}\n" "if error" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/iferr" nil nil)
                       ("if" "if $1 {\n  $0\n}" "if" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/if" nil nil)
                       ("func" "// $1 ${4:...}\nfunc ${1:name}(${2:args}) $3 {\n  $0\n}" "func" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/func" nil nil)
                       ("range" "for ${3:key}, ${2:value} := range ${1:target} {\n	$0\n}" "for range" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/forrange" nil nil)
                       ("for" "for $1 {\n  $0\n}\n" "for" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/for" nil nil)
                       ("example" "func Example$1() {\n	$0\n}\n" "example" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/example" nil nil)
                       ("err" "if err != nil {\n	$0\n}" "error" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/error" nil nil)
                       ("el" " else {\n  $0\n}" "else" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/else" nil nil)
                       ("def" "default:\n$0" "default" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/default" nil nil)
                       ("dd" "fmt.Printf(\"%+v\\n\", $1) // output for debug\n$0" "debug fmt.Printf" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/dd" nil nil)
                       ("const" "const (\n  ${1:name type} = ${2:val}\n)" "const (...)" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/const(" nil nil)
                       ("const" "const ${1:name type} = ${2:val}\n$0" "const" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/const" nil nil)
                       ("bench" "func Benchmark$1(b *testing.B) {\n	for i := 0; i < b.N; i++ {\n		$0\n	}\n}\n" "benchmark" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/go-mode/benchmark" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:03 2018

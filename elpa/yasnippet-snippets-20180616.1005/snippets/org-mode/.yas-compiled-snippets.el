;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("<vi" "##videos must be used with an image..so when image is clicked video starts\n[[${1:link of the video}][file:${2:link of the image}]" "videos" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/videos" nil nil)
                       ("<v" "#+BEGIN_VERSE\n$0\n#+END_VERSE" "verse" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/verse" nil nil)
                       ("uml" "#+BEGIN_UML\n$1\n#+END_UML\n" "uml" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/uml" nil nil)
                       ("<ti" "#+TITLE: ${1:What the hell}\n" "Title" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/title" nil nil)
                       ("<ta" "#+CAPTION: ${1: caption of the table}\n|${2:column 1} | ${3: column 2} |\n|--------------+----------------|\n" "table" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/table" nil nil)
                       ("<st" "#+STYLE: <link rel=\"stylesheet\" type=\"text/css\" href=\"$1\" />\n$0" "style" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/style" nil nil)
                       ("set" "#+SETUPFILE: $1" "setup" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/setup" nil nil)
                       ("<rib" "    :PROPERTIES:\n    :reveal_background: ${1: path of the image}\n    :reveal_background_trans: ${2: default||cube||page||concave||zoom||linear||fade||none||slide}\n    :END:" "reveal_image_background" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/rv_image_background" nil nil)
                       ("<rsb" ":PROPERTIES:\n:reveal_background: ${1: #123456}\n:END:" "reveal_single_colored_background" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/rv_background" nil nil)
                       ("<q" "#+BEGIN_QUOTE\n$0\n#+END_QUOTE" "quote" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/quote" nil nil)
                       ("<op" "#+OPTIONS: H:${1:1} num:${2:t||nil} toc:${3:t||nil}" "options" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/options" nil nil)
                       ("matrix_" "\\left \\(\n\\begin{array}{${1:ccc}}\n${2:v1 & v2} \\\\\n$0\n\\end{array}\n\\right \\)" "matrix" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/matrix" nil nil)
                       ("<li" "[[${1: external_link }][${2: Name of the link}]${0:}" "links" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/links" nil nil)
                       ("<l" "#+BEGIN_LATEX\n$0\n#+END_LATEX\n" "title" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/latex" nil nil)
                       ("<lan" "#+LANGUAGE: ${1:en}\n\n\n\n" "language" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/language" nil nil)
                       ("<ke" "#+KEYWORDS: ${1:org-mode}" "keywords" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/keywords" nil nil)
                       ("<i" "#+INCLUDE: $1" "include" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/include" nil nil)
                       ("img_" "<img src=\"$1\"\n alt=\"$2\" align=\"${3:left}\"\n title=\"${4:image title}\"\n class=\"img\"\n</img>\n$0" "img" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/img" nil nil)
                       ("<im" "#+caption: ${1:caption of the image}\n[[file:${2:image_path}]$0\n\n" "images" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/images" nil nil)
                       ("<HT" "#+HTML:$1\n" "HTML" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/html" nil nil)
                       ("fig_" "#+CAPTION: ${1:caption}\n#+ATTR_LaTeX: ${2:scale=0.75}\n#+LABEL: fig:${3:label}\n" "figure" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/figure" nil nil)
                       ("<ex" "#+BEGIN_EXPORT ${1:type}\n$0\n#+END_EXPORT" "export" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/export" nil nil)
                       ("<e" "#+BEGIN_EXAMPLE\n$0\n#+END_EXAMPLE\n\n" "example" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/exampleblock" nil nil)
                       ("entry_" "#+begin_html\n---\nlayout: ${1:default}\ntitle: ${2:title}\n---\n#+end_html\n$0" "entry" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/entry" nil nil)
                       ("emb_" "src_${1:lang}${2:[${3:where}]}{${4:code}}" "embedded" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/embedded" nil nil)
                       ("<em" "#+EMAIL: $1\n" "email" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/email" nil nil)
                       ("elisp_" "#+begin_src emacs-lisp :tangle yes\n$0\n#+end_src" "elisp" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/elisp" nil nil)
                       ("dot_" "#+begin_src dot :file ${1:file} :cmdline -T${2:pdf} :exports none :results silent\n            $0\n#+end_src\n\n[[file:$1]]" "dot" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/dot" nil nil)
                       ("desc" "#+DESCRIPTION: ${1:description of your org-mode file}" "description" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/description" nil nil)
                       ("<da" "#+DATE: ${1:Year}:${2:month}:${3:day}" "date" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/date" nil nil)
                       ("<c" "#+BEGIN_CENTER\n$0\n#+END_CENTER\n" "center" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/center" nil nil)
                       ("<au" "#+AUTHOR: $1" "author" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/org-mode/author" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:06 2018

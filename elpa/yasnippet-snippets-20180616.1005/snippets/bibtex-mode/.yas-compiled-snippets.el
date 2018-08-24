;;; Compiled snippets and support files for `bibtex-mode'
;;; contents of the .yas-setup.el support file:
;;;
(require 'yasnippet)

(add-hook 'bibtex-mode-hook
          '(lambda () (set (make-local-variable 'yas-indent-line) nil)));;; Snippet definitions:
;;;
(yas-define-snippets 'bibtex-mode
                     '(("unpublished" "@unpublished{ ${title},\n  author = {${author}},\n  title  = {${title}},\n  note   = {${note}}${,\n  month  = {${month}}}${,\n  year   = {${year}}}\n}\n\n$0" "unpublished" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/unpublished" nil nil)
                       ("techreport" "@techreport{ ${title},\n  author       = {${author}},\n  title        = {${title}},\n  institution  = {${institution}},\n  year         = {${year}},\n  type         = {${type}}${,\n  address      = {${address}}}${,\n  month        = {${month}}}${,\n  note         = {${note}}}\n}\n\n$0" "techreport" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/techreport" nil nil)
                       ("proceedings" "@proceedings{ ${title},\n  title        = {${title}},\n  year         = {${year}}${,\n  editor       = {${editor}}}${,\n  volume       = {${volume}}}${,\n  series       = {${series}}}${,\n  address      = {${address}}}${,\n  month        = {${month}}}${,\n  organization = {${organization}}}${,\n  publisher    = {${publisher}}}${,\n  note         = {${note}}}\n}\n\n$0" "proceedings" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/proceedings" nil nil)
                       ("phdthesis" "@phdthesis{ ${title},\n  author  = {${author}},\n  title   = {${title}},\n  school  = {${school}},\n  year    = {${year}}${,\n  type    = {${type}}}${,\n  address = {${address}}}${,\n  month   = {${month}}}${,\n  note    = {${note}}}\n}\n\n$0" "phdthesis" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/phdthesis" nil nil)
                       ("misc" "@misc{ ${title}${,\n  author       = {${author}}}${,\n  title        = {${title}}}${,\n  howpublished = {${howpublished}}}${,\n  month        = {${month}}}${,\n  year         = {${year}}}${,\n  note         = {${note}}}\n}\n\n$0" "misc" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/misc" nil nil)
                       ("masterthesis" "@masterthesis{ ${title},\n  author  = {${author}},\n  title   = {${title}},\n  school  = {${school}},\n  year    = {${year}}${,\n  type    = {${type}}}${,\n  address = {${address}}}${,\n  month   = {${month}}}${,\n  note    = {${note}}}\n}\n\n$0" "masterthesis" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/masterthesis" nil nil)
                       ("manual" "@manual{ ${title},\n  title        = {${title}}${,\n  author       = {${author}}}${,\n  organization = {${organization}}}${,\n  address      = {${address}}}${,\n  editor       = {${editor}}}${,\n  month        = {${month}}}${,\n  year         = {${year}}}${,\n  note         = {${note}}}\n}\n" "manual" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/manual" nil nil)
                       ("inproceedings" "@inproceedings{ ${title},\n  author       = {${author}},\n  title        = {${title}},\n  booktitle    = {${booktitle}},\n  year         = {${year}},\n  editor       = {${editor}}${,\n  volume       = {${volume}}}${,\n  series       = {${series}}}${,\n  pages        = {${pages}}}${,\n  address      = {${address}}}${,\n  month        = {${month}}}${,\n  organization = {${organization}}}${,\n  publisher    = {${publisher}}}${,\n  note         = {${note}}}\n}\n \n$0" "inproceedings" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/inproceedings" nil nil)
                       ("incollection" "@incollection{ ${title},\n  author    = {${author}},\n  title     = {${title}},\n  booktitle = {${booktitle}},\n  publisher = {${publisher}},\n  year      = {${year}}${,\n  editor    = {${editor}}}${,\n  volume    = {${volume}}}${,\n  series    = {${series}}}${,\n  type      = {${type}}}${,\n  chapter   = {${chapter}}}${,\n  pages     = {${pages}}}${,\n  address   = {${address}}}${,\n  edition   = {${edition}}}${,\n  month     = {${month}}}${,\n  note      = {${note}}}\n}\n\n$0" "incollection" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/incollection" nil nil)
                       ("inbook" "@inbook{ ${title},\n  author    = {${author}},\n  title     = {${title}},\n  chapter   = {${chapter}}${,\n  pages     = {${pages}}},\n  publisher = {${publisher}},\n  year      = {${year}},\n  volume    = {${volume}}${,\n  series    = {${series}}}${,\n  type      = {${type}}}${,\n  address   = {${addre}ss}}${,\n  edition   = {${edition}}}${,\n  month     = {${month}}}${,\n  note      = {${note}}}\n}\n\n$0" "inbook" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/inbook" nil nil)
                       ("conference" "@conference{ ${title},\n  author       = {${author}},\n  title        = {${title}},\n  booktitle    = {${booktitle}},\n  year         = {${year}},\n  editor       = {${editor}}${,\n  volume       = {${volume}}}${,\n  series       = {${series}}}${,\n  pages        = {${pages}}}${,\n  address      = {${address}}}${,\n  month        = {${month}}}${,\n  organization = {${organization}}}${,\n  publisher    = {${publisher}}}${,\n  note         = {${note}}}\n}\n\n$0" "conference" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/conference" nil nil)
                       ("booklet" "@booklet{ ${title},\n  author       = {${author}}${,\n  howpublished = {${howpublished}}}${,\n  address      = {${address}}}${,\n  year         = {${year}}}${,\n  month        = {${month}}}${,\n  volume       = {${volume}}}${,\n  note         = {${note}}}\n}\n\n$0" "booklet" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/booklet" nil nil)
                       ("book" "@book{ ${title},\n  author    = {${author}},\n  editor    = {${editor}}\n  title     = {${title}},\n  publisher = {${publisher}},\n  year      = {${year}}${,\n  volume    = {${volume}}}${,\n  number    = {${number}}}${,\n  series    = {${series}}}${,\n  type      = {${type}}}${,\n  address   = {${address}}}${,\n  edition   = {${edition}}}${,\n  month     = {${month}}}${,\n  isbn      = {${isbn}}}${,\n  note      = {${note}}}\n}\n\n$0" "book" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/book" nil nil)
                       ("article" "@article{ ${title},\n  author  = {${author}},\n  title   = {${title}},\n  journal = {${journal}},\n  year    = {${year}}${,\n  volume  = {${volume}}}${,\n  number  = {${number}}}${,\n  pages   = {${pages}}}${,\n  month   = {${month}}}${,\n  note    = {${note}}}\n}\n\n$0" "article" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/bibtex-mode/article" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:27:59 2018
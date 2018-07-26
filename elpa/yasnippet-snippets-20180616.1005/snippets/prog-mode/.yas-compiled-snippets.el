;;; Compiled snippets and support files for `prog-mode'
;;; contents of the .yas-setup.el support file:
;;;
(require 'yasnippet)

;; whitespace removing functions from Magnar Sveen ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun yas-s-trim-left (s)
  "Remove whitespace at the beginning of S."
  (if (string-match "\\`[ \t\n\r]+" s)
      (replace-match "" t t s)
    s))

(defun yas-s-trim-right (s)
  "Remove whitespace at the end of S."
  (if (string-match "[ \t\n\r]+\\'" s)
      (replace-match "" t t s)
    s))

(defun yas-s-trim (s)
  "Remove whitespace at the beginning and end of S."
  (yas-s-trim-left (yas-s-trim-right s)))


(defun yas-string-reverse (str)
  "Reverse a string STR manually to be compatible with emacs versions < 25."
  (apply #'string
         (reverse
          (string-to-list str))))

(defun yas-trimmed-comment-start ()
  "This function returns `comment-start' trimmed by whitespaces."
  (yas-s-trim comment-start))

(defun yas-trimmed-comment-end ()
  "This function returns `comment-end' trimmed by whitespaces if `comment-end' is not empty.
Otherwise the reversed output of function `yas-trimmed-comment-start' is returned."
  (if (eq (length comment-end) 0)
      (yas-string-reverse (yas-trimmed-comment-start))
    (yas-s-trim comment-end)))
;;; Snippet definitions:
;;;
(yas-define-snippets 'prog-mode
                     '(("x" "`comment-start`XXX: $0`comment-end`" "xxx" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/prog-mode/xxx" nil nil)
                       ("t" "`comment-start`TODO: $0`comment-end`" "todo" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/prog-mode/todo" nil nil)
                       ("fi" "`comment-start`FIXME: $0`comment-end`" "fixme"
                        (not
                         (eq major-mode 'sh-mode))
                        nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/prog-mode/fixme" nil nil)
                       ("col" "`(yas-trimmed-comment-start)` ${1:comment} ${1:$(let* ((start (yas-trimmed-comment-start))\n                                                       (lastcom (aref start (1- (length start))))\n                                                       (end (yas-trimmed-comment-end))\n                                                       (endpadlen (- 79 (+ (current-column) (length end)))))\n                                              (concat (make-string (max endpadlen 0) lastcom)\n                                                      end))}$0" "commentline" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/prog-mode/commentline" nil nil)
                       ("cob" "${1:$(let* ((col (current-column))\n           (str \"\")\n           (lastcom (substring (yas-trimmed-comment-start) -1))\n           (start (yas-trimmed-comment-start))\n           (end (yas-trimmed-comment-end))\n           (over (- (+ (string-width yas-text) (length start) (length end) col) 77)))\n         (while (< (length str) (+ (- 79 (length start) (length end) col) (if (> over 0) over 0)))\n                (setq str (concat str lastcom)))\n       (concat start str end))}\n${1:$(let* ((col (current-column))\n           (str \"\")\n           (start (yas-trimmed-comment-start))\n           (end (yas-trimmed-comment-end)))\n         (while (< (length str) (ffloor (/ (- 78.0 (+ col (length start) (string-width yas-text) (length end))) 2.0)))\n                (setq str (concat str \" \")))\n        (concat start str))} ${1:comment} ${1:$(let* ((col (current-column))\n                                                     (str \"\")\n                                                     (start (yas-trimmed-comment-start))\n                                                     (end (yas-trimmed-comment-end)))\n                                                   (while (< (length str) (- 79.0 (if (eq (mod (string-width yas-text) 2) 1) (- col 1) col) (length end)))\n                                                          (setq str (concat str \" \")))\n                                                 (concat str end))}\n${1:$(let* ((col (current-column))\n           (str \"\")\n           (lastcom (substring (yas-trimmed-comment-start) -1))\n           (start (yas-trimmed-comment-start))\n           (end (yas-trimmed-comment-end))\n           (over (- (+ (string-width yas-text) (length start) (length end) col) 77)))\n         (while (< (length str) (+ (- 79 (length start) (length end) col) (if (> over 0) over 0)))\n                (setq str (concat str lastcom)))\n       (concat start str end))}$0" "commentblock" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/prog-mode/commentblock" nil nil)
                       ("co" "`(yas-trimmed-comment-start)` ${1:comment}`(unless (eq (length comment-end) 0) (concat \" \" (yas-trimmed-comment-end)))`$0" "comment" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/prog-mode/comment" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:06 2018

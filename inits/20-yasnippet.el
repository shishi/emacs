;;; yasnippet
(require 'yasnippet)

;; 先頭のディレクトリは開発用ディレクトリとして扱われる
;; 後に読み込んだものが優先される
;; package.el からインストールしたのだと、デフォルトで
;; "~/.emacs.d/snippets", "~/.emacs.d/elisp/package/yasnippet-hogehoge/snippets"
;; 追加の場合
;; (setq yas-snippet-dirs
;;       (append
;;        (list
;;         (expand-file-name "~/.emacs.d/elisp/yasnippet")
;;         )
;;        yas-snippet-dirs))
;; 上書きの場合
;; (setq yas-snippet-dirs
;;       '("~/.emacs.d/elpa/yasnippet/mySnippets"
;;         "~/.emacs.d/elpa/yasnippet/snippets"
;;         ))

(yas-global-mode t)

(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)
(define-key yas-minor-mode-map (kbd "C-x i e") 'yas-expand)

(add-to-list 'auto-mode-alist '("\\.yasnippet$" . snippet-mode))

;; helm interface
(eval-after-load "helm-config"
  '(progn
     (defun my-yas/prompt (prompt choices &optional display-fn)
       (let* ((names (loop for choice in choices
                           collect (or (and display-fn (funcall display-fn choice))
                                       choice)))
              (selected (helm-other-buffer
                         `(((name . ,(format "%s" prompt))
                            (candidates . names)
                            (action . (("Insert snippet" . (lambda (arg) arg))))))
                         "*helm yas/prompt*")))
         (if selected
             (let ((n (position selected names :test 'equal)))
               (nth n choices))
           (signal 'quit "user quit!"))))
     (custom-set-variables '(yas/prompt-functions '(my-yas/prompt)))))

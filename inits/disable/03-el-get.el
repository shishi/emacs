;; el-get

(setq el-get-dir "~/.emacs.d/elisp/el-get/")
(require 'el-get)

;; ;; So the idea is that you copy/paste this code into your *scratch* buffer,
;; ;; hit C-j, and you have a working el-get.
;; ;; (add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;; (unless (require 'el-get nil t)
;;   (url-retrieve
;;    "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
;;    (lambda (s)
;;      (end-of-buffer)
;;      (eval-print-last-sexp))))

;; ;; So the idea is that you copy/paste this code into your *scratch* buffer,
;; ;; hit C-j, and you have a working developper edition of el-get.
;; (url-retrieve
;;  "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
;;  (lambda (s)
;;    (let (el-get-master-branch)
;;      (end-of-buffer)
;;      (eval-print-last-sexp))))

;; get master branch if missing el-get
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; TODO
;; move to rcp and push
(setq el-get-sources
      '(
        (:name replace-colorthemes
               :type github
               :pkgname "emacs-jp/replace-colorthemes"
               :description ""
               :prepare (add-to-list 'custom-theme-load-path default-directory))

        ))

(el-get 'sync)

;; ;; Packages to install from el-get
;; (defvar my/el-get-packages
;;   '(
;;     open-github-from-here
;;     anything-git-files
;;     )
;;   "A list of packages to install from el-get at launch.")

;; (el-get 'sync my/el-get-packages)

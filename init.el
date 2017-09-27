;;; init.el

;; load-path
(setq load-path
      (append
       (list
        ;; (expand-file-name "~/.emacs.d/")
        (expand-file-name "~/.emacs.d/elisp/")
        (expand-file-name "~/.emacs.d/elisp/el-get/el-get")
        )
       load-path))

;; pallet
(require 'cask) ;"/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;; ;; need initialize before init-loader
;; (setq package-user-dir (concat user-emacs-directory "elisp/package"))
;; (package-initialize)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
;; (init-loader-show-log-after-init t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-auto-indent-p t)
 '(js2-enter-indents-newline t)
 '(js2-indent-on-enter-key nil)
 '(package-selected-packages
   (quote
    (go-autocomplete go-mode go-projectile go-rename go-scratch go-snippets fish-mode easy-kill mozc-popup mozc which-key zenburn-theme yaml-mode wgrep-ag web-mode vimrc-mode undohist undo-tree tuareg textile-mode swift-mode sublime-themes solarized-theme smyx-theme smartrep smartparens smart-mode-line slim-mode scss-mode sass-mode ruby-block rspec-mode robe redo+ rbenv rainbow-delimiters railscasts-theme quickrun projectile-rails popwin php-mode pallet packed package-utils markdown-mode magit js2-mode init-loader highlight-symbol helm-swoop helm-projectile helm-ls-git helm-descbinds helm-c-yasnippet helm-ag graphene-meta-theme gitignore-mode gitconfig-mode gitattributes-mode git-gutter-fringe gist fuzzy free-keys flycheck-clojure flex-autopair expand-region enh-ruby-mode dockerfile-mode dired+ date-at-point darcula-theme ctags company-quickhelp coffee-mode clojure-snippets clj-refactor auto-async-byte-compile atom-dark-theme anzu ag ac-cider)))
 '(rst-level-face-base-light 50)
 '(ruby-insert-encoding-magic-comment nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rst-level-1-face ((t (:foreground "LightSkyBlue"))) t)
 '(rst-level-2-face ((t (:foreground "LightGoldenrod"))) t)
 '(rst-level-3-face ((t (:foreground "Cyan1"))) t)
 '(rst-level-4-face ((t (:foreground "chocolate1"))) t)
 '(rst-level-5-face ((t (:foreground "PaleGreen"))) t)
 '(rst-level-6-face ((t (:foreground "Aquamarine"))) t))

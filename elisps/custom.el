(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-async-byte-compile-exclude-files-regexp "/(backup|trash)/")
 '(coffee-tab-width 2)
 '(compile-command "go build -v && go test -v && go vet")
 '(cperl-auto-newline t)
 '(cperl-font-lock t)
 '(cperl-highlight-variables-indiscriminately t)
 '(cperl-indent-parens-as-block t)
 '(css-indent-offset 2)
 '(cua-enable-cua-keys nil)
 '(cua-rectangle-mark-key [(s-return)])
 '(dired-recursive-copies (quote always))
 '(dired-recursive-deletes (quote always))
 '(diredp-hide-details-initially-flag nil)
 '(enh-ruby-add-encoding-comment-on-save nil)
 '(free-keys-modifiers (quote ("" "C" "M" "C-M" "C-S-M" "s")))
 '(gofmt-command "goimports")
 '(helm-buffers-fuzzy-matching t)
 '(helm-candidate-number-limit 200)
 '(helm-ff-file-name-history-use-recentf t)
 '(helm-full-frame nil)
 '(helm-inherit-input-method nil)
 '(helm-input-idle-delay 0.1)
 '(helm-split-window-default-side (quote other))
 '(helm-su-or-sudo "sudo")
 '(helm-yas-space-match-any-greedy t)
 '(imenu-auto-rescan t)
 '(inf-ruby-default-implementation "pry")
 '(package-selected-packages
   (quote
    (dired+ elisp-mode ddskk redo+ smartparens-config auto-complete-config abbrev helm-config yaml-mode which-key wgrep web-mode vimrc-mode undo-tree tuareg textile-mode swift-mode smyx-theme smartrep smartparens smart-mode-line slim-mode scss-mode sass-mode ruby-end rspec-mode robe rbenv rainbow-delimiters quickrun quelpa-use-package pos-tip popwin php-mode package-utils markdown-mode magit js2-mode highlight-symbol helm-swoop helm-projectile helm-ls-git helm-descbinds helm-c-yasnippet helm-ag google-this go-rename go-guru go-eldoc go-autocomplete gitignore-mode gitconfig-mode gitattributes-mode git-gutter-fringe gist free-keys flycheck fish-mode expand-region enh-ruby-mode easy-kill dockerfile-mode coffee-mode clj-refactor auto-async-byte-compile anzu ag)))
 '(popwin:special-display-config
   (quote
    ("*Help*" "*Backtrace*" "*Org Agenda*" "*Apropos*"
     ("*quickrun*")
     ("*Warnings*" :noselect t)
     ("*Completions*" :noselect t)
     ("*compilation*" :noselect t)
     ("*Compile-Log*" :noselect t)
     ("*Occur*" :noselect t)
     ("*Remember*" :stick t)
     (" *auto-async-byte-compile*" :noselect t))))
 '(rbenv-installation-dir "~/.rbenv/bin/rbenv")
 '(recentf-max-menu-items 500)
 '(recentf-max-saved-items 500)
 '(show-paren-delay 0)
 '(show-paren-style (quote expression))
 '(sml/no-confirm-load-theme t)
 '(wdired-allow-to-change-permissions t)
 '(web-mode-auto-close-style 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-closing t)
 '(web-mode-enable-auto-pairing t)
 '(web-mode-enable-css-colorization t)
 '(web-mode-enable-current-element-highlight t)
 '(web-mode-enable-heredoc-fontification t)
 '(web-mode-markup-indent-offset 2)
 '(wgrep-enable-key "r")
 '(whitespace-action nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

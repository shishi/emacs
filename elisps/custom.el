(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-minimum-input-length 2 nil nil "Customized with use-package anzu")
 '(anzu-search-threshold 10000 nil nil "Customized with use-package anzu")
 '(anzu-use-migemo nil nil nil "Customized with use-package anzu")
 '(auto-async-byte-compile-exclude-files-regexp "/(backup|trash)/" nil nil "Customized with use-package auto-async-byte-compile")
 '(coffee-tab-width 2 t nil "Customized with use-package coffee-mode")
 '(compile-command "go build -v && go test -v && go vet" nil nil "Customized with use-package go-mode")
 '(cperl-auto-newline t nil nil "Customized with use-package cperl-mode")
 '(cperl-font-lock t nil nil "Customized with use-package cperl-mode")
 '(cperl-highlight-variables-indiscriminately t nil nil "Customized with use-package cperl-mode")
 '(cperl-indent-parens-as-block t nil nil "Customized with use-package cperl-mode")
 '(css-indent-offset 2 nil nil "Customized with use-package scss-mode")
 '(cua-enable-cua-keys nil nil nil "Customized with use-package cua-base")
 '(dired-recursive-copies (quote always))
 '(dired-recursive-deletes (quote always))
 '(diredp-hide-details-initially-flag nil)
 '(enh-ruby-add-encoding-comment-on-save nil t nil "Customized with use-package enh-ruby-mode")
 '(free-keys-modifiers (quote ("" "C" "M" "C-M" "C-S-M" "s")) nil nil "Customized with use-package free-keys")
 '(gofmt-command "goimports" nil nil "Customized with use-package go-mode")
 '(helm-buffers-fuzzy-matching t nil nil "Customized with use-package helm")
 '(helm-candidate-number-limit 200 nil nil "Customized with use-package helm")
 '(helm-ff-file-name-history-use-recentf t nil nil "Customized with use-package helm")
 '(helm-full-frame nil nil nil "Customized with use-package helm")
 '(helm-inherit-input-method nil nil nil "Customized with use-package helm")
 '(helm-input-idle-delay 0.1 nil nil "Customized with use-package helm")
 '(helm-split-window-default-side (quote other) nil nil "Customized with use-package helm")
 '(helm-su-or-sudo "sudo" nil nil "Customized with use-package helm")
 '(helm-yas-space-match-any-greedy t t nil "Customized with use-package helm-c-yasnippet")
 '(imenu-auto-rescan t)
 '(inf-ruby-default-implementation "pry" nil nil "Customized with use-package inf-ruby")
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
     (" *auto-async-byte-compile*" :noselect t))) nil nil "Customized with use-package popwin")
 '(recentf-max-menu-items 500)
 '(recentf-max-saved-items 500)
 '(show-paren-delay 0 nil nil "Customized with use-package smyx-theme")
 '(show-paren-style (quote expression) nil nil "Customized with use-package smyx-theme")
 '(skk-large-jisyo "~/.emacs.d/SKK-JISYO.L" nil nil "Customized with use-package skk")
 '(skk-save-jisyo-instantly t nil nil "Customized with use-package skk")
 '(skk-server-host "localhost" nil nil "Customized with use-package skk")
 '(skk-server-portnum 1178 nil nil "Customized with use-package skk")
 '(skk-server-report-response t nil nil "Customized with use-package skk")
 '(skk-sticky-key ";" nil nil "Customized with use-package skk")
 '(skk-use-search-web t t nil "Customized with use-package skk")
 '(skk-user-directory "~/.emacs.d" nil nil "Customized with use-package skk")
 '(sml/no-confirm-load-theme t nil nil "Customized with use-package smart-mode-line")
 '(wdired-allow-to-change-permissions t t nil "Customized with use-package wdired")
 '(web-mode-auto-close-style 2 t nil "Customized with use-package web-mode")
 '(web-mode-code-indent-offset 2 t nil "Customized with use-package web-mode")
 '(web-mode-css-indent-offset 2 t nil "Customized with use-package web-mode")
 '(web-mode-enable-auto-closing t t nil "Customized with use-package web-mode")
 '(web-mode-enable-auto-pairing t t nil "Customized with use-package web-mode")
 '(web-mode-enable-css-colorization t t nil "Customized with use-package web-mode")
 '(web-mode-enable-current-element-highlight t t nil "Customized with use-package web-mode")
 '(web-mode-enable-heredoc-fontification t t nil "Customized with use-package web-mode")
 '(web-mode-markup-indent-offset 2 t nil "Customized with use-package web-mode")
 '(wgrep-enable-key "r" nil nil "Customized with use-package wgrep")
 '(whitespace-action nil nil nil "Customized with use-package markdown-mode")
 '(whitespace-display-mappings
   (quote
    ((space-mark 12288
                 [9251])
     (tab-mark 9
               [187 9]
               [92 9]))) nil nil "Customized with use-package whitespace")
 '(whitespace-space-regexp "\\(　+\\)" nil nil "Customized with use-package whitespace")
 '(whitespace-style
   (quote
    (face trailing tabs spaces space-mark tab-mark empty)) nil nil "Customized with use-package whitespace")
 '(whitespace-trailing-regexp "\\([  ]+\\)$" nil nil "Customized with use-package whitespace"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-empty ((t (:foreground "firebrick" :background "SlateGray1"))))
 '(whitespace-space ((t (:bold t :background "Green4"))))
 '(whitespace-tab ((t (:foreground "blue" :background "Yellow4"))))
 '(whitespace-trailing ((t (:foreground "white" :background "Red4")))))

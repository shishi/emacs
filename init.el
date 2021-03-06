;;; init.el

;;; preparings
;;; ============================================================

;; load-path

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.      If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(defvar package-archives
  '(("gnu" . "http://elpa.gnu.org/packages/")
    ("melpa" . "http://melpa.org/packages/")
    ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (setq load-path
        (append
         (list
          ;; (expand-file-name "~/.emacs.d/")
          (expand-file-name "~/.emacs.d/elisps/")
          (expand-file-name "~/dev/src/github.com/jwiegley/use-package")
          )
         load-path))
  (require 'use-package)
  (setq use-package-always-ensure nil))

;; quelpa
(require 'quelpa)
(quelpa
 '(quelpa-use-package
   :fetcher github
   :repo "quelpa/quelpa-use-package"))
(require 'quelpa-use-package)
(setq use-package-ensure-function 'quelpa)

;; delight
(use-package delight)

(setq custom-file (expand-file-name "~/.emacs.d/elisps/custom.el"))

;; emacs-server
(use-package server
  :config
  (add-hook 'after-init-hook 'server-start t))

;; cl
(use-package cl)

;; exec-path
(setq exec-path
      (append
        (list
         (expand-file-name "~/.rbenv/bin")
         (expand-file-name "~/.rbenv/shims")
         ;; (expand-file-name "~/.anyenv/envs/rbenv/bin")
         ;; (expand-file-name "~/.anyenv/envs/rbenv/shims")
         (expand-file-name "~/.emacs.d/bin")
         (expand-file-name "~/dev/bin")
         "/usr/local/sbin"
         "/usr/local/bin"
         ;; "/opt/local/sbin"
         ;; "/opt/local/bin"
         "/usr/sbin"
         "/usr/bin"
         "/sbin"
         "/bin"
         )
        exec-path))

;;; built-in settings
;;; ============================================================

;; encoding
(setenv "LANG" "ja_JP.UTF-8")
;; (set-language-environment "Japanese")
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)
(setq default-file-name-coding-system 'utf-8-unix)
(setq buffer-file-coding-system 'utf-8-unix)
(setq select-enable-clipboard t)

(when (eq system-type 'darwin)
  (use-package ucs-normalize)
  (set-file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system 'utf-8-hfs))

(when (eq system-type 'windows-nt)
  ;; (setq file-name-coding-system 'sjis)
  ;; (setq locale-coding-system 'sjis)
  (set-file-name-coding-system 'utf-8-unix)
  (setq locale-coding-system 'utf-8-unix))

;; load newer file even it's compiled
(setq load-prefer-newer t)

;; no beep
(setq ring-bell-function 'ignore)
;; (setq visible-bell t)

;; yes-or-no to y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; gzip
(auto-compression-mode t)

(setq vc-follow-symlinks t)

;; scroll behavior
(setq scroll-conservatively 1)
(setq scroll-margin 3)
(setq next-screen-context-lines 3)
(setq scroll-preserve-screen-position t)

;; history
(recentf-mode t)
(savehist-mode t)
(setq history-length 500)
(setq history-delete-duplicates t)
(custom-set-variables
 '(recentf-max-menu-items 500)
 '(recentf-max-saved-items 500))

;; ui
(global-display-line-numbers-mode)
;; (global-linum-mode t)
;; (line-number-mode t);
;; (column-number-mode t);
(scroll-bar-mode -1)
(menu-bar-mode t)
(tool-bar-mode -1)

;; display file path on title bar
;; web+db vol.58 P.77
(setq frame-title-format (format "%%f - Emacs@%s" (system-name)))

;; ;; filesize
;; (size-indication-mode t)

;; ;; clock
;; ;; (setq display-time-day-and-date t)
;; ;; (setq display-time-24hr-format t)
;; (display-time-mode t)
;;
;; (display-battery-mode t)

;; http://d.hatena.ne.jp/sonota88/20110224/1298557375
(defun count-lines-and-chars ()
  (if mark-active
      (format "%d lines,%d chars "
              (count-lines (region-beginning) (region-end))
              (- (region-end) (region-beginning))) ""))
(setq-default mode-line-format (add-to-list 'mode-line-format '(:eval (count-lines-and-chars))))

;; hide startup screen
;; (setq inhibit-startup-screen t)

(setq initial-scratch-message "")

(global-font-lock-mode t)

(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

(setq kill-whole-line t)

;; delete selection by backspace
(delete-selection-mode t)

;; clipboard
;; (setq select-enable-clipboard t)
;; (setq elect-enable-primary nil)
(setq mouse-drag-copy-region t)

;; move deleted to trash
(setq delete-by-moving-to-trash t)
(setq trash-directory "~/.emacs.d/trash")

;; auto save
(setq auto-save-file-name-transforms `((".*" ,(expand-file-name "~/.emacs.d/backup/") t)))
(setq auto-save-timeout 15)
(setq auto-save-interval 60)

;; backup
(setq backup-directory-alist `((".*" . ,(expand-file-name "~/.emacs.d/backup/"))))
(setq backup-by-copying t)
(setq backup-by-copying-when-linked t)
(setq backup-by-copying-when-mismatch t)
(setq version-control t)
(setq kept-new-versions 5)
(setq kept-old-versions 5)
(setq delete-old-versions t)

;; default tab setting
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(custom-set-variables '(imenu-auto-rescan t))

;;; auto add +x to files that have shibang
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; including various config major mode
(use-package generic-x
  :ensure nil)

;; add path to file name in buffer if conflict file name
(use-package uniquify
  :ensure nil)

;; trailing space
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; (setq show-trailing-whitespace t)
;; (set-face-background 'trailing-whitespace "blue")
;; (set-face-underline 'trailing-whitespace t)
(setq require-final-newline t)

;; show eol
;; (setq eol-mnemonic-dos "(CRLF)")
;; (setq eol-mnemonic-mac "(CR)")
;; (setq eol-mnemonic-unix "(LF)")

;; whitespace mode
;; https://qiita.com/itiut@github/items/4d74da2412a29ef59c3a
(use-package whitespace
  :ensure nil
  :delight (global-whitespace-mode)
  :custom
  (whitespace-style
   '(
     face
     trailing
     tabs
     spaces
     space-mark
     tab-mark
     empty
     ))
  (whitespace-display-mappings
   '(
     (space-mark ?\u3000 [?\u2423])
     (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])
     ))
  (whitespace-trailing-regexp  "\\([ \u00A0]+\\)$")
  (whitespace-space-regexp "\\(\u3000+\\)")
  :init
  (global-whitespace-mode t)
  :config
  (custom-set-faces
   '(whitespace-space ((t (:bold t :background "Green4"))))
   '(whitespace-empty ((t (:foreground "firebrick" :background "SlateGray1"))))
   ;; '(whitespace-hspace ((t (:foreground "lightgray" :background "LemonChiffon3"))))
   ;; '(whitespace-indentation ((t (:foreground "firebrick" :background "beige"))))
   ;; '(whitespace-line ((t (:foreground "black" :background "red"))))
   ;; '(whitespace-newline ((t (:foreground "orange" :background "blue"))))
   ;; '(whitespace-space-after-tab ((t (:foreground "black" :background "green"))))
   ;; '(whitespace-space-before-tab ((t (:foreground "black" :background "DarkOrange"))))
   '(whitespace-tab ((t (:foreground "blue" :background "Yellow4"))))
   '(whitespace-trailing ((t (:foreground "white" :background "Red4"))))
   ))

;;; built-in keybindings
;;; ============================================================

;; swap command and meta on Mac
;; (when (eq system-type 'darwin)
;;   (setq mac-command-modifier 'meta)
;;   (setq mac-option-modifier 'super))

;; swap C-h and C-?, make C-h is backspace
(keyboard-translate ?\C-h ?\C-?)

;; help
(define-key global-map (kbd "C-x ?") 'help)
;; (define-key global-map (kbd "C-x p") 'help-for-help)
;; (define-key global-map "\C-x\C-h" 'help-command)

;; swap C-a and M-m
;; (define-key global-map (kbd "C-a") 'back-to-indentation)
;; (define-key global-map (kbd "M-m") 'move-beginning-of-line)

(define-key global-map (kbd "RET") 'reindent-then-newline-and-indent)
(define-key global-map (kbd "C-m") 'reindent-then-newline-and-indent)

(define-key global-map (kbd "M-k") 'kill-this-buffer)
(define-key global-map (kbd "C-M-k") 'kill-whole-line)
(define-key global-map (kbd "M-l") 'other-window)

(define-key ctl-x-map "l" 'goto-line)

;; improve openline
(defun smart-open-line-above ()
  "Insert an empty line above the current line.
Position the cursor at it's beginning, according to the current mode."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

(defun smart-open-line ()
  "Insert an empty line after the current line.
Position the cursor at its beginning, according to the current mode."
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(define-key global-map (kbd "C-o") 'smart-open-line-above)
(define-key global-map (kbd "C-M-o") 'smart-open-line)

;;; for not specific language settings
;;; ============================================================

(use-package package-utils)

(use-package dired
  :ensure nil
  :config
  (setq delete-by-moving-to-trash t)
  (setq dired-kept-versions 5)
  (custom-set-variables
   '(diredp-hide-details-initially-flag nil)
   '(dired-recursive-copies 'always)
   '(dired-recursive-deletes 'always)))

(use-package dired+
  :quelpa (dired+ :fetcher url :url "https://www.emacswiki.org/emacs/download/dired+.el")
  :after (dired))

;; smart-mode-line
(use-package smart-mode-line
  :commands sml/setup
  :custom
  (sml/no-confirm-load-theme t)
  :init
  ;;'(sml/theme 'respectful))
  (sml/setup))

;; cua mode
(use-package cua-base
  :ensure nil
  :custom
  (cua-enable-cua-keys nil)
  :bind
  ("C-x SPC" . cua-rectangle-mark-mode))

;; smartrep
(use-package smartrep
  :commands smartrep-define-key
  :init
  (defvar ctl-q-map (make-keymap))
  (define-key global-map "\C-q" ctl-q-map)
  ;; flycheck
  (smartrep-define-key
      global-map "C-q" '(("n" . 'flycheck-next-error)
                         ("p" . 'flycheck-previous-error)))
  ;; git-gutter
  (smartrep-define-key
      global-map "C-q" '(("C-n" . 'git-gutter:next-hunk)
                         ("C-p" . 'git-gutter:previous-hunk)))
  ;; redo
  (smartrep-define-key
      global-map "C-q" '(("C-/" . (redo)))))

;; flycheck
(use-package flycheck
  :commands global-flycheck-mode
  :init
  (add-hook 'after-init-hook #'global-flycheck-mode))

;; easy-kill
(use-package easy-kill
  :bind
  ("M-w" . easy-kill))

;; expand-region
(use-package expand-region
  :bind
  ("C-=" . er/expand-region))

;; helm
(use-package helm
  :delight
  :commands (helm-mode helm-get-current-source helm-execute-persistent-action)
  :bind
  ("M-x" . helm-M-x)
  ;; ("C-;" . helm-buffers-list)
  ("C-;" . helm-for-files)
  ("C-x C-f" . helm-find-files)
  ("C-x C-r" . helm-recentf)
  ("C-x C-b" . helm-buffers-list)
  ("M-y" . helm-show-kill-ring)
  :custom
  (helm-input-idle-delay 0.1)
  (helm-candidate-number-limit 200)
  (helm-buffers-fuzzy-matching t)
  (helm-ff-file-name-history-use-recentf t)
  (helm-su-or-sudo "sudo")
  (helm-inherit-input-method nil)
  ;; settings for splitting
  (helm-full-frame nil)
  (helm-split-window-default-side 'other)
  :init
  (require 'helm-config)
  (helm-mode t)
  ;; helm カーソル合った時に persistent-action 実行
  (defun show-buffer-move-by-move-extend ()
    (interactive)
    (when (or ;; (memq (assoc-default 'type (helm-get-current-source)) '(buffer sexp))
           (equal (cdr (assq 'name (helm-get-current-source))) "Buffers")
           ;; (equal (cdr (assq 'name (helm-get-current-source))) "Recentf")
           (equal (cdr (assq 'name (helm-get-current-source))) "Files from Current Directory")
           (equal (cdr (assq 'name (helm-get-current-source))) "Imenu")
           (equal (cdr (assq 'name (helm-get-current-source))) "Etags")
           (equal (cdr (assq 'name (helm-get-current-source))) "Exuberant ctags"))
      (helm-execute-persistent-action)))
  (add-hook 'helm-move-selection-after-hook 'show-buffer-move-by-move-extend))

;; helm-ls-git
(use-package helm-ls-git
  :after (helm))

;; helm-swoop
(use-package helm-swoop
  :after (helm)
  :bind
  ("M-o" . helm-swoop)
  ("s-M-o" . helm-multi-swoop-all)
  ;; isearchからはM-iで移行
  (:map helm-swoop-map
        ("C-r" . helm-previous-line)
        ("C-s" . helm-next-line)))

;; helm-ag
(use-package helm-ag
  :after (helm))
;; keymap from helm-ag.el
;; (defvar helm-ag-map
;;   (let ((map (make-sparse-keymap)))
;;     (set-keymap-parent map helm-map)
;;     (define-key map (kbd "C-c o") 'helm-ag--run-other-window-action)
;;     (define-key map (kbd "C-l") 'helm-ag--up-one-level)
;;     (define-key map (kbd "C-c C-e") 'helm-ag-edit)
;;     (define-key map (kbd "C-c ?") 'helm-ag-help)
;;     map)
;;   "Keymap for `helm-ag'.")
;;
;; (defvar helm-ag-edit-map
;;   (let ((map (make-sparse-keymap)))
;;     (define-key map (kbd "C-c C-c") 'helm-ag--edit-commit)
;;     (define-key map (kbd "C-c C-k") 'helm-ag--edit-abort)
;;     map))

;; helm-c-yasnippet
(use-package helm-c-yasnippet
  :after (helm yasnippet)
  :bind
  ("C-s-<return>" . helm-yas-complete)
  :custom
  (helm-yas-space-match-any-greedy t))

;; helm-descbinds
(use-package helm-descbinds
  :after (helm))

;; abbrev mode
(use-package abbrev
  :ensure nil
  :delight (yas-minor-mode)
  :commands quietly-read-abbrev-file
  :init
  ;; (setq-default abbrev-mode t)
  (setq abbrev-file-name "~/.emacs.d/abbrev_defs")
  (setq save-abbrevs t)
  (if (file-exists-p abbrev-file-name)
      (quietly-read-abbrev-file)))

;; yasnippet
(use-package yasnippet
  :delight (yas-minor-mode)
  :commands yas-global-mode
  :bind
  ("C-x y i" . yas-insert-snippet)
  ("C-x y n" . yas-new-snippet)
  ("C-x y v" . yas-visit-snippet-file)
  ("C-x y e" . yas-expand)
  :mode
  ("\\.yasnippet$" . snippet-mode)
  :init
  ;; 先頭のディレクトリは開発用ディレクトリとして扱われる
  ;; 後に読み込んだものが優先される
  ;; package.el からインストールしたのだと、デフォルトで
  ;; "~/.emacs.d/snippets", "~/.emacs.d/elisp/package/yasnippet-hoge/snippets"
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
  ;; yas-load-directory という関数もあった

  (yas-global-mode t))

;; yasnippet-snippets
(use-package yasnippet-snippets
  :after (yasnippet))

;; auto-complete
(use-package auto-complete
  :delight
  :after (yasnippet)
  :commands (ac-flyspell-workaround global-auto-complete-mode)
  :functions ac-config-default
  :custom
  (ac-use-menu-map t)
  (ac-auto-start t)
  (ac-delay 0.3)
  (ac-use-quick-help t)
  (ac-quick-help-delay 1.0)
  (ac-candidate-limit nil)
  (ac-use-fuzzy t)
  :bind
  ("M-<return>" . auto-complete)
  :init
  (require 'auto-complete-config)
  (ac-config-default)
  (ac-flyspell-workaround)

  ;; ac-souces default by auto-complete-config.el
  ;; (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))

  ;; auto-complete commonc sources setup
  ;; this is executed in the last of ac-config-default, so you should "add", don't make new list
  ;; (defun ac-common-setup ()
  ;;   (add-to-list 'ac-sources 'ac-source-filename))
  (setq ac-sources (append '(ac-source-filename) ac-sources))

  (global-auto-complete-mode t))

;; pos-tip
(use-package pos-tip)

;; popwin
(use-package popwin
  :after (dired)
  :commands (popwin-mode)
  :custom
  (popwin:special-display-config
   '(
     "*Help*"
     "*Backtrace*"
     "*Org Agenda*"
     "*Apropos*"
     ("*quickrun*")
     ("*Warnings*" :noselect t)
     ("*Completions*" :noselect t)
     ("*compilation*" :noselect t)
     ("*Compile-Log*" :noselect t)
     ("*Occur*" :noselect t)
     ("*Remember*" :stick t)
     (" *auto-async-byte-compile*" :noselect t)
     ))
  :config
  (popwin-mode t))

;; smartparens
(use-package smartparens
  :delight
  :commands smartparens-global-mode
  :init
  (require 'smartparens-config)
  (smartparens-global-mode))

;; anzu
(use-package anzu
  :delight
  :commands global-anzu-mode
  :bind
  ("C-c r" . anzu-query-replace)
  ("C-c R" . anzu-query-replace-regexp)
  :custom
  (anzu-use-migemo nil)
  (anzu-search-threshold 10000)
  (anzu-minimum-input-length 2)
  :init
  (global-anzu-mode +1)
  (custom-set-variables))

;; highlight-symbol
(use-package highlight-symbol
  :delight
  :init
  (add-hook 'emacs-lisp-mode-hook 'highlight-symbol-mode)
  (add-hook 'ruby-mode-hook 'highlight-symbol-mode)
  (add-hook 'enh-ruby-mode-hook 'highlight-symbol-mode)
  (add-hook 'yaml-mode-hook 'highlight-symbol-mode)
  (add-hook 'coffee-mode-hook 'highlight-symbol-mode))

;; ag
(use-package ag
  :bind
  ("M-g" . ag))

;; rainbow-delimiters
(use-package rainbow-delimiters
  :commands rainbow-delimiters-mode
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

;; projectile
(use-package projectile
  :disabled
  :delight ; '(:eval (concat " " "[" (projectile-project-name) "]"))
  :commands projectile-mode
  :bind
  ("C-x C-;" . helm-projectile)
  ("C-M-;" . projectile-find-dir)
  :init
  (projectile-mode)
  ;; (setq projectile-enable-caching t)
  (setq projectile-indexing-method
        (if (eq system-type 'windows-nt)
            'native
          'alien)))

(use-package helm-projectile
  :disabled
  :delight
  :after (helm projectile))

;; google-this
(use-package google-this)

;; quickrun
(use-package quickrun
  :bind
  ("C-c q" . quickrun))

;; undo
(use-package undo-tree
  :delight
  :commands global-undo-tree-mode
  :init
  (global-undo-tree-mode t))

;; redo
(use-package redo+
  :quelpa (redo+  :fetcher url :url "https://www.emacswiki.org/emacs/download/redo+.el")
  :bind
  ("C-M-/" . redo))

;; git
(use-package magit
  :bind
  ("C-c m" . magit-status)
  ("C-x m" . magit-file-popup))

(use-package git-gutter
  :delight)

(use-package git-gutter-fringe
  :delight
  :after (git-gutter)
  :commands global-git-gutter-mode
  :init
  (global-git-gutter-mode t))

(use-package gist)
(use-package gitattributes-mode)
(use-package gitconfig-mode)
(use-package gitignore-mode)

;; wdired
(use-package wdired
  :bind
  (:map dired-mode-map
        ("r" . wdired-change-to-wdired-mode))
  :custom
  (wdired-allow-to-change-permissions t))

;; wgrep
(use-package wgrep
  :custom
  (wgrep-enable-key "r"))

;; which-key
(use-package which-key
  :disabled
  :delight
  :commands (which-key-mode which-key-setup-side-window-bottom)
  :config
  (which-key-mode)
  (setq which-key-idle-delay 1.0)
  (which-key-setup-side-window-bottom))

;; free-keys
(use-package free-keys
  :delight
  :custom
  (free-keys-modifiers '("" "C" "M" "C-M" "C-S-M" "s")))

;; ddskk
(use-package skk
  :ensure ddskk
  :bind
  ("C-\\" . skk-mode)
  :custom
  (default-input-method "japanese-skk")
  (skk-sticky-key ";")
  (skk-save-jisyo-instantly t)
  (skk-user-directory "~/.emacs.d")
  (skk-large-jisyo "~/.emacs.d/SKK-JISYO.L")
  ;; (skk-server-host "localhost")
  ;; (skk-server-portnum 1178)
  ;; (skk-server-report-response t)
  :config
  (require 'skk-vars)
  (require 'skk-search-web)

  (add-to-list 'skk-search-prog-list
               '(skk-search-web 'skk-google-cgi-api-for-japanese-input)
               t)

  ;; ;; 辞書登録モードへの突入時の初期値にGoogle cgiを利用する
  ;;     (setq skk-read-from-minibuffer-function
  ;;         (lambda ()
  ;;           (car (skk-google-cgi-api-for-japanese-input skk-henkan-key))))

  ;; 動的補完にGoogleサジェストを表示
  (add-to-list 'skk-completion-prog-list '(skk-comp-google) t))

;;; for specific language settings
;;; ============================================================

;; elisp
(use-package elisp-mode
  :ensure nil
  :mode
  ("\\.el$" . emacs-lisp-mode))

(use-package eldoc
  :delight
  :after (elisp-mode)
  :config
  (setq eldoc-idle-delay 0.2)
  (setq eldoc-echo-area-use-multiline-p t)
  (add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode))

(use-package auto-async-byte-compile
  :custom
  (auto-async-byte-compile-exclude-files-regexp "/\(backup\|trash\)/")
  :config
  (add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode))

;; ruby
(use-package rbenv
  :commands global-rbenv-mode
  :custom
  (rbenv-installation-dir "/usr/bin/rbenv")
  :config
  (global-rbenv-mode))

(use-package enh-ruby-mode
  :mode
  ("\\.rb$" . enh-ruby-mode)
  ("\\.rake$" . enh-ruby-mode)
  ("\\.recipe$" . enh-ruby-mode)
  ("\\.cap$" . enh-ruby-mode)
  ("Rakefile$" . enh-ruby-mode)
  ("Gemfile$" . enh-ruby-mode)
  ("Gemfile.lock$" . enh-ruby-mode)
  ("Capfile$" . enh-ruby-mode)
  ("Guardfile$" . enh-ruby-mode)
  ("\\.jbuilder$" . enh-ruby-mode)
  :interpreter
  ("ruby" . enh-ruby-mode)
  :custom
  (enh-ruby-add-encoding-comment-on-save nil)
  :config
  (defun my-ac-ruby-mode-setup ()
    (add-to-list 'ac-sources 'ac-source-yasnippet))
  (add-hook 'enh-ruby-mode-hook 'my-ac-ruby-mode-setup))

(use-package ruby-mode
  :disabled
  :mode
  ("\\.rb$" . ruby-mode)
  ("\\.rake$" . ruby-mode)
  ("\\.recipe$" . ruby-mode)
  ("\\.cap$" . ruby-mode)
  ("Rakefile$" . ruby-mode)
  ("Gemfile$" . ruby-mode)
  ("Gemfile.lock$" . ruby-mode)
  ("Capfile$" . ruby-mode)
  ("Guardfile$" . ruby-mode)
  ("\\.jbuilder$" . ruby-mode)
  :interpreter
  ("ruby" . ruby-mode)
  :custom
  (ruby-insert-encoding-magic-comment nil)
  :config
  (defun my-ac-ruby-mode-setup ()
    (add-to-list 'ac-sources 'ac-source-yasnippet))
  (add-hook 'ruby-mode-hook 'my-ac-ruby-mode-setup))

(use-package ruby-end
  :delight)

(use-package ruby-block
  :disabled
  :functions ruby-block-mode
  :custom
  (ruby-block-highlight-toggle t)
  (ruby-block-delay 0.1)
  :config
  (defun ruby-block-hooks ()
    (ruby-block-mode t)
    (add-hook 'ruby-mode-hook 'ruby-block-hooks)
    (add-hook 'enh-ruby-mode-hook 'ruby-block-hooks)))

(use-package robe
  :config
  ;; (eval-after-load 'company '(push 'company-robe company-backends))
  (add-hook 'robe-mode-hook 'ac-robe-setup)
  (add-hook 'ruby-mode-hook 'robe-mode)
  (add-hook 'enh-ruby-mode-hook 'robe-mode))

(use-package rspec-mode
  :commands rspec-install-snippets
  :config
  (eval-after-load 'rspec-mode '(rspec-install-snippets)))

(use-package inf-ruby
  :bind
  (:map inf-ruby-mode-map
        ("<return>" . comint-send-input))
  :custom
  (inf-ruby-default-implementation "pry")
  :config
  (add-hook 'inf-ruby-mode-hook 'ansi-color-for-comint-mode-on)
  (add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
  (add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
  (add-hook 'after-init-hook 'inf-ruby-switch-setup))

;; go
(use-package go-mode
  :bind
  (:map go-mode-map
        ("M-." . godef-jump))
  :custom
  (gofmt-command "goimports")
  (compile-command "go build -v && go test -v && go vet"))

(use-package go-autocomplete
  :after (auto-complete))

(use-package go-eldoc
  :config
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(use-package go-guru
  :commands go-guru-hl-identifier-mode
  :config
  (add-hook 'go-mode-hook #'go-guru-hl-identifier-mode))

(use-package go-rename)

;; clojure
(use-package cider)

(use-package clj-refactor
  :functions my-clojure-mode-hook
  :commands (clj-refactor-mode cljr-add-keybindings-with-prefix)
  :config
  (defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    ;; (yas-minor-mode 1) ; for adding require/use/import statements
    ;; This choice of keybinding leaves cider-macroexpand-1 unbound
    (cljr-add-keybindings-with-prefix "C-c C-m"))
  (add-hook 'clojure-mode-hook #'my-clojure-mode-hook))

(use-package clojure-mode)

;; javascript
(use-package js2-mode
  :mode
  ("\\.js$" . js2-mode)
  ("\\.json$" . js2-mode))

;; coffee script
(use-package coffee-mode
  :mode
  ("\.coffee$" . coffee-mode)
  ("Cakefile" . coffee-mode)
  :custom
  (coffee-tab-width 2))

;; php
(use-package php-mode
  :mode
  ("\\.php[345]?$" . php-mode)
  :interpreter
  ("php" . php-mode))

;; perl
(use-package cperl-mode
  :mode
  ("\\.\\([pP][Llm]\\|al\\|t\\|cgi\\)\\'" . cperl-mode)
  :interpreter
  ("perl" . cperl-mode)
  ("perl5" . cperl-mode)
  ("miniperl" . cperl-mode)
  :custom
  (cperl-font-lock t)
  (cperl-auto-newline t)
  (cperl-highlight-variables-indiscriminately t)
  (cperl-indent-parens-as-block t)
  :config
  (defalias 'perl-mode 'cperl-mode))

;; swift
(use-package swift-mode)

;; ocaml
(use-package tuareg)

;; haml
(use-package haml-mode
  :mode
  ("\\.haml$" . haml-mode))

;; slim
(use-package slim-mode)

;; sass
(use-package sass-mode
  :config
  (add-hook 'sass-mode-hook 'ac-css-mode-setup))

;; scss
(use-package scss-mode
  :mode
  ("\\.scss$" . scss-mode)
  ("\\.css$" . scss-mode)
  :bind
  (:map scss-mode-map
        ("{" . my-css-electric-pair-brace)
        (";" . my-semicolon-ret))
  :custom
  (css-indent-offset 2)
  :config
  (add-hook 'scss-mode-hook 'ac-css-mode-setup)
  ;; http://d.hatena.ne.jp/CortYuming/20120110/p1
  (defun my-css-electric-pair-brace ()
    (interactive)
    (insert "{")(newline-and-indent)
    (newline-and-indent)
    (insert "}")
    (indent-for-tab-command)
    (forward-line -1)(indent-for-tab-command)
    )
  (defun my-semicolon-ret ()
    (interactive)
    (insert ";")
    (newline-and-indent)))

;; yaml
(use-package yaml-mode)

;; markdown
(use-package markdown-mode
  :mode
  ("\\.md$" . markdown-mode)
  ("\\.apib$" . markdown-mode)
  :custom
  (whitespace-action nil))

;; rst
(use-package rst
  :mode
  ("\\.howm$" . rst-mode)
  ("\\.rst$" . rst-mode)
  ("\\.rest$" . rst-mode)
  :config
  (setq indent-tabs-mode nil))

;; textile
(use-package textile-mode
  :commands quickrun-add-command
  :mode
  ("\\.textile\\'" . textile-mode)
  :config
  (quickrun-add-command "textile" '((:command . "redcloth")
                                    (:exec . "%c %s")
                                    (:outputter . browser)))
  (add-to-list 'quickrun-file-alist '("\\.textile$" . "textile")))

;; web
(use-package web-mode
  :mode
  ("\\.(p|dj)?html\\'" . web-mode)
  ("\\.tpl\\.php\\'" . web-mode)
  ("\\.[agj]sp\\'" . web-mode)
  ("\\.as[cp]x\\'" . web-mode)
  ("\\.erb\\'" . web-mode)
  ("\\.mustache\\'" . web-mode)
  :custom
  (web-mode-markup-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-code-indent-offset 2)
  (web-mode-enable-auto-pairing t)
  (web-mode-enable-auto-closing t)
  (web-mode-auto-close-style 2)
  (web-mode-enable-css-colorization t)
  (web-mode-enable-heredoc-fontification t)
  (web-mode-enable-current-element-highlight t))

;; dockerfile
(use-package dockerfile-mode)

;; fish
(use-package fish-mode)

;; vimrc
(use-package vimrc-mode
  :mode
  ("vimrc$" . vimrc-mode)
  (".vim$" . vimrc-mode)
  ("gvimrc$" . vimrc-mode))

;; org-mode
(use-package org
  :mode
  ("\\.org$" . org-mode)
  :bind
  ("C-c l" . org-store-link)
  ("C-c a" . org-agenda))

;; text-mode
(use-package text-mode
  :disabled
  :custom
  (paragraph-start '"^\\([ 　・○<\t\n\f]\\|(?[0-9a-zA-Z]+)\\)"))

;;; ui settings
;;; ============================================================

;; color-theme

(use-package smyx-theme
  :custom
  (show-paren-delay 0)
  (show-paren-style 'expression)
  :config
  (load-theme 'smyx 'no-confirm)
  ;; web+db press vol.58 P.78
  ;; this settings are overwritten by theme often, so re-define
  (show-paren-mode t)
  (set-face-attribute 'show-paren-match nil
                      :background nil :foreground nil
                      :underline "#ffff00" :weight 'extra-bold))

;; gui
(when (window-system)
  ;; (set-background-color "black")
  ;; (set-foreground-color "LightGray")
  ;; (set-cursor-color "Gray")
  ;; (set-frame-parameter nil 'alpha 95)

  ;; ;; ;;; P97-99 フォントの設定
  ;; (when (eq window-system 'ns)
  ;;   ;; asciiフォントをMenloに
  ;;   (set-face-attribute 'default nil
  ;;                       :family "Menlo"
  ;;                       :height 120)
  ;;   ;; 日本語フォントをヒラギノ明朝 Proに
  ;;   (set-fontset-font
  ;;    nil 'japanese-jisx0208
  ;;    ;; 英語名の場合
  ;;    ;; (font-spec :family "Hiragino Mincho Pro"))
  ;;    (font-spec :family "ヒラギノ明朝 Pro"))
  ;;   ;; ひらがなとカタカナをモトヤシーダに
  ;;   ;; U+3000-303F   CJKの記号および句読点
  ;;   ;; U+3040-309F   ひらがな
  ;;   ;; U+30A0-30FF   カタカナ
  ;;   (set-fontset-font
  ;;    nil '(#x3040 . #x30ff)
  ;;    (font-spec :family "NfMotoyaCedar"))
  ;;   ;; フォントの横幅を調節する
  ;;   (setq face-font-rescale-alist
  ;;         '((".*Menlo.*" . 1.0)
  ;;           (".*Hiragino_Mincho_Pro.*" . 1.2)
  ;;           (".*nfmotoyacedar-bold.*" . 1.2)
  ;;           (".*nfmotoyacedar-medium.*" . 1.2)
  ;;           ("-cdac$" . 1.3))))
  ;;
  ;; (when (eq system-type 'windows-nt)
  ;;   ;; asciiフォントをConsolasに
  ;;   (set-face-attribute 'default nil
  ;;                       :family "Consolas"
  ;;                       :height 120)
  ;;   ;; 日本語フォントをメイリオに
  ;;   (set-fontset-font
  ;;    nil
  ;;    'japanese-jisx0208
  ;;    (font-spec :family "メイリオ"))
  ;;   ;; フォントの横幅を調節する
  ;;   (setq face-font-rescale-alist
  ;;         '((".*Consolas.*" . 1.0)
  ;;           (".*メイリオ.*" . 1.15)
  ;;           ("-cdac$" . 1.3))))

  (when (eq system-type 'darwin)
    ;; ウィンドウサイズ
    (setq initial-frame-alist
          (append '((top . 0) ;; フレームの Y 位置(ピクセル数)
                    (left . 105) ;; フレームの X 位置(ピクセル数)
                    (width . 210) ;; フレーム幅(文字数)
                    (height . 60) ;; フレーム高(文字数)
                    ) initial-frame-alist))
    (setq default-frame-alist initial-frame-alist)
    (setq default-frame-alist
          (append '((top . 0) ;; フレームの Y 位置(ピクセル数)
                    (left . 50) ;; フレームの X 位置(ピクセル数)
                    (width . 210) ;; フレーム幅(文字数)
                    (height . 60) ;; フレーム高(文字数)
                    ) default-frame-alist))

    ;; フォントを出来る限り揃える
    (when (>= emacs-major-version 23)
      ;; (setq fixed-width-use-QuickDraw-for-ascii t)
      ;; (setq mac-allow-anti-aliasing t)
      (set-face-attribute 'default nil
                          :family "monaco"
                          :height 130)
      (set-fontset-font
       (frame-parameter nil 'font)
       'japanese-jisx0208
       '("Hiragino Maru Gothic Pro" . "iso10646-1"))
      (set-fontset-font
       (frame-parameter nil 'font)
       'japanese-jisx0212
       '("Hiragino Maru Gothic Pro" . "iso10646-1"))))

  (when (eq system-type 'gnu/linux)
    (set-face-attribute 'default nil
                        :family "Ricty"  ;; 英数
                        :height 130)
    (set-fontset-font
     (frame-parameter nil 'font)
     'japanese-jisx0208
     '("Ricty" . "iso10646-1"))
    (set-fontset-font
     (frame-parameter nil 'font)
     'japanese-jisx0212
     '("Ricty" . "iso10646-1"))
    ;; ウィンドウサイズ
    (setq initial-frame-alist
          (append '((top . 20) ;; フレームの Y 位置(ピクセル数)
                    (left . 200) ;; フレームの X 位置(ピクセル数)
                    (width . 180) ;; フレーム幅(文字数)
                    (height . 50) ;; フレーム高(文字数)
                    ) initial-frame-alist))
    (setq default-frame-alist
          (append '((top . 20) ;; フレームの Y 位置(ピクセル数)
                    (left . 200) ;; フレームの X 位置(ピクセル数)
                    (width . 180) ;; フレーム幅(文字数)
                    (height . 50) ;; フレーム高(文字数)
                    ) default-frame-alist)))

  (when (eq system-type 'windows-nt)
    (set-face-attribute 'default nil
                        :family "Ricty Diminished"  ;; 英数
                        :height 130)
    (set-fontset-font
     (frame-parameter nil 'font)
     'japanese-jisx0208
     '("Ricty Diminished" . "iso10646-1"))
    (set-fontset-font
     (frame-parameter nil 'font)
     'japanese-jisx0212
     '("Ricty Diminished" . "iso10646-1"))
    ;; ウィンドウサイズ
    (setq initial-frame-alist
          (append '((top . 80) ;; フレームの Y 位置(ピクセル数)
                    (left . 400) ;; フレームの X 位置(ピクセル数)
                    (width . 200) ;; フレーム幅(文字数)
                    (height . 60) ;; フレーム高(文字数)
                    ) initial-frame-alist))
    (setq default-frame-alist
          (append '((top . 80) ;; フレームの Y 位置(ピクセル数)
                    (left . 400) ;; フレームの X 位置(ピクセル数)
                    (width . 200) ;; フレーム幅(文字数)
                    (height . 60) ;; フレーム高(文字数)
                    ) default-frame-alist))))


;;; other settings
;;; ============================================================

;; mozc
;; (use-package mozc-popup
;;   :config
;;   (set-language-environment "Japanese")
;;   (prefer-coding-system 'utf-8-unix)
;;   (custom-set-variables
;;    '(default-input-method "japanese-mozc")
;;    '(mozc-candidate-style 'popup)))

;;; utilities
;;; ============================================================

(load (expand-file-name "~/.emacs.d/elisps/utilities"))

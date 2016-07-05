;; basic settings
;; ===============================================================================

;; 日本語設定 (UTF-8)
;;(setenv "LC_ALL" "ja_JP.UTF-8")
(setenv "LANG" "ja_JP.UTF-8")
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)
(setq default-file-name-coding-system 'utf-8-unix)
(setq buffer-file-coding-system 'utf-8-unix)

;; コンパイルされていても新しい方を読む
(setq load-prefer-newer t)

;; beep 消し
(setq ring-bell-function 'ignore)
;; (setq visible-bell t)

;; Mac OS Xの場合のファイル名の設定
(when (eq system-type 'darwin)
  (require 'ucs-normalize)
  (set-file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system 'utf-8-hfs))

;; Windowsの場合のファイル名の設定
(when (eq window-system 'w32)
  ;; もしコマンドプロンプトを利用するなら sjis にする
  ;; (setq file-name-coding-system 'sjis)
  ;; (setq locale-coding-system 'sjis)
  (set-file-name-coding-system 'utf-8-unix)
  (setq locale-coding-system 'utf-8-unix))

;; 一時マークモードの自動有効化
(setq-default transient-mark-mode t)

;; emacs-server起動
(require 'server)
(unless (server-running-p)
  (server-start))

;; 行番号表示
(global-linum-mode t)

;; 行、カラム番号をモードラインに表示
(line-number-mode t);
(column-number-mode t);

;; scroll bar
(scroll-bar-mode -1)

;; menu bar
;; (menu-bar-mode -1)

;; tool bar
(tool-bar-mode -1)

;; ;; スタートアップ非表示
;; (setq inhibit-startup-screen t)

;; scratchの初期メッセージ消去
(setq initial-scratch-message "")

;; display file path on title bar
;; web+db vol.58 P.77
(setq frame-title-format (format "%%f - Emacs@%s" (system-name)))

;; ;; ファイルサイズを表示
;; (size-indication-mode t)

;; ;; 時計を表示（好みに応じてフォーマットを変更可能）
;; ;; (setq display-time-day-and-date t) ; 曜日・月・日を表示
;; ;; (setq display-time-24hr-format t) ; 24時表示
;; (display-time-mode t)
;;
;; ;; バッテリー残量を表示
;; (display-battery-mode t)

;; disable goal column
(put 'set-goal-column 'disabled nil)

;; yes-or-no to y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

;; mini buffer の履歴を保存する
(savehist-mode t)

;; mini buffer の履歴数
(setq history-length 500)

;; mini buffer の再帰的使用
(setq enable-recursive-minibuffers t)

;; 最近使ったファイルの表示数
(setq recentf-max-menu-items 500)

;; 最近開いたファイルを保存する数
(setq recentf-max-saved-items 500)

;; vertical split always
;; (setq split-height-threshold nil)

;; default tab size 4
(setq-default tab-width 4)
(setq tab-width 4)

;; tabの代わりにスペースでインデント
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

;; ;; 行間
;; (setq-default line-spacing 0)

;; 1行ずつスクロール
(setq scroll-conservatively 35
      scroll-margin 0
      scroll-step 1)
(setq comint-scroll-show-maximum-output t)

;;;; 行末の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; ファイル終端に改行
(setq require-final-newline t)

;; find-file で大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; 部分一致の補完機能を使う
;; p-bでprint-bufferとか
;; Emacs24 からデフォルトでそういう動作
;; (partial-completion-mode t)

;; C-kで行全体を削除
(setq kill-whole-line t)

;; BSで選択範囲を消す
(delete-selection-mode t)

;; imenu rescan
(setq imenu-auto-rescan t)

;; gzファイルも編集できるようにする
(auto-compression-mode t)

;; マウスで選択するとコピー
(setq mouse-drag-copy-region t)

;; Emacs 内外のコピーを有効に
(setq x-select-enable-primary t)

;; always follow symlink
(setq vc-follow-symlinks t)

;; ;; auto-scroll
;; (setq compilation-scroll-output t)

;; abbrev-mode
(setq-default abbrev-mode t)
(read-abbrev-file "~/.emacs.d/abbrev_defs")
(setq save-abbrevs t)

;; 改行コードを表示
;; (setq eol-mnemonic-dos "(CRLF)")
;; (setq eol-mnemonic-mac "(CR)")
;; (setq eol-mnemonic-unix "(LF)")

;; フォントロックモード (強調表示等) を有効にする
(global-font-lock-mode t)

;; 行末の空白を強調させる
(setq-default show-trailing-whitespace t)
;; 見た目を変える
;;(set-face-background 'trailing-whitespace "blue")
;;(set-face-underline 'trailing-whitespace t)

;; cua mode
;; 先にキーバインドを定義することにより自分の好きなキーに割り当てる
(setq cua-rectangle-mark-key [(s-return)])
(cua-mode t)
(setq cua-enable-cua-keys nil)
(setq cua-auto-tabify-rectangles nil)
;; (setq cua-mode-normal-cursor-color "white")
;; (setq cua-mode-overwrite-cursor-color "red")
;; (setq cua-mode-read-only-cursor-color "green")

;;; 削除ファイルをゴミ箱へ
(setq delete-by-moving-to-trash t)
(setq trash-directory "~/.emacs.d/trash")

;;; オートセーブファイル作成までの秒間隔
(setq auto-save-timeout 15)

;;; オートセーブファイル作成までのタイプ間隔
(setq auto-save-interval 60)

;;; バックアップ設定
(setq backup-by-copying t)
(setq backup-by-copying-when-linked t)
(setq backup-by-copying-when-mismatch t)

(setq version-control t)
(setq kept-new-versions 5)
(setq kept-old-versions 5)
(setq delete-old-versions t)
(setq dired-kept-versions 5)

;;; バックアップとオートセーブファイルを~/.emacs.d/backup/へ集める
(setq backup-directory-alist
      `((".*" . ,(expand-file-name "~/.emacs.d/backup/"))))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/backup/") t)))

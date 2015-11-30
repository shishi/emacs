;;; mode-compile

(autoload 'mode-compile "mode-compile"
  "Command to compile current buffer file based on the major mode" t)
(global-set-key (kbd "C-c c") 'mode-compile)

(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key (kbd "C-c k") 'mode-compile-kill)

;; compile 時自動で保存
(setq mode-compile-always-save-buffer-p t)

;; compile コマンドの内容を mode-compile に任せる
(setq mode-compile-never-edit-command-p t)

;; mode-compile メッセージ出力後待機時間 (default 1)
(setq mode-compile-reading-time 1)

;; growl
;; =============================================================================
;; growlnotifyコマンドが存在する場合のみフックを追加
;; growl に通知するための関数を定義
(when (executable-find "growlnotify")
 (defun growlnotify-after-save-hook ()
   (shell-command
    (format
     "growlnotify -a \"Emacs\" -t \"バッファを保存\" -m \"%s\""
     (buffer-name (current-buffer)))))

 ;; 関数をafter-save-hookに追加する
 (add-hook 'after-save-hook 'growlnotify-after-save-hook))

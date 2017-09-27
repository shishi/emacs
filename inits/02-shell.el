;; shell

;; exec-path
(require 'cl)
(setq exec-path
      (remove-duplicates
       (append
        (list
         (expand-file-name "~/.rbenv/bin")
         (expand-file-name "~/.rbenv/shims")
         ;; (expand-file-name "~/.anyenv/envs/rbenv/bin")
         ;; (expand-file-name "~/.anyenv/envs/rbenv/shims")
         (expand-file-name "~/.emacs.d/bin")
         (expand-file-name "~/bin")
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
        exec-path)
       :test 'equal :from-end t))

(setq eshell-path-env
      (setenv "PATH" (mapconcat 'identity exec-path ":")))

;; ;; ;; web+db press vol.58 P.77
;; ;; (add-to-list 'exec-path "/opt/local/bin")
;; ;; (add-to-list 'exec-path "/usr/local/bin")

;; ;; MANPATH
;; ;; http://sakito.jp/emacs/emacsshell.html
;; (setenv "MANPATH" (concat "/usr/local/man:/usr/share/man:/Developer/usr/share/man" (getenv "MANPATH")))

;; eshell
;; http://d.hatena.ne.jp/a666666/20110222/1298345699
;; http://valvallow.blogspot.com/2011/02/eshell.html

;; alias
(eval-after-load "em-alias"
  '(progn (eshell/alias "ll" "ls -la $*")
          ;; (eshell/alias "grep" "grep --color")
          (eshell/alias "lv" "lv -c $*")
          (eshell/alias "g" "git $*")
          ;; windows
          ;; (eshell/alias "," "cmd /c start $*")
          ))

;; 補完時に大文字小文字を区別しない
(setq eshell-cmpl-ignore-case t)

;; 確認なしでヒストリ保存
(setq eshell-ask-to-save-history (quote always))

;; 補完時にサイクルするか
;; (setq eshell-cmpl-cycle-completions t)
(setq eshell-cmpl-cycle-completions nil)

;; 補完候補がこの数値以下だとサイクルせずに候補表示
(setq eshell-cmpl-cycle-cutoff-length 5)

;; 履歴で重複を無視する
(setq eshell-hist-ignoredups t)

;; ;; prompt
;; (setq eshell-prompt-function
;;       (lambda ()
;;         (concat
;;          "[" (format-time-string "%Y/%m/%d(%a) %H:%M") "]"
;;           "["
;;          (user-login-name) "@" (system-name) " "
;;          (eshell/pwd)
;;          "]\n"
;;          (if (= (user-uid) 0)
;;              "#"
;;            "$")
;;          " "
;;          )))

;; 変更した prompt 文字列に合う形で prompt の開始を指定 (C-a で"$ "の次にカーソルがくるようにする)
;; これの設定を上手くしとかないとタブ補完も効かなくなるっぽい
(setq eshell-prompt-regexp "^[^#$]*[$#] ")

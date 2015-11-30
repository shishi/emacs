;;; magit
(require 'magit)

(setq magit-git-executable "git")
(setq magit-emacsclient-executable "emacsclient")

(define-key global-map (kbd "C-c m") 'magit-status)

;; ;; magit-20150823.520 で大幅に構造が変わったので使えない
;; ;; diff関連の設定
;; (defun magit-setup-diff ()
;;   ;; diffを表示しているときに文字単位での変更箇所も強調表示する
;;   ;; 'allではなくtにすると現在選択中のhunkのみ強調表示する
;;   (setq magit-diff-refine-hunk 'all)
;;   ;; ;; diff用のfaceを設定する
;;   ;; (diff-mode-setup-faces)
;;   ;; diffの表示設定が上書きされてしまうのでハイライトを無効にする
;;   (set-face-attribute 'magit-item-highlight nil :inherit nil))
;; (add-hook 'magit-mode-hook 'magit-setup-diff)

;; ;; 新しい magit向け magit-statusの設定 - Life is very short
;; ;; http://d.hatena.ne.jp/syohex/20130904/1378310201
;; (defadvice magit-status (around magit-fullscreen activate)
;;   (window-configuration-to-register :magit-fullscreen)
;;   ad-do-it
;;   (delete-other-windows))

;; (defun my/magit-quit-session ()
;;   (interactive)
;;   (kill-buffer)
;;   (jump-to-register :magit-fullscreen))

;; (define-key magit-status-mode-map (kbd "q") 'my/magit-quit-session)

;; (defadvice git-commit-commit (after move-to-magit-buffer activate)
;;   (delete-window))

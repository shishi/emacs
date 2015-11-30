;; helm-c-moccur
;; http://d.hatena.ne.jp/IMAKADO/20080724/1216882563
(require 'helm-c-moccur)

;; helm-c-moccurが提供するコマンドでhelmが起動された際の`helm-idle-delay'の値
(setq helm-c-moccur-helm-idle-delay nil)

;; non-nilならコマンド起動時に現在のポイントにマークをセットする
(setq helm-c-moccur-push-mark-flag t)

;; non-nilなら必要に応じてナローイングを解除する
(setq helm-c-moccur-widen-when-goto-line-flag t)

;; non-nilなら必要に応じてoutlineの折畳み表示を解除する
(setq helm-c-moccur-show-all-when-goto-line-flag t)

;; helm-c-moccur-dmoccur などのコマンドでバッファの情報をハイライトする
(setq helm-c-moccur-higligt-info-line-flag t)

;; 現在選択中の候補の位置を他のwindowに表示する
(setq helm-c-moccur-enable-auto-look-flag t)

;; helm-c-moccur-occur-by-moccur の起動時にポイントの位置の単語を初期パターンにする
(setq helm-c-moccur-enable-initial-pattern t)

;; Preselect current line in *helm moccur* buffer.
(setq helm-c-moccur-preselect-current-line t)

(define-key global-map (kbd "M-o") 'helm-c-moccur-occur-by-moccur)
(define-key global-map (kbd "C-M-o") 'helm-c-moccur-dmoccur)
(define-key global-map (kbd "s-M-o") 'helm-c-moccur-buffer-list)

(define-key isearch-mode-map (kbd "M-o") 'helm-c-moccur-from-isearch)

(defun dired-mode-hook-for-helm-c-moccur ()
  (local-set-key (kbd "O") 'helm-c-moccur-dired-do-moccur-by-moccur))
(add-hook 'dired-mode-hook 'dired-mode-hook-for-helm-c-moccur)

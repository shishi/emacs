;; anything-c-moccur
;; http://d.hatena.ne.jp/IMAKADO/20080724/1216882563
(require 'anything-c-moccur)

(setq anything-c-moccur-anything-idle-delay 0.1)

;; `anything-c-moccur-dmoccur などのコマンドでバッファの情報をハイライトする
(setq anything-c-moccur-higligt-info-line-flag t)

;; 現在選択中の候補の位置を他のwindowに表示する
(setq anything-c-moccur-enable-auto-look-flag t)

;; `anything-c-moccur-occur-by-moccur の起動時にポイントの位置の単語を初期パターンにする
(setq anything-c-moccur-enable-initial-pattern t)

;;; キーバインドの割当(好みに合わせて設定してください)
(define-key global-map (kbd "M-o") 'anything-c-moccur-occur-by-moccur) ;バッファ内検索
(define-key global-map (kbd "C-M-o") 'anything-c-moccur-dmoccur) ;ディレクトリ
(define-key global-map (kbd "s-o") 'anything-c-moccur-buffer-list)

(define-key isearch-mode-map (kbd "M-o") 'anything-c-moccur-from-isearch)

(defun dired-mode-hook-for-anything-c-moccur ()
  (local-set-key (kbd "O") 'anything-c-moccur-dired-do-moccur-by-moccur))
(add-hook 'dired-mode-hook 'dired-mode-hook-for-anything-c-moccur)

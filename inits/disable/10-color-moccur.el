;; color-moccur.el
;; http://d.hatena.ne.jp/IMAKADO/20080724/1216882563
(require 'color-moccur nil t)
(require 'moccur-edit nil t)

;; ディレクトリ検索のとき除外するファイル
(add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
(add-to-list 'dmoccur-exclusion-mask "^#.+#$")

;; ;; moccur
;; (define-key global-map (kbd "M-s-o") 'moccur)

;; 複数の検索語や、特定のフェイスのみマッチ等の機能を有効にする
;; 詳細は http://www.bookshelf.jp/soft/meadow_50.html#SEC751
(setq moccur-split-word t)

;; migemoがrequireできる環境ならmigemoを使う
;; 第三引数がnon-nilだとloadできなかった場合にエラーではなくnilを返す
(when (and (executable-find "cmigemo")
           (require 'migemo nil t))
  (setq moccur-use-migemo t))

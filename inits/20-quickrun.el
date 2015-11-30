;;; quickrun
(require 'quickrun)

(global-set-key (kbd "C-c q") 'quickrun)

;; 結果の出力バッファと元のバッファを行き来したい場合は
;; ':stick t'の設定をするとよいでしょう
(push '("*quickrun*") popwin:special-display-config)

;; auto-highlight-symbol-mode
;; https://github.com/mitsuo-saito/auto-highlight-symbol-mode
(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)

;; 適用範囲をデフォルトの見えている範囲ではなく buffer 全体に
(custom-set-variables '(ahs-default-range (quote ahs-range-whole-buffer)))

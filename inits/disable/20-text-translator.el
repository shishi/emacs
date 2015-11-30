;; text-translator
(require 'text-translator)
(setq text-translator-auto-selection-func 'text-translator-translate-by-auto-selection-enja)
;; 翻訳キー設定
(global-set-key (kbd "C-c t") 'text-translator)
(global-set-key (kbd "C-c T") 'text-translator-translate-last-string)

;;; IME patch

;; バッファでIMを有効化した状態で「(mac-get-current-input-source)」を評価(C-j）で分かる
;; for google japanese input
(setq default-input-method "MacOSX")
;; (mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `title "漢")
;; (mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `cursor-type `box)
;; (mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `cursor-color "magenta")

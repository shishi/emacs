;;; mozc
(when (require 'mozc nil t)
  (require 'mozc)
  (set-language-environment "Japanese")
  (setq default-input-method "japanese-mozc")
  (prefer-coding-system 'utf-8-unix))
;; (global-set-key (kbd "C-o") 'toggle-input-method)

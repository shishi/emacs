;;; nxhtml-mode
;; load
;; (require 'nxhtml-autostart)

;; 背景色
(custom-set-faces
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "grey20"))))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "grey30"))))
)

(add-hook 'eruby-nxhtml-mumamo-mode 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes

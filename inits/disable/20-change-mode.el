;; change-mode
;; https://groups.google.com/group/gnu.emacs.sources/msg/a322fe45d233d964
;; http://www.bookshelf.jp/soft/meadow_44.html
(autoload 'change-mode "change-mode"
  "Show changes in a distincive face" t)
(autoload 'change-mode-next-change "change-mode" "\
Move to the beginning of the next change, if minor-mode
change-mode is in effect." t)
(autoload 'change-mode-previous-change "change-mode" "\
Move to the beginning of the previous change, if minor-mode
change-mode is in effect." t)
(autoload 'compare-with-file "change-mode"
"Compare this saved buffer with a file,  showing differences
in a distinctive face" t)
(autoload 'change-mode-remove-change-face "change-mode" "\
Remove the change face from the region.  This allows you to
manually remove highlighting from uninteresting changes." t)
(autoload (quote global-change-mode) "change-mode" "\
Turn on or off global Change mode.\"
`change-mode-global-modes'." t nil)
(global-set-key '[C-right] 'change-mode-next-change)
(global-set-key '[C-left]  'change-mode-previous-change)

;; (setq change-mode-colours '(
;;                             "SkyBlue"
;;                             "LightPink1"
;;                             "CadetBlue2"
;;                             "plum1"
;;                             "dark orange"
;;                             "dark turquoise"))

;; (setq change-delete-face-foreground "black")
;; (setq change-face-foreground "black")
;; (setq change-face-background "blue")

(global-change-mode t)

;; (add-hook 'texinfo-mode-hook
;;           (lambda ()
;;             (add-hook 'local-write-file-hooks 'change-mode-rotate-colours)
;;             (change-mode)
;;             (local-set-key "\C-^" 'change-mode-next-change)
;;             ))

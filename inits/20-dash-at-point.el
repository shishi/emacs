;;; dash-at-point

(autoload 'dash-at-point "dash-at-point"
          "Search the word at point with Dash." t nil)
(define-key global-map (kbd "C-c d") 'dash-at-point)

;; (add-to-list 'dash-at-point-mode-alist '(perl-mode . "perl"))

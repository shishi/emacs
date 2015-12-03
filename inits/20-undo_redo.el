;;; redo+.el
(require 'redo+)
(define-key global-map (kbd "C-/") 'undo)
(define-key global-map (kbd "C-M-/") 'redo)
;; see (find-file-other-window "20-smartrep.el")

(smartrep-define-key
    global-map "C-q" '(("C-/" . (redo))))

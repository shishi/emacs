;;; redo+.el
(require 'redo+)
(define-key global-map (kbd "C-/") 'undo)
(define-key global-map (kbd "C-x C-/") 'redo)
;; see (find-file-other-window "20-smartrep.el")

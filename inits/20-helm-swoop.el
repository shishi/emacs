;;; helm-swoop
(require 'helm-swoop)

(define-key global-map (kbd "M-o") 'helm-swoop)
(define-key global-map (kbd "s-M-o") 'helm-multi-swoop-all)

;; isearchからはM-iで移行
(define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-swoop-map (kbd "C-s") 'helm-next-line)

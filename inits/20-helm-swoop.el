;;; helm-swoop
(require 'helm-swoop)

(define-key global-map (kbd "M-o") 'helm-swoop)
(define-key global-map (kbd "s-M-o") 'helm-multi-swoop-all)

;; isearchからの連携を考えるとC-r/C-sにも割り当て推奨
(define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-swoop-map (kbd "C-s") 'helm-next-line)

;;; smartrep
(require 'smartrep)

(defvar ctl-q-map (make-keymap))
(define-key global-map "\C-q" ctl-q-map)

;; ;; scroll other window
;; (smartrep-define-key
;;     global-map "C-q" '(("n" . (scroll-other-window 1))
;;                        ("p" . (scroll-other-window -1))
;;                        ("N" . 'scroll-other-window)
;;                        ("P" . (scroll-other-window '-))
;;                        ("a" . (beginning-of-buffer-other-window 0))
;;                        ("e" . (end-of-buffer-other-window 0))))

;; ;; (previous|next)-error
;; (smartrep-define-key
;;     global-map "C-q" '(("C-n" . (next-error))
;;                        ("C-p" . (previous-error))))

;; flycheck
(smartrep-define-key
    global-map "C-q" '(("n" . 'flycheck-next-error)
                       ("p" . 'flycheck-previous-error)))

;; git-gutter
(smartrep-define-key
    global-map "C-q" '(("C-n" . 'git-gutter:next-hunk)
                       ("C-p" . 'git-gutter:previous-hunk)))

;; redo
(smartrep-define-key
    global-map "C-q" '(("C-/" . (redo))))


;; js2-mode
(smartrep-define-key
    js2-mode-map "C-q" '(("n" . 'js2-next-error)
                         ("p" . 'js2-prev-error)))

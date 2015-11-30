;; smartrep
(require 'smartrep)

(defvar ctl-q-map (make-keymap))
(define-key global-map "\C-q" ctl-q-map)

;; scroll other window
(smartrep-define-key
    global-map "C-q" '(("n" . (scroll-other-window 1))
                       ("p" . (scroll-other-window -1))
                       ("N" . 'scroll-other-window)
                       ("P" . (scroll-other-window '-))
                       ("a" . (beginning-of-buffer-other-window 0))
                       ("e" . (end-of-buffer-other-window 0))))

;; (previous|next)-error
(smartrep-define-key
    global-map "C-q" '(("M-n" . (next-error))
                       ("M-p" . (previous-error))))

;; redo
(smartrep-define-key
    global-map "C-q" '(("C-/" . (redo))))

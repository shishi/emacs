;;;; snotify.el --- Simple notification in mode-line
(require 'server)
(defgroup snotify nil
 "snotify"
 :group 'emacs)

(defvar snotify-mode-line-string "")

(setq global-mode-string (append '("" snotify-mode-line-string)
                                global-mode-string))
;;;###autoload
(define-minor-mode snotify-mode
 "Simple notification in mode-line"
 nil nil nil
 (unless (server-running-p)
   (server-start))
 (setq snotify-mode-line-string
       (if snotify-mode "[SN]" "")))

(defun snotify-update-mode-line-string (str)
 (setq snotify-mode-line-string str)
 (force-mode-line-update))

(provide 'snotify)

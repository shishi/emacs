;; Twittering-mode
(require 'twittering-mode)

(setq twittering-icon-mode t)
(setq twittering-timer-interval 100)

(defun twittering-mode-hook-for-twittering-mode-key-setting ()
  (mapc (lambda (pair)
          (let ((key (car pair))
                (func (cdr pair)))
            (define-key twittering-mode-map
              (read-kbd-macro key) func)))
        '(("F" . twittering-friends-timeline)
          ("R" . twittering-replies-timeline)
          ("U" . twittering-user-timeline)
          ("W" . twittering-update-status-interactive))))
(add-hook 'twittering-mode-hook 'twittering-mode-hook-for-twittering-mode-key-setting)

(defun twittering-new-tweets-hook-for-twittering-mode-setting ()
  (let ((n twittering-new-tweets-count))
    (start-process "twittering-notify" nil "notify-send"
                   "-i" "/usr/share/pixmaps/gnome-emacs.png"
                   "New tweets"
                   (format "You have %d new tweet%s"
                           n (if (> n 1) "s" "")))))
(add-hook 'twittering-new-tweets-hook 'twittering-new-tweets-hook-for-twittering-mode-setting)

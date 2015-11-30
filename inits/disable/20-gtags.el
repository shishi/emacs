;; gtags

(autoload 'gtags-mode "gtags" "" t)

(defun gtags-select-mode-hook-for-gtags-mode-setting ()
  ;; (setq gtags-suggested-key-mapping t)
  ;; (setq hl-line-face 'underline)
  (hl-line-mode 1))
(add-hook 'gtags-select-mode-hook 'gtags-select-mode-hook-for-gtags-mode-setting)

;; If you hope gtags-mode is on in c-mode then please add c-mode-hook to your
;; $HOME/.emacs like this.
;;
;; (add-hook 'c-mode-hook
;;    '(lambda ()
;;       (gtags-mode 1)
;; ))
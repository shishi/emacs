;; rhtml-mode
;; (require 'rhtml-mode)
(autoload 'rhtml-mode "rhtml-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.rhtml$" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))

(defun rthml-mode-hook-for-rinari-launch ()
  (rinari-launch))
(add-hook 'rhtml-mode-hook 'rthml-mode-hook-for-rinari-launch)
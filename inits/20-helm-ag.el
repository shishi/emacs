;;; helm-ag
(require 'helm-ag)

;; keymap from helm-ag.el
;; (defvar helm-ag-map
;;   (let ((map (make-sparse-keymap)))
;;     (set-keymap-parent map helm-map)
;;     (define-key map (kbd "C-c o") 'helm-ag--run-other-window-action)
;;     (define-key map (kbd "C-l") 'helm-ag--up-one-level)
;;     (define-key map (kbd "C-c C-e") 'helm-ag-edit)
;;     (define-key map (kbd "C-c ?") 'helm-ag-help)
;;     map)
;;   "Keymap for `helm-ag'.")
;;
;; (defvar helm-ag-edit-map
;;   (let ((map (make-sparse-keymap)))
;;     (define-key map (kbd "C-c C-c") 'helm-ag--edit-commit)
;;     (define-key map (kbd "C-c C-k") 'helm-ag--edit-abort)
;;     map))

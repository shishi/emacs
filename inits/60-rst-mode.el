;; rst-mode
(require 'rst)

(setq auto-mode-alist
      (append '(;; ("\\.txt$" . rst-mode)
                ("\\.howm$" . rst-mode)
                ("\\.rst$" . rst-mode)
                ("\\.rest$" . rst-mode)) auto-mode-alist))

(add-hook 'rst-adjust-hook 'rst-toc-update)

(defun rst-mode-hook-for-rst-mode-setting ()
  ;; (setq frame-background-mode 'dark)
  (setq rst-slides-program "open -a Firefox")
  (setq indent-tabs-mode nil))
(add-hook 'rst-mode-hook 'rst-mode-hook-for-rst-mode-setting)

;; (custom-set-faces
;;  '(rst-level-1-face ((t (:foreground "LightSkyBlue"))) t)
;;  '(rst-level-2-face ((t (:foreground "LightGoldenrod"))) t)
;;  '(rst-level-3-face ((t (:foreground "Cyan1"))) t)
;;  '(rst-level-4-face ((t (:foreground "chocolate1"))) t)
;;  '(rst-level-5-face ((t (:foreground "PaleGreen"))) t)
;;  '(rst-level-6-face ((t (:foreground "Aquamarine"))) t))
;;  ;; '(rst-level-7-face ((t (:foreground "LightSteelBlue"))) t)  ;; メモ
;;  ;; '(rst-level-8-face ((t (:foreground "LightSalmon"))) t))
;; (custom-set-variables
;;  '(rst-level-face-base-light 50))

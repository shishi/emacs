;; rinari

;; Interactively Do Things (highly recommended, but not strictly required)
;; (require 'ido)
;; (ido-mode t)

(require 'rinari)

(global-rinari-mode)
(setq rinari-exclude-major-modes '(magit-status-mode magit-log-edit-mode))

(custom-set-variables '(rinari-tags-file-name "TAGS"))
;; (setq rinari-tags-file-name "RINARI_TAGS")

;; ;; rinari nxhtml
;; (setq
;;  nxhtml-global-minor-mode t
;;  mumamo-chunk-coloring 'submode-colored
;;  nxhtml-skip-welcome t
;;  indent-region-mode t
;;  rng-nxml-auto-validate-flag nil
;;  nxml-degraded t)

;; (add-to-list 'auto-mode-alist '("\\.html\\.erb$" . eruby-nxhtml-mumamo-mode))
;; (add-to-list 'auto-mode-alist '("\\.rhtml$" . eruby-html-mumamo-mode))

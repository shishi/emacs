;;; js2-mode
;; (autoload 'js2-mode "js2-mode" nil t)
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))

;; (smartrep-define-key
;;     js2-mode-map "C-c" '(("M-n" . 'js2-next-error)
;;                          ("M-p" . 'js2-prev-error)))

;; (add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(custom-set-variables
 '(js2-auto-indent-p t)
 '(js2-enter-indents-newline t)
 '(js2-indent-on-enter-key nil))

;;; P163 js-modeの基本設定
(defun js-indent-hook ()
  (setq js-indent-level 2
        js-expr-indent-offset 2
        indent-tabs-mode nil)
  ;; switch文のcaseラベルをインデントする関数を定義する
  (defun my-js-indent-line ()
    (interactive)
    (let* ((parse-status (save-excursion (syntax-ppss (point-at-bol))))
           (offset (- (current-column) (current-indentation)))
           (indentation (js--proper-indentation parse-status)))
      (back-to-indentation)
      (if (looking-at "case\\s-")
          (indent-line-to (+ indentation 2))
        (js-indent-line))
      (when (> offset 0) (forward-char offset))))
  ;; caseラベルのインデント処理をセットする
  (set (make-local-variable 'indent-line-function) 'my-js-indent-line)
  ;; ここまでcaseラベルを調整する設定
  )

(add-hook 'js2-mode-hook 'js-indent-hook)

(defun unload-generic-x ()
  (unload-feature 'generic-x))

;; javascript-mode

;; (require 'nxhtml-autostart)

;; *.jsのファイルのときにjavascript-modeを自動起動する
(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))

;; flymake
(defun flymake-javascript-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    ;; (list "js" (list "-s" local-file))
    (list "jsl" (list "-process" local-file))
    ))
(setq flymake-allowed-file-name-masks
      (append
       flymake-allowed-file-name-masks
       '(("\\.json$" flymake-javascript-init)
         ("\\.js$" flymake-javascript-init))))
(setq flymake-err-line-patterns
      (cons
       '("\\(.+\\)(\\([0-9]+\\)): \\(?:lint \\)?\\(\\(?:warning\\|SyntaxError\\):.+\\)" 1 2 nil 3)
       flymake-err-line-patterns))
(add-hook 'javascript-mode-hook '(lambda() (flymake-mode t)))

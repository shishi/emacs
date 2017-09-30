;;; utilities
;;; ============================================================

;; dired-do-convert-coding-system
;; batch convert coding system through dired
(require 'dired-aux)

(add-hook 'dired-mode-hook
          (lambda ()
            (define-key (current-local-map) "T"
              'dired-do-convert-coding-system)))

(defvar dired-default-file-coding-system nil
  "*Default coding system for converting file (s).")
(setq dired-default-file-coding-system 'utf-8-unix)

(defvar dired-file-coding-system 'no-conversion)

(defun dired-convert-coding-system ()
  (let ((file (dired-get-filename))
        (coding-system-for-write dired-file-coding-system)
        failure)
    (condition-case err
        (with-temp-buffer
          (insert-file-contents file)
          (write-region (point-min) (point-max) file))
      (error (setq failure err)))
    (if (not failure)
        nil
      (dired-log "convert coding system error for %s:\n%s\n" file failure)
      (dired-make-relative file))))

(defun dired-do-convert-coding-system (coding-system &optional arg)
  "Convert file (s) in specified coding system."
  (interactive
   (list (let ((default (or dired-default-file-coding-system
                            buffer-file-coding-system)))
           (read-coding-system
            (format "Coding system for converting file (s) (default, %s): "
                    default)
            default))
         current-prefix-arg))
  (check-coding-system coding-system)
  (setq dired-file-coding-system coding-system)
  (dired-map-over-marks-check
   (function dired-convert-coding-system) arg 'convert-coding-system t))

;; indent-whole-buffer
(defun indent-whole-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))
(define-key global-map (kbd "C-s-\\") 'indent-whole-buffer)

;;; camerize<->snakecase-on-region
;;; http://d.hatena.ne.jp/IMAKADO/20091209/1260323922
(defun decamelize (string)
  "Convert from CamelCaseString to camel_case_string."
  (let ((case-fold-search nil))
    (downcase
     (replace-regexp-in-string
      "\\([A-Z]+\\)\\([A-Z][a-z]\\)" "\\1_\\2"
      (replace-regexp-in-string
       "\\([a-z\\d]\\)\\([A-Z]\\)" "\\1_\\2"
       string)))))

(defun camerize<->snakecase-on-region (s e)
  (interactive "r")
  (let ((buf-str (buffer-substring-no-properties s e))
        (case-fold-search nil))
    (cond
     ((string-match "_" buf-str)
      (let* ((los (mapcar 'capitalize (split-string buf-str "_" t)))
             (str (mapconcat 'identity los "")))
        ;; snake case to camel case
        (delete-region s e)
        (insert str)))
     (t
      (let* ((str (decamelize buf-str)))
        ;; snake case to camel case
        (delete-region s e)
        (insert str))))))

;; mac? linux? bsd? win?
;; identify OS
(defvar os-type nil)

(cond ((string-match "apple-darwin" system-configuration) ;; Mac
       (setq os-type 'mac))
      ((string-match "linux" system-configuration)        ;; Linux
       (setq os-type 'linux))
      ((string-match "freebsd" system-configuration)      ;; FreeBSD
       (setq os-type 'bsd))
      ((string-match "mingw" system-configuration)        ;; Windows
       (setq os-type 'win)))

(defun mac? ()
  (eq os-type 'mac))

(defun linux? ()
  (eq os-type 'linux))

(defun bsd? ()
  (eq os-type 'freebsd))

(defun win? ()
  (eq os-type 'win))

;; helm-ls-git-fallback-projectile
;; show helm-ls-git if in git repo, show helm-projectile if not
(require 'helm)
(require 'helm-projectile)
(require 'helm-ls-git)
(defun helm-ls-git-fallback-projectile ()
      (interactive)
      (if (helm-ls-git-not-inside-git-repo)
        (helm-projectile)
        (helm-ls-git-ls)))
(define-key global-map (kbd "C-'") 'helm-ls-git-fallback-projectile)

;; helm-dired
;; helm in dired
;; http://d.hatena.ne.jp/syohex/20120105/1325770778
(require 'helm)
(require 'dired)
(defun my/helm-dired ()
  (interactive)
  (let ((curbuf (current-buffer)))
    (if (helm-other-buffer
         '(helm-c-source-files-in-current-dir)
         "*helm-dired*")
        (kill-buffer curbuf))))
(define-key dired-mode-map (kbd "p") 'my/helm-dired)

;; glance-file
;; glance a file through popwin
(require 'popwin)
(require 'dired)
(defun glance-file ()
  (interactive)
  (popwin:find-file (dired-get-file-for-visit)))
(define-key dired-mode-map (kbd "o") 'glance-file)

;; perltidy-region perltidy-defun
(require 'cperl-mode)
(defun perltidy-region ()
  "Run perltidy on the current region."
  (interactive)
  (save-excursion
    (shell-command-on-region (point) (mark) "perltidy -qt" nil t)))
(defun perltidy-defun ()
  "Run perltidy on the current defun."
  (interactive)
  (save-excursion (mark-defun)
                  (perltidy-region)))
(defun cperl-mode-hook-for-perltidy ()
  (define-key cperl-mode-map (kbd "C-c t") 'perltidy-region)
  (define-key cperl-mode-map (kbd "C-c C-t") 'perltidy-defun))
(add-hook  'cperl-mode-hook 'cperl-mode-hook-for-perltidy)

;; set-alpha
;; trasparent emacs
(defun set-alpha (alpha-num)
  "set frame parameter 'alpha"
  (interactive "nAlpha: ")
  (set-frame-parameter nil 'alpha (cons alpha-num '(90))))

;; advises for helm and mozc
;; helm の検索パターンを mozc を使って入力した場合にエラーが発生することがあるのを改善する
(advice-add 'mozc-helper-process-recv-response
            :around (lambda (orig-fun &rest args)
                      (cl-loop for return-value = (apply orig-fun args)
                               if return-value return it)))

;; helm の検索パターンを mozc を使って入力する場合、入力中は helm の候補の更新を停止する
(advice-add 'mozc-candidate-dispatch
            :before (lambda (&rest args)
                      (when (and (fboundp 'helm-alive-p)
                                 (helm-alive-p))
                        (cl-case (nth 0 args)
                          ('update
                           (unless helm-suspend-update-flag
                             (helm-kill-async-processes)
                             (setq helm-pattern "")
                             (setq helm-suspend-update-flag t)))
                          ('clean-up
                           (when helm-suspend-update-flag
                             (setq helm-suspend-update-flag nil)))))))

;; helm で候補のアクションを表示する際に IME を OFF にする
(advice-add 'helm-select-action
            :before (lambda (&rest args)
                      (deactivate-input-method)))

;; 他のものと結びつかない独立した関数など

;; display 'git log -p'
;; http://d.hatena.ne.jp/kitokitoki/20120218/p2 改
(require 'cl)

(defmacro* with-temp-directory (dir &body body)
  `(with-temp-buffer
     (cd ,dir)
     ,@body))

(defmacro aif (test-form then-form &optional else-form)
  `(let ((it ,test-form))
     (if it ,then-form ,else-form)))

(defmacro* awhen (test-form &body body)
  `(aif ,test-form
        (progn ,@body)))

(defun find-file-upward (file-name &optional dir)
  (interactive)
  (let ((default-directory (file-name-as-directory (or dir default-directory))))
    (if (file-exists-p file-name)
        (expand-file-name file-name)
      (unless (string= "/" (directory-file-name default-directory))
        (find-file-upward file-name (expand-file-name ".." default-directory))))))

(defun git-repo-p ()
  (when (find-file-upward ".git") t))

(defun git-log-p-this-file ()
  (interactive)
  (let ((file (buffer-file-name)))
    (unless (git-repo-p) (error "git 管理下にありません"))
    (let ((dir (concat (find-file-upward ".git") "/../"))
          (buf "*git-log-p-this-file*"))
      (with-temp-directory dir
                           (awhen (get-buffer buf)
                                  (with-current-buffer it (erase-buffer)))
                           (call-process-shell-command (concat "git log -p -- " file) nil buf t))
      ;; (switch-to-buffer buf)
      (switch-to-buffer-other-window buf)
      (diff-mode)
      (goto-char (point-min)))))

(defalias 'log-p 'git-log-p-this-file)

;;; dired を使って、一気にファイルの coding system (漢字) を変換する
(require 'dired-aux)
(add-hook 'dired-mode-hook
          (lambda ()
            (define-key (current-local-map) "T"
              'dired-do-convert-coding-system)))

(defvar dired-default-file-coding-system nil
  "*Default coding system for converting file (s).")

(defvar dired-file-coding-system 'no-conversion)

(defun dired-convert-coding-system ()
  (let ((file (dired-get-filename))
        (coding-system-for-write dired-file-coding-system)
        failure)
    (condition-case err
        (with-temp-buffer
          (insert-file file)
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
;; 変換するデフォルトの文字コード
(setq dired-default-file-coding-system 'utf-8-unix)

;;; バッファを全体をインデント
(defun indent-whole-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))
(define-key global-map (kbd "C-s-\\") 'indent-whole-buffer)

;;; 最近閉じたバッファを復元
;; http://d.hatena.ne.jp/kitokitoki/20100608/p2
(defvar my-killed-file-name-list nil)

(defun my-push-killed-file-name-list ()
  (when (buffer-file-name)
    (push (expand-file-name (buffer-file-name)) my-killed-file-name-list)))

(defun my-pop-killed-file-name-list ()
  (interactive)
  (unless (null my-killed-file-name-list)
    (find-file (pop my-killed-file-name-list))))
;; kill-buffer-hook (バッファを消去するときのフック) に関数を追加
(add-hook 'kill-buffer-hook 'my-push-killed-file-name-list)
;; Mac の Command + z で閉じたバッファを復元する
(define-key global-map (kbd "s-z") 'my-pop-killed-file-name-list)

;;; P87-89 モードラインに関する設定
;; リージョン内の行数と文字数をモードラインに表示する（範囲指定時のみ）
;; http://d.hatena.ne.jp/sonota88/20110224/1298557375
(defun count-lines-and-chars ()
  (if mark-active
      (format "%d lines,%d chars "
              (count-lines (region-beginning) (region-end))
              (- (region-end) (region-beginning)))
      ;;(count-lines-region (region-beginning) (region-end)) ;; これだとエコーエリアがチラつく
    ""))
(add-to-list 'default-mode-line-format
             '(:eval (count-lines-and-chars)))

;;; shibang のあるファイルに保存時実行権限付加
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;;; カーソル位置のフェイスを調べる関数
;; http://www.bookshelf.jp/soft/meadow_15.html#SEC120
(defun describe-face-at-point ()
  "Return face used at point."
  (interactive)
  (message "%s" (get-char-property (point) 'face)))

;; ;;; C-w で範囲選択してないときは backward-kill-word
;; ;; http://dev.ariel-networks.com/wp/documents/aritcles/emacs/part16
;; (defadvice kill-region (around kill-word-or-kill-region activate)
;;   (if (and (called-interactively-p) transient-mark-mode (not mark-active))
;;       (backward-kill-word 1)
;;     ad-do-it))
;; ;; minibuffer用
;; (define-key minibuffer-local-completion-map "\C-w" 'backward-kill-word)

;;; カーソル位置の単語を削除
(defun kill-word-at-point ()
  (interactive)
  (let ((char (char-to-string (char-after (point)))))
    (cond
     ((string= " " char) (delete-horizontal-space))
     ((string-match "[\t\n -@\[-`{-~]" char) (kill-word 1))
     (t (forward-char) (backward-word) (kill-word 1)))))
(global-set-key "\M-d" 'kill-word-at-point)

;;; 自分以外の所有のファイルを sudo で開き直す
(defun file-root-p (filename)
  "Return t if file FILENAME created by root."
  (eq 0 (nth 2 (file-attributes filename))))

(defun th-rename-tramp-buffer ()
  (when (file-remote-p (buffer-file-name))
    (rename-buffer
     (format "%s:%s"
             (file-remote-p (buffer-file-name) 'method)
             (buffer-name)))))

(add-hook 'find-file-hook 'th-rename-tramp-buffer)

(defadvice find-file (around th-find-file activate)
  "Open FILENAME using tramp's sudo method if it's read-only."
  (if (and (file-root-p (ad-get-arg 0))
           (not (file-writable-p (ad-get-arg 0)))
           (y-or-n-p (concat "File "
                             (ad-get-arg 0)
                             " is read-only.  Open it as root? ")))
      (th-find-file-sudo (ad-get-arg 0))
    ad-do-it))

(defun th-find-file-sudo (file)
  "Opens FILE with root privileges."
  (interactive "F")
  (set-buffer (find-file (concat "/sudo::" file))))

;;; OS 判別関数
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

;;; camerize<->snake_case
;;; http://d.hatena.ne.jp/IMAKADO/20091209/1260323922
;; copied from rails-lib.el
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

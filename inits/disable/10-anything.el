;; anything
(setq org-directory "")
(require 'anything-config)
(require 'anything-match-plugin)
(require 'anything-complete)
(require 'anything-show-completion)
;(require 'anything-auto-install)
(require 'anything-grep)
(require 'descbinds-anything)
(when (and (executable-find "cmigemo")
           (require 'migemo nil t))
  (require 'anything-migemo nil t)
  (defadvice anything-for-files (around use-migemo activate)
    (let ((anything-use-migemo t)) ad-do-it)))

;; lisp シンボル検索の再検索時間
(anything-lisp-complete-symbol-set-timer 150)

(define-key emacs-lisp-mode-map "\C-\M-i" 'anything-lisp-complete-symbol-partial-match)
(define-key lisp-interaction-mode-map "\C-\M-i" 'anything-lisp-complete-symbol-partial-match)

(anything-read-string-mode t)

;; (require 'anything-startup)

;; http://shakenbu.org/yanagi/d/?date=20120213
;; ;; バッファに対しては、カーソルを合わせただけで中身を表示する
;; ;; http://shakenbu.org/yanagi/d/?date=20120213 改
;; (defun show-buffer-move-by-move ()
;;   (interactive)
;;   (when (eq (cdr (assq 'type (anything-get-current-source))) 'buffer)
;;     (anything-execute-persistent-action)))
;; ;; (defun execute-persistent-action-move-by-move ()
;; ;;     (anything-execute-persistent-action))
;; (add-hook 'anything-move-selection-after-hook 'show-buffer-move-by-move)

;; ;; anything カーソル合った時に persistent-action 実行
;; (defun show-buffer-move-by-move-extend ()
;;   (interactive)
;;   (when (or (memq (assoc-default 'type (anything-get-current-source)) '(buffer sexp))
;;             (equal (cdr (assq 'name (anything-get-current-source))) "Imenu")
;;             (equal (cdr (assq 'name (anything-get-current-source))) "Etags")
;;             (equal (cdr (assq 'name (anything-get-current-source))) "Exuberant ctags"))
;;     (anything-execute-persistent-action))
;;   ;; (y-or-n-p (message "%s" (anything-get-current-source)))
;;   )
;; ;; (defun execute-persistent-action-move-by-move ()
;; ;;     (anything-execute-persistent-action))
;; (add-hook 'anything-move-selection-after-hook 'show-buffer-move-by-move-extend)

;; ;; (define-key global-map (kbd "M-x") 'anything-execute-extended-command)
;; (define-key global-map (kbd "M-x") 'anything-M-x)
;; (define-key global-map (kbd "C-;") 'anything-for-files)
;; (define-key global-map (kbd "C-x C-f") 'anything-find-file)
;; (define-key global-map (kbd "C-x M-f") 'anything-find-files)
;; (define-key global-map (kbd "M-y") 'anything-show-kill-ring)
;; (define-key global-map (kbd "C-x b") 'anything-bookmarks)

;; (define-key dired-mode-map (kbd "p") 'my/anything-dired)

(define-key global-map (kbd "C-'") 'anything-for-tags)
;; (define-key global-map (kbd "M-s-d") 'anything-for-document)

;; ;; anything 中に anything が起動しておかしくならないように
;; (define-key anything-map (kbd "C-;") 'abort-recursive-edit)

;; ;; (define-key anything-map (kbd "C-RET") 'anything-buffer-switch-other-window)
;; (define-key global-map (kbd "C-<return>") 'anything-buffer-switch-other-window)

;; ;; anything in dired
;; ;; http://d.hatena.ne.jp/syohex/20120105/1325770778
;; (defun my/anything-dired ()
;;   (interactive)
;;   (let ((curbuf (current-buffer)))
;;     (if (anything-other-buffer
;;          '(anything-c-source-files-in-current-dir+)
;;          " *anything-dired*")
;;         (kill-buffer curbuf))))

;;; P192-193 Anythingとタグの連携
;; AnythingからTAGSを利用しやすくするコマンド作成
(when (and (require 'anything-exuberant-ctags nil t)
           (require 'anything-gtags nil t)
           (require 'anything-yaetags nil t))
  ;; anything-for-tags用のソースを定義
  (setq anything-for-tags
        (list anything-c-source-imenu
              anything-c-source-gtags-select
              anything-c-source-yaetags-select
              ;; etagsを利用する場合はコメントを外す
              ;; anything-c-source-etags-select
              anything-c-source-exuberant-ctags-select
              ))

  ;; anything-for-tagsコマンドを作成
  (defun anything-for-tags ()
    "Preconfigured `anything' for anything-for-tags."
    (interactive)
    (anything anything-for-tags
              (thing-at-point 'symbol)
              nil nil nil "*anything for tags*")))

  ;; ;; M-tにanything-for-tagsを割り当て
  ;; (define-key global-map (kbd "C-]") 'anything-for-tags)

;; ;; anything-for-document
;; (setq anything-for-document-sources
;;       (list
;;        anything-c-source-man-pages
;;        anything-c-source-info-cl
;;        anything-c-source-info-pages
;;        anything-c-source-info-elisp
;;        anything-c-source-apropos-emacs-commands
;;        anything-c-source-apropos-emacs-functions
;;        anything-c-source-apropos-emacs-variables))

;; (defun anything-for-document ()
;;   "Preconfigured `anything' for anything-for-document."
;;   (interactive)
;;   (anything anything-for-document-sources
;;             (thing-at-point 'symbol) nil nil nil
;;             "*anything for document*"))

;; anything-font-families
;; http://d.hatena.ne.jp/mooz/20110320/p1
(require 'cl)  ; loop, delete-duplicates

(defun anything-font-families ()
  "Preconfigured `anything' for font family."
  (interactive)
  (cl-flet ((anything-mp-highlight-match () nil))
    (anything-other-buffer
     '(anything-c-source-font-families)
     "*anything font families*")))

(defun anything-font-families-create-buffer ()
  (with-current-buffer
      (get-buffer-create "*Fonts*")
    (loop for family in (sort (delete-duplicates (font-family-list)) 'string<)
          do (insert
              (propertize (concat family "\n")
                          'font-lock-face
                          (list :family family :height 2.0 :weight 'bold))))
    (font-lock-mode 1)))

(defvar anything-c-source-font-families
      '((name . "Fonts")
        (init lambda ()
              (unless (anything-candidate-buffer)
                (save-window-excursion
                  (anything-font-families-create-buffer))
                (anything-candidate-buffer
                 (get-buffer "*Fonts*"))))
        (candidates-in-buffer)
        (get-line . buffer-substring)
        (action
         ("Copy Name" lambda
          (candidate)
          (kill-new candidate))
         ("Insert Name" lambda
          (candidate)
          (with-current-buffer anything-current-buffer
            (insert candidate))))))

;; web+db press vol.58 P.88
;; 候補を表示するまでの時間。デフォルトは0.5
(setq anything-idle-delay 0.1)

;; タイプして再描写するまでの時間。デフォルトは0.1
(setq anything-input-idle-delay 0.1)

;; 候補の最大表示数。デフォルトは50
(setq anything-candidate-number-limit 100)

;; 候補が多いときに体感速度を早くする
(setq anything-quick-update t)

;; 候補選択ショートカット
;; (setq anything-enable-shortcuts 'prefix)

;; root権限でアクションを実行するときのコマンド
;; デフォルトは"su"
(setq anything-su-or-sudo "sudo")

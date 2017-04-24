;; key bindings
;; =============================================================================

;; commandキーをmetaに、optionキーをcommandに
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; C-hをBackspaceに
(keyboard-translate ?\C-h ?\C-?)

;; RET で 改行 + インデント (もとはC-j)
(define-key global-map (kbd "RET") 'newline-and-indent)
(define-key global-map (kbd "C-m") 'newline-and-indent)

;; M-k で current buffer を閉じる
(define-key global-map (kbd "M-k") 'kill-this-buffer)

;; C-a と M-m を交換
(define-key global-map (kbd "C-a") 'back-to-indentation)
(define-key global-map (kbd "M-m") 'move-beginning-of-line)

;; M-iを解放
(global-unset-key (kbd "M-i"))

;; ウィンドウ移動
;; 反対側のウィンドウにいけるように
(setq windmove-wrap-around t)
(define-key global-map (kbd "C-z") 'other-window)
;; ;; C-M-{h,j,k,l}でウィンドウ間を移動
;; (define-key global-map (kbd "C-M-k") 'windmove-up)
;; (define-key global-map (kbd "C-M-j") 'windmove-down)
;; (define-key global-map (kbd "C-M-l") 'windmove-right)
;; (define-key global-map (kbd "C-M-h") 'windmove-left)

;; フレーム移動
(define-key global-map (kbd "C-M-z") 'other-frame)

;; (define-key global-map (kbd "s-3") 'split-window-horizontally)
;; (define-key global-map (kbd "s-2") 'split-window-vertically)
;; (define-key global-map (kbd "s-1") 'delete-other-windows)
;; (define-key global-map (kbd "s-0") 'delete-window)

;; help
(define-key global-map (kbd "C-x p") 'help-for-help)
(define-key global-map (kbd "C-x ?") 'help-command)
;; (define-key global-map "\C-x\C-h" 'help-command)

;; C-x l で goto-line を実行
(define-key ctl-x-map "l" 'goto-line)

;; C-M-k で kill-whole-lien
(define-key global-map (kbd "C-M-k") 'kill-whole-line)

;; 現在行に新規行を作ってインデント
(defun open-line-above ()
  "Open a line above the line the point is at .
Then move to that line and indent accordning to mode"
  (interactive)
  (move-beginning-of-line 1)
  (newline)
  (forward-line)
  (indent-according-to-mode))
(define-key global-map (kbd "C-o") 'open-line-above)

;; 現在行のひとつ下に新規行を作ってインデント
(defun open-line-below ()
  "Open a line below the line the point is at.
Then move to that line and indent accordning to mode"
  (interactive)
  (move-end-of-line 1)
  (newline)
  (indent-according-to-mode))
(define-key global-map (kbd "C-M-o") 'open-line-below)

;; 検索中の削除
(define-key isearch-mode-map (kbd "C-h") 'isearch-del-char)

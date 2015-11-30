;; diff-mode

;; http://d.hatena.ne.jp/kitokitoki/20100516/p1
;; (add-hook 'diff-mode-hook
;;           (lambda ()
;;             (set-face-foreground 'diff-context-face "grey50")
;;             (set-face-background 'diff-header-face "black")
;;             (set-face-underline-p 'diff-header-face t)
;;             (set-face-foreground 'diff-file-header-face "MediumSeaGreen")
;;             (set-face-background 'diff-file-header-face "black")
;;             (set-face-foreground 'diff-index-face "MediumSeaGreen")
;;             (set-face-background 'diff-index-face "black")
;;             (set-face-foreground 'diff-hunk-header-face "plum")
;;             (set-face-background 'diff-hunk-header-face"black")
;;             (set-face-foreground 'diff-removed-face "pink")
;;             (set-face-background 'diff-removed-face "gray5")
;;             (set-face-foreground 'diff-added-face "light green")
;;             (set-face-foreground 'diff-added-face "white")
;;             (set-face-background 'diff-added-face "SaddleBrown")
;;             (set-face-foreground 'diff-changed-face "DeepSkyBlue1")))

(defun diff-mode-hook-for-diff-mode-key-setting ()
  (define-key diff-mode-map (kbd "C-M-n") 'diff-file-next)
  (define-key diff-mode-map (kbd "C-M-p") 'diff-file-prev)
  (define-key diff-mode-map (kbd "C-M-k") 'diff-hunk-kill)
  (define-key diff-mode-map (kbd "s-k") 'diff-file-kill))
(add-hook 'diff-mode-hook 'diff-mode-hook-for-diff-mode-key-setting)

;; ;; http://www.clear-code.com/blog/2012/4/3.html
;; diffの表示方法を変更
(defun diff-mode-setup-faces ()
  ;; 追加された行は緑で表示
  (set-face-attribute 'diff-added nil
                      :foreground "white" :background "dark green")
  ;; 削除された行は赤で表示
  (set-face-attribute 'diff-removed nil
                      :foreground "white" :background "dark red")
  ;; 文字単位での変更箇所は色を反転して強調
  (set-face-attribute 'diff-refine-change nil
                      :foreground nil :background nil
                      :weight 'bold :inverse-video t))
(add-hook 'diff-mode-hook 'diff-mode-setup-faces)

;; diffを表示したらすぐに文字単位での強調表示も行う
(defun diff-mode-refine-automatically ()
  (diff-auto-refine-mode t))
(add-hook 'diff-mode-hook 'diff-mode-refine-automatically)

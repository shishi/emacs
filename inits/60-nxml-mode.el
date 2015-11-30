;; nxml-mode

(add-to-list 'auto-mode-alist '("\\.[sx]?html?\\(\\.[a-zA-Z_]+\\)?\\'" . nxml-mode))

;; ;; ▼要拡張機能インストール▼
;; ;;; P159 HTML5をnxml-modeで編集する
;; ;; HTML5
;; (eval-after-load "rng-loc"
;;   '(add-to-list 'rng-schema-locating-files "~/.emacs.d/public_repos/html5-el/schemas.xml"))
;; (require 'whattf-dt)

;;; P160 nxml-modeの基本設定
;; </を入力すると自動的にタグを閉じる
(setq nxml-slash-auto-complete-flag t)
;; ;; M-TABでタグを補完する
;; (setq nxml-bind-meta-tab-to-complete-flag t)
;; nxml-modeでauto-complete-modeを利用する
(add-to-list 'ac-modes 'nxml-mode)
;; 子要素のインデント幅を設定する。初期値は2
(setq nxml-child-indent 2)
;; 属性値のインデント幅を設定する。初期値は4
(setq nxml-attribute-indent 4)

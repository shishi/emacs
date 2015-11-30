;; e2m
(require 'e2wm)
(global-set-key (kbd "M-+") 'e2wm:start-management)
(e2wm:add-keymap
 e2wm:pst-minor-mode-keymap
 '(("<M-left>" . e2wm:dp-code ) ; codeへ変更
   ("<M-right>"  . e2wm:dp-two) ; twoへ変更
   ("<M-up>"    . e2wm:dp-doc)  ; docへ変更
   ("<M-down>"  . e2wm:dp-dashboard) ; dashboardへ変更
   ("C-."       . e2wm:pst-history-forward-command) ; 履歴進む
   ("C-,"       . e2wm:pst-history-back-command) ; 履歴戻る
   ;; ("C-M-s"     . e2wm:my-toggle-sub) ; subの表示をトグルする
   ("M-s-s"     . e2wm:my-toggle-sub) ; subの表示をトグルする
   ;; ("prefix L"  . ielm) ; ielm を起動する（subで起動する）
   ("M-s-m"       . e2wm:pst-window-select-main-command) ; メインウインドウを選択する
   ) e2wm:prefix-key)

;; (e2wm:add-keymap
;;  e2wm:dp-doc-minor-mode-map
;;  '(("prefix I" . info)) ; infoを起動する
;;  e2wm:prefix-key)
(defun e2wm:my-toggle-sub () ;; Subをトグルする関数
  (interactive)
  (e2wm:pst-window-toggle 'sub t 'main))

;; e2wm-cvs
(require 'e2wm-vcs)
;; M-w に magit パースペクティブ変更を割り当て
(e2wm:add-keymap
 e2wm:pst-minor-mode-keymap
 '(("M-W" . e2wm:dp-magit))
 e2wm:prefix-key)

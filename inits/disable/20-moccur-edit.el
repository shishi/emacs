;; moccur-edit
(require 'moccur-edit)

;; moccur-edit-finish-editと同時にファイルを保存する
(defadvice moccur-edit-change-file
   (after save-after-moccur-edit-buffer activate)
   (save-buffer))

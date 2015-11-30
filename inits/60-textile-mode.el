;; textile-mode
(require 'textile-mode)

(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

;; quick-run
(quickrun-add-command "textile" '((:command . "redcloth")
                                  (:exec . "%c %s")
                                  (:outputter . browser)))
(add-to-list 'quickrun-file-alist '("\\.textile$" . "textile"))
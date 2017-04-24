;;; mozc

(require 'mozc)
(require 'mozc-popup)

(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
(prefer-coding-system 'utf-8-unix)
(setq quail-japanese-use-double-n t)
(setq mozc-candidate-style 'popup)

;; wdired 終了時に IME を OFF にする
(require 'wdired)
(advice-add 'wdired-finish-edit
            :after (lambda (&rest args)
                     (deactivate-input-method)))

;; helm でミニバッファの入力時に IME の状態を継承しない
(setq helm-inherit-input-method nil)

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

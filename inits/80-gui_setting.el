;; GUI settings
;; =============================================================================

(when (window-system)
  ;; (set-background-color "black")
  ;; (set-foreground-color "LightGray")
  ;; (set-cursor-color "Gray")
  ;; (set-frame-parameter nil 'alpha 95)

  ;; ;; ;;; P97-99 フォントの設定
  ;; (when (eq window-system 'ns)
  ;;   ;; asciiフォントをMenloに
  ;;   (set-face-attribute 'default nil
  ;;                       :family "Menlo"
  ;;                       :height 120)
  ;;   ;; 日本語フォントをヒラギノ明朝 Proに
  ;;   (set-fontset-font
  ;;    nil 'japanese-jisx0208
  ;;    ;; 英語名の場合
  ;;    ;; (font-spec :family "Hiragino Mincho Pro"))
  ;;    (font-spec :family "ヒラギノ明朝 Pro"))
  ;;   ;; ひらがなとカタカナをモトヤシーダに
  ;;   ;; U+3000-303F	CJKの記号および句読点
  ;;   ;; U+3040-309F	ひらがな
  ;;   ;; U+30A0-30FF	カタカナ
  ;;   (set-fontset-font
  ;;    nil '(#x3040 . #x30ff)
  ;;    (font-spec :family "NfMotoyaCedar"))
  ;;   ;; フォントの横幅を調節する
  ;;   (setq face-font-rescale-alist
  ;;         '((".*Menlo.*" . 1.0)
  ;;           (".*Hiragino_Mincho_Pro.*" . 1.2)
  ;;           (".*nfmotoyacedar-bold.*" . 1.2)
  ;;           (".*nfmotoyacedar-medium.*" . 1.2)
  ;;           ("-cdac$" . 1.3))))
  ;;
  ;; (when (eq system-type 'windows-nt)
  ;;   ;; asciiフォントをConsolasに
  ;;   (set-face-attribute 'default nil
  ;;                       :family "Consolas"
  ;;                       :height 120)
  ;;   ;; 日本語フォントをメイリオに
  ;;   (set-fontset-font
  ;;    nil
  ;;    'japanese-jisx0208
  ;;    (font-spec :family "メイリオ"))
  ;;   ;; フォントの横幅を調節する
  ;;   (setq face-font-rescale-alist
  ;;         '((".*Consolas.*" . 1.0)
  ;;           (".*メイリオ.*" . 1.15)
  ;;           ("-cdac$" . 1.3))))

  (when (eq system-type 'darwin)
    ;; ウィンドウサイズ
    (setq initial-frame-alist
          (append '((top . 0) ;; フレームの Y 位置(ピクセル数)
                    (left . 105) ;; フレームの X 位置(ピクセル数)
                    (width . 210) ;; フレーム幅(文字数)
                    (height . 60) ;; フレーム高(文字数)
                    ) initial-frame-alist))
    (setq default-frame-alist initial-frame-alist)
    (setq default-frame-alist
          (append '((top . 0) ;; フレームの Y 位置(ピクセル数)
                    (left . 50) ;; フレームの X 位置(ピクセル数)
                    (width . 210) ;; フレーム幅(文字数)
                    (height . 60) ;; フレーム高(文字数)
                    ) default-frame-alist))

    ;; フォントを出来る限り揃える
    (when (>= emacs-major-version 23)
      ;; (setq fixed-width-use-QuickDraw-for-ascii t)
      (setq mac-allow-anti-aliasing t)
      (set-face-attribute 'default nil
                          :family "monaco"
                          :height 130)
      (set-fontset-font
       (frame-parameter nil 'font)
       'japanese-jisx0208
       '("Hiragino Maru Gothic Pro" . "iso10646-1"))
      (set-fontset-font
       (frame-parameter nil 'font)
       'japanese-jisx0212
       '("Hiragino Maru Gothic Pro" . "iso10646-1"))))

  (when (eq system-type 'gnu/linux)
    (set-face-attribute 'default nil
                        :family "Monaco"  ;; 英数
                        :height 110)
    (set-fontset-font
     (frame-parameter nil 'font)
     'japanese-jisx0208
     '("IPAGothic" . "iso10646-1"))
    (set-fontset-font
     (frame-parameter nil 'font)
     'japanese-jisx0212
     '("IPAGothic" . "iso10646-1"))
    ;; ;; ウィンドウサイズ
    ;; (setq initial-frame-alist
    ;;       (append '((top . 0) ;; フレームの Y 位置(ピクセル数)
    ;;                 (left . 10) ;; フレームの X 位置(ピクセル数)
    ;;                 (width . 360) ;; フレーム幅(文字数)
    ;;                 (height . 60) ;; フレーム高(文字数)
    ;;                 ) initial-frame-alist))
    ;; (setq default-frame-alist
    ;;       (append '((top . 0) ;; フレームの Y 位置(ピクセル数)
    ;;                 (left . 20) ;; フレームの X 位置(ピクセル数)
    ;;                 (width . 360) ;; フレーム幅(文字数)
    ;;                 (height . 60) ;; フレーム高(文字数)
    ;;                 ) default-frame-alist)))

    (when (eq system-type 'cygwin)
    (set-face-attribute 'default nil
                        :family "Ricty"  ;; 英数
                        :height 130)
    (set-fontset-font
     (frame-parameter nil 'font)
     'japanese-jisx0208
     '("Ricty Diminished" . "iso10646-1"))
    (set-fontset-font
     (frame-parameter nil 'font)
     'japanese-jisx0212
     '("Ricty Diminished" . "iso10646-1"))
    ;; ウィンドウサイズ
    (setq initial-frame-alist
          (append '((top . 0) ;; フレームの Y 位置(ピクセル数)
                    (left . 10) ;; フレームの X 位置(ピクセル数)
                    (width . 360) ;; フレーム幅(文字数)
                    (height . 60) ;; フレーム高(文字数)
                    ) initial-frame-alist))
    (setq default-frame-alist
          (append '((top . 0) ;; フレームの Y 位置(ピクセル数)
                    (left . 20) ;; フレームの X 位置(ピクセル数)
                    (width . 360) ;; フレーム幅(文字数)
                    (height . 60) ;; フレーム高(文字数)
                    ) default-frame-alist)))))

(defun set-alpha (alpha-num)
  "set frame parameter 'alpha"
  (interactive "nAlpha: ")
  (set-frame-parameter nil 'alpha (cons alpha-num '(90))))

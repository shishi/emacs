;; php-mode
;; (require 'nxhtml-autostart)
(require 'php-mode)

(add-to-list 'auto-mode-alist '("\\.php[345]?$" . php-mode))
(add-to-list 'interpreter-mode-alist '("php" . php-mode))

(defun php-mode-hook-for-php-mode-setting ()
  ;; php-manual-search
  (setq php-search-url "http://www.php.net/ja/")
  (setq php-manual-url "http://www.php.net/manual/ja/")
  (setq php-manual-path "~/.emacs.d/share/php_manual")

  ;; PEAR規約のインデント設定にする
  (setq php-mode-force-pear t)

  ;; ここが c-basic-offset なのは php-mode は cc-mode を継承しているため
  ;; http://stackoverflow.com/questions/168621/php-mode-for-emacs
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  ;; (c-set-offset 'case-label '+) ; switch文のcaseラベル
  (c-set-offset 'arglist-intro '+) ; 配列の最初の要素が改行した場合
  (c-set-offset 'arglist-close 0) ; 配列の閉じ括弧
  (c-set-offset 'arglist-cont-nonempty' 4)
  )

(add-hook 'php-mode-hook 'php-mode-hook-for-php-mode-setting)
(add-hook 'php-mode-hook 'flycheck-mode)

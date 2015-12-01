;; cperl-mode
(autoload 'perl-mode "cperl-mode" "alternate mode for editing Perl programs" t)
(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\|t\\|cgi\\)\\'" . cperl-mode))

(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))

;; cperl-mode is preferred to perl-mode
;; "Brevity is the soul of wit" <foo at acm.org>
(defalias 'perl-mode 'cperl-mode)
(setq cperl-indent-level 4
      cperl-continued-statement-offset 4
      cperl-close-paren-offset -4
      cperl-label-offset -4
      cperl-comment-column 40
      cperl-highlight-variables-indiscriminately t
      cperl-indent-parens-as-block t
      cperl-tab-always-indent nil
      cperl-font-lock t
      cperl-auto-newline t
      )

;; mode-compile
(eval-after-load "mode-compile"
  '(progn
     (defun my-perl-compile ()
       (let* ((testfile-p (string-match "\\.t$" (buffer-name)) )
              ;; (perl-command   (if testfile-p "emacs-prove" "perl"))
              (perl-command   (if testfile-p "prove" "perl"))
              (perl-dbg-flags (if testfile-p "-vlc" "-w")))
         (mc--shell-compile perl-command perl-dbg-flags
                            perl-compilation-error-regexp-alist)))
     (setq mode-compile-modes-alist
           (append '((cperl-mode . (my-perl-compile kill-compilation))
                     (perl-mode  . (my-perl-compile kill-compilation)))
                   mode-compile-modes-alist))))

;; perl tidy
(defun perltidy-region ()
  "Run perltidy on the current region."
  (interactive)
  (save-excursion
    (shell-command-on-region (point) (mark) "perltidy -qt" nil t)))
(defun perltidy-defun ()
  "Run perltidy on the current defun."
  (interactive)
  (save-excursion (mark-defun)
                  (perltidy-region)))
(defun cperl-mode-hook-for-perltidy ()
  (local-set-key (kbd "C-c t") 'perltidy-region)
  (local-set-key (kbd "C-c C-t") 'perltidy-defun))
;; (global-set-key "?C-ct" 'perltidy-region)
;; (global-set-key "?C-c?C-t" 'perltidy-defun)
(add-hook  'cperl-mode-hook 'cperl-mode-hook-for-perltidy)

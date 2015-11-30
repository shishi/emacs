;; ediff

(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; 変更箇所が増えても良いように
(setq-default ediff-auto-refine-limit 100000)

(defun diff-with-original (ediff)
  "Examin diff of current buffer with original file.
        If with prefix, do interactive merge using `ediff-with-original'. "
  (interactive "P")
  (if ediff
      (ediff-with-original)
    ;; simple diff view with diff-mode
    (require 'ediff)
    (let ((diff-buf (get-buffer-create (format "*diff %s*" (buffer-file-name))))
          (ediff-diff-options "-u") ;; is it your favourite?
          (tmpfile (ediff-make-temp-file (current-buffer))))
      (save-excursion
        (set-buffer diff-buf)
        (setq buffer-read-only nil)
        (buffer-disable-undo)
        (erase-buffer))
      (ediff-make-diff2-buffer diff-buf
                               (buffer-file-name)
                               tmpfile)
      (delete-file tmpfile)
      (set-buffer diff-buf)
      (if (< (buffer-size) 1)
          (message "No differences with original file.")
        (condition-case nil
            (progn
              (require 'diff-mode)
              (diff-mode))
          (error))
        (goto-char 1)
        (pop-to-buffer diff-buf)))))

(defun ediff-with-original ()
  (interactive)
  ;; interactive merge using ediff
  (let ((file buffer-file-name)
        (buf (current-buffer))
        (orig-buf (get-buffer-create (concat "*orig " buffer-file-name "*"))))
    (set-buffer orig-buf)
    (setq buffer-read-only nil)
    (buffer-disable-undo)
    (erase-buffer)
    (insert-file file)
    (setq buffer-read-only t)
    (set-buffer-modified-p nil)
    (ediff-buffers orig-buf buf)))
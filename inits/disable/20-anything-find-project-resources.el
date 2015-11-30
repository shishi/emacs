;; anything-find-project-resources
(require 'anything-find-project-resources)
(define-key global-map (kbd "C-o") 'anything-find-resource)

(setq anything-find-resource--project-root-files
      (append
       (list
        "Capfile"
        "Gemfile"
        "Guardfile")
       anything-find-resource--project-root-files))

(setq ap:project-files-filters
      (list
       (lambda (files)
         (remove-if 'file-directory-p files)
         (remove-if '(lambda (file) (string-match-p "~$" file)) files))))
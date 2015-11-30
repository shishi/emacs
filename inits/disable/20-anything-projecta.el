;; anything-project
(require 'anything-project)
(define-key global-map (kbd "C-o") 'anything-project)
(ap:add-project
 :name 'rails
 :look-for '("Rakefile" "Gemfile")
 :exclude-regexp '("/tmp" "/log" ) ; can be regexp or list of regexp
)

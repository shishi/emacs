;;; Compiled snippets and support files for `f90-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'f90-mode
                     '(("wr" "write (${1:*},${2:*}) $0\n" "write (*,*)" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/wr" nil nil)
                       ("while" "do while (${1:condition})\n  $0\nend do\n" "while ... end while ..." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/while" nil nil)
                       ("where" "where (${1:condition})\n  $0\nend where\n" "where ... end where ..." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/where" nil nil)
                       ("until" "do\n  $0\n  if (${1:condition}) exit\nend do\n" "until ... end until ..." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/until" nil nil)
                       ("subroutine" "subroutine ${1:name} (${2:arg})\n  ${3:real, intent(in) :: $2}\n\n  $0\nend subroutine $1\n" "subroutine .. end subroutine" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/subroutine" nil nil)
                       ("re" "read (${1:*},${2:*}) $0\n" "read (*,*)" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/re" nil nil)
                       ("pure subroutine" "pure subroutine ${1:name} (${2:arg})\n  ${3:real, intent(in) :: $2}\n\n  $0\nend subroutine $1\n" "pure subroutine .. end subroutine" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/pures" nil nil)
                       ("pure func" "pure function ${1:name} (${2:arg})\n  ${3:real} :: $1\n  ${4:real, intent(in)} :: $2\n\n  $0\n\nend function $1\n" "pure function ... end function ..." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/puref" nil nil)
                       ("program" "program ${1:name}\n  ${2:implicit none}\n\n  $0\n\nend program $1\n" "program .. end program" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/program" nil nil)
                       ("pa" "parameter $0\n" "parameter" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/pa" nil nil)
                       ("module" "module ${1:name}\n\ncontains\n\n  $0\n\nend module $1\n" "module ... end module ..." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/module" nil nil)
                       ("l" "logical $0\n" "logical" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/l" nil nil)
                       ("intr" "intrinsic $0\n" "intrinsic" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/intr" nil nil)
                       ("inc" "include $0\n" "include" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/inc" nil nil)
                       ("in" "implicit none\n" "implicit none" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/in" nil nil)
                       ("if" "if ( ${1:condition} ) then\n   $0\nend if\n" "if then end if" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/if" nil nil)
                       ("function" "function ${1:name} (${2:arg})\n  ${3:real} :: $1\n  ${4:real, intent(in)} :: $2\n\n  $0\n\nend function $1\n" "function ... end function ..." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/function" nil nil)
                       ("forall" "forall ($1)\n  $0\nend forall" "forall ... end forall ..." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/forall" nil nil)
                       ("dp" "double precision $0\n" "double precision" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/dp" nil nil)
                       ("do" "do $1\n  $0\nend do\n" "do ... end do ..." nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/do" nil nil)
                       ("dc" "double complex $0\n" "double complex" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/dc" nil nil)
                       ("cx" "complex $0\n" "complex" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/cx" nil nil)
                       ("ch" "character $0\n" "character" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/ch" nil nil)
                       ("c" "continue $0\n" "continue" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/c" nil nil)
                       ("bd" "block data $0\n" "block data" nil nil nil "c:/Users/shishi/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/f90-mode/bd" nil nil)))


;;; Do not edit! File generated at Mon Jul  2 21:28:03 2018

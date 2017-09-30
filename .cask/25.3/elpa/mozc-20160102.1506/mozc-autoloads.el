;;; mozc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "mozc" "mozc.el" (22991 8254 200640 890000))
;;; Generated autoloads from mozc.el

(defvar mozc-mode-map (let ((map (make-sparse-keymap))) (prog1 map (mapc (lambda (command) (mapc (lambda (key-sequence) (and (= (length key-sequence) 1) (integerp (aref key-sequence 0)) (define-key map key-sequence command))) (where-is-internal command global-map))) '(execute-extended-command toggle-input-method)) (mapc (lambda (event) (define-key map (vector event) nil)) '(delete-frame iconify-frame make-frame-visible select-window switch-frame)) (define-key map [t] #'mozc-handle-event))) "\
Keymap for function `mozc-mode'.")

(defvar mozc-mode nil "\
Mode variable of function `mozc-mode'.
Non-nil means function `mozc-mode' is enabled.")

(autoload 'mozc-mode "mozc" "\
Minor mode to input Japanese text with Mozc.
Toggle the mode if ARG is not given, or enable/disable the mode
according to ARG.

Hooks in `mozc-mode-hook' are run when the mode gets enabled.

Return non-nil when enabled, otherwise nil.


Tips for customizations

By the design policy, Mozc maintains most of user settings on
the server side.  Clients, including mozc.el, of Mozc do not
have many user settings on their side.

You can change a variety of user settings through a GUI command
line tool 'mozc_tool' which must be shipped with the mozc server.
The command line tool may be installed to /usr/lib/mozc or /usr/lib
directory.
You need a command line option '--mode=config_dialog' as the
following.

  $ /usr/lib/mozc/mozc_tool --mode=config_dialog

Then, it shows a GUI dialog to edit your user settings.

Note these settings are effective for all the clients of Mozc,
not limited to mozc.el.

Only the customizable item on mozc.el side is the key map for kana
input.  When you've chosen kana input rather than roman input,
a kana key map is effective, and you can customize it.

There are two built-in kana key maps, one for 106 JP keyboards and
one for 101 US keyboards.  You can choose one of them by setting
`mozc-keymap-kana' variable.

  ;; for 106 JP keyboards
  (setq mozc-keymap-kana mozc-keymap-kana-106jp)

  ;; for 101 US keyboards
  (setq mozc-keymap-kana mozc-keymap-kana-101us)

For advanced users, there are APIs for more detailed customization
or even creating your own key map.
See `mozc-keymap-get-entry', `mozc-keymap-put-entry',
`mozc-keymap-remove-entry', and `mozc-keymap-make-keymap' and
`mozc-keymap-make-keymap-from-flat-list'.

\(fn &optional ARG)" t nil)

(autoload 'mozc-keymap-make-keymap "mozc" "\
Create a new empty keymap and return it.

\(fn)" nil nil)

(autoload 'mozc-keymap-make-keymap-from-flat-list "mozc" "\
Create a new keymap and fill it with entries in LIST.
LIST must be a flat list which contains keys and mapped strings alternately.

\(fn LIST)" nil nil)

(autoload 'mozc-keymap-fill-entries-from-flat-list "mozc" "\
Fill KEYMAP with entries in LIST and return KEYMAP.
KEYMAP must be a key table from keycodes to mapped strings.
LIST must be a flat list which contains keys and mapped strings alternately.

\(fn KEYMAP LIST)" nil nil)

(autoload 'mozc-keymap-get-entry "mozc" "\
Return a mapped string if the entry for the keycode exists.
Otherwise, the default value, which must be a string.
KEYMAP must be a key table from keycodes to mapped strings.
KEYCODE must be an integer representing a key code to look up.
DEFAULT is returned if it's a string and no entry for KEYCODE is found.

\(fn KEYMAP KEYCODE &optional DEFAULT)" nil nil)

(autoload 'mozc-keymap-put-entry "mozc" "\
Add a new key mapping to a keymap.
KEYMAP must be a key table from keycodes to mapped strings.
KEYCODE must be an integer representing a key code.
MAPPED-STRING must be a string representing a preedit string to be inserted.

\(fn KEYMAP KEYCODE MAPPED-STRING)" nil nil)

(autoload 'mozc-keymap-remove-entry "mozc" "\
Remove an entry from a keymap.  If no entry for keycode exists, do nothing.
KEYMAP must be a key table from keycodes to mapped strings.
KEYCODE must be an integer representing a key code to remove.

\(fn KEYMAP KEYCODE)" nil nil)

(defvar mozc-keymap-kana-106jp (mozc-keymap-make-keymap-from-flat-list '(49 "ぬ" 50 "ふ" 51 "あ" 52 "う" 53 "え" 54 "お" 55 "や" 56 "ゆ" 57 "よ" 48 "わ" 45 "ほ" 94 "へ" 124 "ー" 113 "た" 119 "て" 101 "い" 114 "す" 116 "か" 121 "ん" 117 "な" 105 "に" 111 "ら" 112 "せ" 64 "゛" 91 "゜" 97 "ち" 115 "と" 100 "し" 102 "は" 103 "き" 104 "く" 106 "ま" 107 "の" 108 "り" 59 "れ" 58 "け" 93 "む" 122 "つ" 120 "さ" 99 "そ" 118 "ひ" 98 "こ" 110 "み" 109 "も" 44 "ね" 46 "る" 47 "め" 92 "ろ" 35 "ぁ" 69 "ぃ" 36 "ぅ" 37 "ぇ" 38 "ぉ" 39 "ゃ" 40 "ゅ" 41 "ょ" 126 "を" 90 "っ" 60 "、" 62 "。" 63 "・" 123 "「" 125 "」" 80 "『" 43 "』" 95 "ろ" 70 "ゎ" 84 "ヵ" 42 "ヶ")) "\
Key mapping from key codes to Kana strings based on 106-JP keyboard.")

(defvar mozc-keymap-kana-101us (mozc-keymap-make-keymap-from-flat-list '(49 "ぬ" 50 "ふ" 51 "あ" 52 "う" 53 "え" 54 "お" 55 "や" 56 "ゆ" 57 "よ" 48 "わ" 45 "ほ" 61 "へ" 96 "ろ" 113 "た" 119 "て" 101 "い" 114 "す" 116 "か" 121 "ん" 117 "な" 105 "に" 111 "ら" 112 "せ" 91 "゛" 93 "゜" 92 "む" 97 "ち" 115 "と" 100 "し" 102 "は" 103 "き" 104 "く" 106 "ま" 107 "の" 108 "り" 59 "れ" 39 "け" 122 "つ" 120 "さ" 99 "そ" 118 "ひ" 98 "こ" 110 "み" 109 "も" 44 "ね" 46 "る" 47 "め" 35 "ぁ" 69 "ぃ" 36 "ぅ" 37 "ぇ" 94 "ぉ" 38 "ゃ" 42 "ゅ" 40 "ょ" 41 "を" 90 "っ" 60 "、" 62 "。" 63 "・" 123 "「" 125 "」" 80 "『" 58 "』" 95 "ー" 124 "ー" 70 "ゎ" 86 "ゐ" 43 "ゑ" 84 "ヵ" 34 "ヶ")) "\
Key mapping from key codes to Kana strings based on 101-US keyboard.")

(defvar mozc-keymap-kana mozc-keymap-kana-106jp "\
The default key mapping for Kana input method.")

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; mozc-autoloads.el ends here

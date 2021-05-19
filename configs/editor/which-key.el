;; This advices an emacs built-in function so the variable must be set before loading which-key
;; https://github.com/justbur/emacs-which-key#keymap-based-replacement
(setq which-key-enable-extended-define-key t)
(require 'which-key)
(which-key-mode)
(which-key-setup-side-window-bottom)
(setq which-key-show-early-on-C-h t)


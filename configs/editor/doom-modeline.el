;;; doom-modeline.el --- Configure the doom-modeline

;;; Commentary:
;; 

;;; Code:
(use-package doom-modeline
  :ensure t
  :ensure minions
  :ensure nyan-mode

  :config
  (minions-mode 1)
  (doom-modeline-mode 1)
  (nyan-mode 1)
  (nyan-start-animation)
  (if (not window-system)
      ;; change the asci face when runing in therminal
      (setq nyan-cat-face-number 4))
  (setq
   ;; Configuration taken from the home page https://seagle0128.github.io/doom-modeline/
   ;; How tall the mode-line should be. It's only respected in GUI.
   ;; If the actual char height is larger, it respects the actual height.
   doom-modeline-height 0

   ;; How wide the mode-line bar should be. It's only respected in GUI.
   doom-modeline-bar-width 4

   ;; Whether to use hud instead of default bar. It's only respected in GUI.
   doom-modeline-hud nil

   ;; The limit of the window width.
   ;; If `window-width' is smaller than the limit, some information won't be
   ;; displayed. It can be an integer or a float number. `nil' means no limit."
   doom-modeline-window-width-limit 0.25

   ;; How to detect the project root.
   ;; nil means to use `default-directory'.
   ;; The project management packages have some issues on detecting project root.
   ;; e.g. `projectile' doesn't handle symlink folders well, while `project' is unable
   ;; to hanle sub-projects.
   ;; You can specify one if you encounter the issue.
   doom-modeline-project-detection 'auto

   ;; Determines the style used by `doom-modeline-buffer-file-name'.
   ;;
   ;; Given ~/Projects/FOSS/emacs/lisp/comint.el
   ;;   auto => emacs/lisp/comint.el (in a project) or comint.el
   ;;   truncate-upto-project => ~/P/F/emacs/lisp/comint.el
   ;;   truncate-from-project => ~/Projects/FOSS/emacs/l/comint.el
   ;;   truncate-with-project => emacs/l/comint.el
   ;;   truncate-except-project => ~/P/F/emacs/l/comint.el
   ;;   truncate-upto-root => ~/P/F/e/lisp/comint.el
   ;;   truncate-all => ~/P/F/e/l/comint.el
   ;;   truncate-nil => ~/Projects/FOSS/emacs/lisp/comint.el
   ;;   relative-from-project => emacs/lisp/comint.el
   ;;   relative-to-project => lisp/comint.el
   ;;   file-name => comint.el
   ;;   buffer-name => comint.el<2> (uniquify buffer name
   ;;
   ;; If you are experiencing the laggy issue, especially while editing remote files
   ;; with tramp, please try `file-name' style.
   ;; Please refer to https://github.com/bbatsov/projectile/issues/657.
   doom-modeline-buffer-file-name-style 'auto

   ;; Whether display icons in the mode-line.
   ;; While using the server mode in GUI, should set the value explicitly.
   doom-modeline-icon (display-graphic-p)

   ;; Whether display the icon for `major-mode'. It respects `doom-modeline-icon'.
   doom-modeline-major-mode-icon t

   ;; Whether display the colorful icon for `major-mode'.
   ;; It respects `all-the-icons-color-icons'.
   doom-modeline-major-mode-color-icon t

   ;; Whether display the icon for the buffer state. It respects `doom-modeline-icon'.
   doom-modeline-buffer-state-icon t

   ;; Whether display the modification icon for the buffer.
   ;; It respects `doom-modeline-icon' and `doom-modeline-buffer-state-icon'.
   doom-modeline-buffer-modification-icon t

   ;; Whether to use unicode as a fallback (instead of ASCII) when not using icons.
   doom-modeline-unicode-fallback nil

   ;; Whether display the buffer name.
   doom-modeline-buffer-name t

   ;; Whether display the minor modes in the mode-line.
   doom-modeline-minor-modes t

   ;; If non-nil, a word count will be added to the selection-info modeline segment.
   doom-modeline-enable-word-count nil

   ;; Major modes in which to display word count continuously.
   ;; Also applies to any derived modes. Respects `doom-modeline-enable-word-count'.
   ;; If it brings the sluggish issue, disable `doom-modeline-enable-word-count' or
   ;; remove the modes from `doom-modeline-continuous-word-count-modes'.
   doom-modeline-continuous-word-count-modes '(markdown-mode gfm-mode org-mode)

   ;; Whether display the buffer encoding.
   doom-modeline-buffer-encoding t

   ;; Whether display the indentation information.
   doom-modeline-indent-info nil

   ;; If non-nil, only display one number for checker information if applicable.
   doom-modeline-checker-simple-format t

   ;; The maximum number displayed for notifications.
   doom-modeline-number-limit 99

   ;; The maximum displayed length of the branch name of version control.
   doom-modeline-vcs-max-length 12

   ;; Whether display the workspace name. Non-nil to display in the mode-line.
   doom-modeline-workspace-name t

   ;; Whether display the perspective name. Non-nil to display in the mode-line.
   doom-modeline-persp-name t

   ;; If non nil the default perspective name is displayed in the mode-line.
   doom-modeline-display-default-persp-name nil

   ;; If non nil the perspective name is displayed alongside a folder icon.
   doom-modeline-persp-icon t

   ;; Whether display the `lsp' state. Non-nil to display in the mode-line.
   doom-modeline-lsp t

   ;; Whether display the GitHub notifications. It requires `ghub' package.
   doom-modeline-github nil

   ;; The interval of checking GitHub.
   doom-modeline-github-interval (* 30 60)

   ;; Whether display the modal state icon.
   ;; Including `evil', `overwrite', `god', `ryo' and `xah-fly-keys', etc.
   doom-modeline-modal-icon t

   ;; Whether display the gnus notifications.
   doom-modeline-gnus t

   ;; Whether gnus should automatically be updated and how often (set to 0 or smaller than 0 to disable
   doom-modeline-gnus-timer 2

   ;; Wheter groups should be excludede when gnus automatically being updated.
   doom-modeline-gnus-excluded-groups '("dummy.group")

   ;; Whether display the IRC notifications. It requires `circe' or `erc' package.
   doom-modeline-irc t

   ;; Function to stylize the irc buffer names.
   doom-modeline-irc-stylize 'identity

   ;; Whether display the environment version.
   doom-modeline-env-version t
   ;; Or for individual languages
   doom-modeline-env-enable-python t
   doom-modeline-env-enable-ruby t
   doom-modeline-env-enable-perl t
   doom-modeline-env-enable-go t
   doom-modeline-env-enable-elixir t
   doom-modeline-env-enable-rust t

   ;; Change the executables to use for the language version string
   doom-modeline-env-python-executable "python" ; or `python-shell-interpreter'
   doom-modeline-env-ruby-executable "ruby"
   doom-modeline-env-perl-executable "perl"
   doom-modeline-env-go-executable "go"
   doom-modeline-env-elixir-executable "iex"
   doom-modeline-env-rust-executable "rustc"

   ;; What to display as the version while a new one is being loaded
   doom-modeline-env-load-string "..."

   ;; Hooks that run before/after the modeline version string is updated
   doom-modeline-before-update-env-hook nil
   doom-modeline-after-update-env-hook nil)

  (set-face-attribute 'mode-line nil :family "JetBrains Mono" :height 100)
  (set-face-attribute 'mode-line-inactive nil :family "JetBrains Mono" :height 100)
)
;;; doom-modeline.el ends here

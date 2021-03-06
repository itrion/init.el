(require 'dracula-theme)
(load-theme 'dracula t)
(set-face-attribute 'default nil
		    :family "Fira Code"
		    :height 140)

(put 'downcase-region 'disabled nil)

(setq create-lockfiles nil
      delete-by-moving-to-trash t
      global-hl-line-mode t
      inhibit-startup-screen t
      line-number-mode t
      scroll-bar-mode -1
      shift-select-mode t
      auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/" t))
      backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      ediff-window-setup-function 'ediff-setup-windows-plain ; open edif in the same window
      )
;; Setting this variable directly does not take effect;
;; either customize it (see the info node ‘Easy Customization’)
;; or call the function ‘menu-bar-mode’.
(menu-bar-mode -1)

;; Setting this variable directly does not take effect;
;; either customize it (see the info node ‘Easy Customization’)
;; or call the function ‘tool-bar-mode’.
(tool-bar-mode -1)
(global-display-line-numbers-mode 1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

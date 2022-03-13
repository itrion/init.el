;;; emacs.el --- configure emacs general behaviour

;;; Commentary:
;;

;;; Code:
(require 'dracula-theme)
(load-theme 'dracula t)
(set-face-attribute 'default nil
		    :family "Fira Code"
		    :height 140)

(put 'downcase-region 'disabled nil)

(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/" t))
      backup-by-copying t    ; Don't delink hardlinks
      backup-directory-alist '(("." . "~/.emacs.d/backup"))
      create-lockfiles nil
      delete-by-moving-to-trash t
      delete-old-versions t  ; Automatically delete excess backups
      ediff-window-setup-function 'ediff-setup-windows-plain ; open edif in the same window
      global-hl-line-mode t
      inhibit-startup-screen t
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      line-number-mode t
      shift-select-mode t
      version-control t      ; Use version numbers on backups
      )

(setq-default display-line-numbers-width    4
              completion-ignore-case        t            ;; Ignore case when completing
              )

;; Setting these variables directly does not take effect;
;; either customize it (see the info node ‘Easy Customization’)
;; or call the functions
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(fset 'yes-or-no-p 'y-or-n-p)	;; Set yes or no to y/n

(global-display-line-numbers-mode 1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(add-hook 'prog-mode-hook (lambda ()
                            (rainbow-delimiters-mode 1)
                            (display-line-numbers-mode 1)))

;;; emacs.el ends here

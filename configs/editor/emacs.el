(set-face-attribute 'default nil
		    :family "Fira Code"
		    :height 140)

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
      )
;; Setting this variable directly does not take effect;
;; either customize it (see the info node ‘Easy Customization’)
;; or call the function ‘menu-bar-mode’.
(menu-bar-mode -1)

;; Setting this variable directly does not take effect;
;; either customize it (see the info node ‘Easy Customization’)
;; or call the function ‘tool-bar-mode’.
(tool-bar-mode -1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(global-set-key (kbd "s-k") 'kill-this-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c b <up>") 'windmove-up)
(global-set-key (kbd "C-c b <down>") 'windmove-down)
(global-set-key (kbd "C-c b <left>") 'windmove-left)
(global-set-key (kbd "C-c b <right>") 'windmove-right)

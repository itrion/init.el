;;; emacs.el --- configure emacs general behaviour

;;; Commentary:
;;

;;; Code:
(load-theme 'misterioso t)
(set-face-attribute 'default nil
		    :family "JetBrains Mono"
		    :height 120
		    :weight 'light
		    )

(put 'downcase-region 'disabled nil)

(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/" t))
      backup-by-copying t    ; Don't delink hardlinks
      backup-directory-alist '(("." . "~/.emacs.d/backup"))
      undo-tree-history-directory-alist backup-directory-alist
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
(global-display-line-numbers-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)	;; Set yes or no to y/n
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-hook 'prog-mode-hook (lambda ()
                            (rainbow-delimiters-mode 1)
                            (display-line-numbers-mode 1)))
(use-package helpful
  :bind (("C-h f" . #'helpful-callable)
	 ("C-h v" . #'helpful-variable)
	 ("C-h k" . #'helpful-key)
	 ("C-c C-d" . #'helpful-at-point)))

(use-package golden-ratio
  :bind (("M-m t g" . 'golden-ratio-mode))
  :config (golden-ratio-mode 1))

(use-package visual-regexp
  :ensure visual-regexp-steroids
  :bind (("C-c r" . vr/replace)
	 ("C-c q" . vr/query-replace)
	 ;;("C-r" . vr/isearch-backward)
	 ;;("C-s" . vr/isearch-forward)
	 ))

(use-package undo-tree
  :config
  (global-undo-tree-mode))

;; This advices an emacs built-in function so the variable must be set before loading which-key
;; https://github.com/justbur/emacs-which-key#keymap-based-replacement
(use-package which-key
  :config
  (which-key-mode)
  (which-key-setup-side-window-bottom)
  (which-key-add-key-based-replacements  "M-m a" "applications")
  (which-key-add-key-based-replacements  "M-m e" "elisp/errors")
  (which-key-add-key-based-replacements  "M-m p" "projects")
  (which-key-add-key-based-replacements  "M-m t" "toggles")

  (setq which-key-show-early-on-C-h t
	which-key-enable-extended-define-key t))

(use-package htmlize)


(global-set-key (kbd "M-m e e b") 'eval-buffer)
(global-set-key (kbd "M-m e e r") 'eval-region)

(global-set-key (kbd "M-m t l") 'toggle-truncate-lines)

(global-set-key (kbd "s-k") 'kill-this-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
;;; emacs.el ends here

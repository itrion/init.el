;;; init.el --- My personal emacs configuration

;;; Commentary:
;; 

;;; Code:
(require 'package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))

  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;; (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))

(setq package-list
      '(all-the-icons
	auto-dictionary
	company
	dockerfile-mode
	doom-modeline
	flycheck
	flyspell-correct-helm
	git-timemachine
	golden-ratio
	helm
	helm-descbinds
	helm-projectile
	helm-themes
	helpful
	htmlize
	magit
	markdown-mode
	org-bullets
	org-journal
	powerline
	projectile
	rainbow-delimiters
	rainbow-identifiers
	transpose-frame
	undo-tree
	visual-regexp
	visual-regexp-steroids
	which-key
	;; Themes
	dracula-theme
	humanoid-themes
	))

(when  (< emacs-major-version 27)
  (package-initialize))

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(which-key visual-regexp-steroids visual-regexp undo-tree rainbow-delimiters powerline org-bullets magit htmlize helm-projectile helm-descbinds helm git-timemachine flycheck dockerfile-mode dracula-theme company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(mapc 'load (file-expand-wildcards "~/.emacs.d/configs/editor/*.el"))
(mapc 'load (file-expand-wildcards "~/.emacs.d/configs/programming/*.el"))

;; Keybindings must be loaded after all the config packages to ensure everything is configured and defined before
(load "~/.emacs.d/keybindings.el")
(put 'narrow-to-region 'disabled nil)

;;; init.el ends here

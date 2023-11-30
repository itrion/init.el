;;; init.el --- My personal emacs configuration

;;; Commentary:

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
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))

(setq package-list '(
		     use-package
		     rainbow-delimiters
		     rainbow-identifiers
		     all-the-icons
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

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(helm-projectile flyspell-correct-helm helm helm-themes which-key visual-regexp-steroids use-package undo-tree rainbow-identifiers rainbow-delimiters org-journal org-bullets org-appear nyan-mode minions magit htmlize helpful golden-ratio git-timemachine doom-modeline auto-dictionary all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; This line is to prevent this error
;; File mode specification error: (void-variable flyspell-delayed-commands)
;; Which seems to be in used by org-babel but apparently nobody is defining its value)
(defvar flyspell-delayed-commands nil)

;; unset keybinding to use it in the configs
(global-unset-key (kbd "M-m"))

(mapc 'load (file-expand-wildcards "~/.emacs.d/configs/editor/*.el"))
(mapc 'load (file-expand-wildcards "~/.emacs.d/configs/programming/*.el"))

(put 'narrow-to-region 'disabled nil)

;;; init.el ends here

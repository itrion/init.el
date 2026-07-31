;;; -*- lexical-binding: t; -*-
;;; org.el --- configure org-mode

;;; Commentary:
;;

;;; Code:

(setq org-log-into-drawer "LOGBOOK"
      org-hide-leading-stars t
      org-hide-emphasis-markers t
      org-hide-block-startup t
      org-startup-indented t
      org-startup-folded t
      org-default-notes-file "~/notepad/notepad.org"
      initial-buffer-choice  org-default-notes-file
      org-journal-dir "~/notepad/journal"
      org-journal-file-type :Monthly
      )

(use-package org
  :ensure org-bullets
  :ensure org-appear
  :ensure org-journal
  :config
  (add-hook 'org-mode-hook (lambda () (progn (org-bullets-mode 1)
					     (display-line-numbers-mode 0)
					     (org-appear-mode 1))))
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((shell . t)))

  ;; Configure Org Babel to use shell with proper environment
  ;; Option 1: Use zsh instead (which will load your environment)
  (setq org-babel-sh-command "/bin/zsh"
	shell-file-name "/bin/zsh"
	explicit-shell-file-name "/bin/zsh")
  
  ;; Option 2: If you really need ksh, uncomment the line below and comment the above
  ;; (setq org-babel-sh-command "/bin/zsh -c 'source ~/.zshrc && exec ksh \"$@\"' --")
  
  ;; Ensure Emacs inherits the shell environment
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))

  ;; Fix Org Babel results handling issues
  (setq org-babel-default-header-args
	'((:session . "none")
	  (:results . "output replace")
	  (:exports . "code")
	  (:cache . "no")
	  (:noweb . "no")
	  (:hlines . "no")
	  (:tangle . "no")))
  
  ;; Shell-specific default arguments
  (setq org-babel-default-header-args:shell
	'((:results . "output replace verbatim")
	  (:wrap . "EXAMPLE")))
  
  ;; Don't ask for confirmation when evaluating code blocks
  (setq org-confirm-babel-evaluate nil)
  
  ;; Ensure proper handling of results blocks
  (setq org-babel-results-keyword "RESULTS")
  
  ;; Handle large outputs better
  (setq org-babel-temporary-directory "/tmp/")

  (add-to-list 'org-agenda-files org-journal-dir)
  :bind (("M-m a o u" . org-update-checkbox-count)
	 ("M-m a o l" . org-insert-link))
  )
;;; org.el ends here

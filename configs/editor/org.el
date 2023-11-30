;;; org.el --- configure org-mode

;;; Commentary:
;;

;;; Code:
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
  (add-to-list 'org-agenda-files org-journal-dir)
  :bind (("M-m a o u" . org-update-checkbox-count)
	 ("M-m a o l" . org-insert-link))
  )
;;; org.el ends here

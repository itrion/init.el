(require 'org-bullets)
(require 'org-journal)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-log-into-drawer "LOGBOOK"
      org-hide-emphasis-markers t
      org-hide-block-startup t
      org-hide-leading-stars t
      org-startup-indented t
      org-startup-folded t

      org-journal-dir "~/notepad/journal"
      org-journal-file-format "%Y-%m-%d.journal"
      org-journal-file-type 'monthly
      )

(defun org-journal-save-entry-and-exit()
  "Simple convenience function.
Saves the buffer of the current day's entry and kills the window
Similar to 'org-capture' like behavior"
  (interactive)
  (save-buffer)
  (kill-buffer-and-window))

(define-key org-journal-mode-map (kbd "C-c C-c") 'org-journal-save-entry-and-exit)

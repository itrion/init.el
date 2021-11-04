(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-log-into-drawer "LOGBOOK"
      org-hide-emphasis-markers t
      org-hide-block-startup t
      org-hide-leading-stars t
      org-startup-indented t
      org-startup-folded t
      )

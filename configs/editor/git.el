(use-package magit
  :config
  (setq magit-status-buffer-switch-function 'switch-to-buffer
	magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1
	magit-diff-refine-hunk 'all)
  :bind (("M-m g L" . magit-list-repositories)
	 ("M-m g s" . magit-status)
	 ("M-m g p" . magit-dispatch-popup)))

(use-package git-timemachine
  :bind (("M-m g t" . git-timemachine)))

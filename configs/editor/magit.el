(require 'magit)
(setq magit-status-buffer-switch-function 'switch-to-buffer
      magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1
      magit-diff-refine-hunk 'all)

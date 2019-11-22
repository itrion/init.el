(require 'magit)
(setq magit-status-buffer-switch-function 'switch-to-buffer)
(setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)

(global-set-key (kbd "C-c g s") 'magit-status)

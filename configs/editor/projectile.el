;; Configure Projectile https://www.projectile.mx/en/latest/
(require 'projectile)
(require 'helm-projectile)

;;(setq projectile-switch-project-action 'magit-status)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(helm-projectile-on)
(projectile-mode +1)

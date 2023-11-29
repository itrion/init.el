;; Configure Projectile https://www.projectile.mx/en/latest/
(use-package projectile
  :ensure helm
  :ensure helm-projectile

  :config
  (helm-projectile-on)
  (projectile-mode +1)

  :bind-keymap
  ("M-m p" . projectile-command-map ))

(set-face-attribute 'default nil
		    :family "Fira Code"
		    :height 140)

(setq inhibit-startup-message t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode t)
(line-number-mode t)
(add-to-list 'default-frame-alist '(fullscreen . maximized) )

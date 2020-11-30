(set-face-attribute 'default nil
		    :family "Fira Code"
		    :height 140)

(setq delete-by-moving-to-trash t
      global-hl-line-mode t
      inhibit-startup-screen t
      line-number-mode t
      scroll-bar-mode -1
      shift-select-mode t
      )

;; Setting this variable directly does not take effect;
;; either customize it (see the info node ‘Easy Customization’)
;; or call the function ‘menu-bar-mode’.
(menu-bar-mode -1)

;; Setting this variable directly does not take effect;
;; either customize it (see the info node ‘Easy Customization’)
;; or call the function ‘tool-bar-mode’.
(tool-bar-mode -1)


(add-to-list 'default-frame-alist '(fullscreen . maximized))

(global-set-key (kbd "C-x C-b") 'ibuffer)

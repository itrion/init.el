(global-set-key (kbd "s-k") 'kill-this-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Bufffer related actions
(global-set-key (kbd "C-c b <up>") 'windmove-up)
(global-set-key (kbd "C-c b <down>") 'windmove-down)
(global-set-key (kbd "C-c b <left>") 'windmove-left)
(global-set-key (kbd "C-c b <right>") 'windmove-right)

;; Org actionssn
(global-set-key (kbd "C-c o u") 'org-update-checkbox-count)

;; Toggle modes and functionalities
(global-set-key (kbd "C-c t l") 'toggle-truncate-lines)

(global-set-key (kbd "C-c .") 'completion-at-point)

;; Helm related key bindings
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ;  make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "C-c h o") 'helm-occur)

(global-set-key (kbd "C-h b") 'helm-descbinds)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c b b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

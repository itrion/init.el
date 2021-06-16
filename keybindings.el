;; By default, M-m is bound to the back-to-indentation command
(global-unset-key (kbd "M-m"))

(defalias 'buffers
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "<up>") 'windmove-up)
    (define-key map (kbd "<down>") 'windmove-down)
    (define-key map (kbd "<left>") 'windmove-left)
    (define-key map (kbd "<right>") 'windmove-right)
    (define-key map (kbd "b") 'ibuffer)
    (define-key map (kbd "k") 'kill-this-buffer)
    (define-key map (kbd "R") 'revert-buffer)
    map))

(defalias 'elisp
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "b") 'eval-buffer)
    (define-key map (kbd "r") 'eval-region)
    map))

(defalias 'features
  (let ((bookmarks (make-sparse-keymap))
	(features (make-sparse-keymap)))
    ;; Bookmarks
    (define-key bookmarks (kbd "s") 'bookmark-set)
    (define-key bookmarks (kbd "j") 'bookmark-jump)
    (define-key bookmarks (kbd "l") 'list-bookmarks)
    (define-key features (kbd "b") bookmarks)
    features))

(defalias 'git
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "L") 'magit-list-repositories)
    (define-key map (kbd "s") 'magit-status)
    (define-key map (kbd "p") 'magit-dispatch-popup)
    (define-key map (kbd "t") 'git-timemachine)
    map))

(defalias 'org
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "u") 'org-update-checkbox-count)
    (define-key map (kbd "l") 'org-insert-link)
    map))

(defalias 'toggles/modes
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "l") 'toggle-truncate-lines)
    (define-key map (kbd "g") 'golden-ratio-mode)
    map))

(which-key-add-key-based-replacements  "M-m a" "applications")
(global-set-key (kbd "M-m a o") 'org)

(global-set-key (kbd "M-m b") 'buffers)

(which-key-add-key-based-replacements  "M-m e" "elisp/errors")
(global-set-key (kbd "M-m e e") 'elisp)

(global-set-key (kbd "M-m f") 'features)
(global-set-key (kbd "M-m g") 'git)
(global-set-key (kbd "M-m t") 'toggles/modes)
(define-key projectile-mode-map (kbd "M-m p") 'projectile-command-map)

(global-set-key (kbd "s-k") 'kill-this-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
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

;; Helpful
(global-set-key (kbd "C-h f") #'helpful-callable)
(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)
(global-set-key (kbd "C-h .") #'helpful-at-point)

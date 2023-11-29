;; For more information about configuring helm: http://tuhdo.github.io/helm-intro.html
(use-package helm
  :ensure helm-themes
  :config
  (helm-mode 1)
  (helm-autoresize-mode 1)
  (setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
	helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
	helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
	helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
	helm-ff-file-name-history-use-recentf t
	helm-echo-input-in-header-line        t
	helm-autoresize-max-height            0
	helm-autoresize-min-height            20
	helm-M-x-fuzzy-match                  t ;; optional fuzzy matching for helm-M-x
	helm-buffers-fuzzy-matching           t
	helm-recentf-fuzzy-match              t
	helm-semantic-fuzzy-match             t
	helm-imenu-fuzzy-match                t
	helm-apropos-fuzzy-match              t)

  ;; Display the helm mini buffer always at the bottom
  ;; https://www.reddit.com/r/emacs/comments/345vtl/make_helm_window_at_the_bottom_without_using_any/
  (add-to-list 'display-buffer-alist
               `(,(rx bos "*helm" (* not-newline) "*" eos)
		 (display-buffer-in-side-window)
		 (inhibit-same-window . t)
		 (window-height . 0.6)))
  :bind (("C-c h" . helm-command-prefix)
	 ("C-h b" . helm-descbinds)
	 ("C-x b" . helm-mini)
	 ("C-x C-f" . helm-find-files)
	 ("M-x" . helm-M-x)
	 ("M-y" . helm-show-kill-ring)
	 ("M-m t T" . helm-themes)
	 :map helm-map
	 ("<tab>" . helm-execute-persistent-action)
	 :map helm-command-map
	 ("o" . helm-occur))
)

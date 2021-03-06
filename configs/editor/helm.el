;; For more information please visit http://tuhdo.github.io/helm-intro.html
(require 'helm)
(require 'helm-config)
(helm-mode 1)
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
      helm-apropos-fuzzy-match              t
      )

(helm-autoresize-mode 1)

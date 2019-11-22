;; https://web.mit.edu/nelhage/Public/dot-elisp/haskell-mode/installation-guide.html

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(interactive-haskell-mode)
;; These two are mutually exclusive
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

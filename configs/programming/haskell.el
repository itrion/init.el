;; http://haskell.github.io/haskell-mode/manual/latest/index.html#Top
(require 'haskell-interactive-mode)
(require 'haskell-process)

(add-hook 'haskell-mode-hook
	  'haskell-indentation-mode
	  'interactive-haskell-mode)

(custom-set-variables
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t)
  '(haskell-process-type 'stack-ghci))

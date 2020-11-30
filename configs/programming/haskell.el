;; http://haskell.github.io/haskell-mode/manual/latest/index.html#Top
(require 'haskell-interactive-mode)
(require 'haskell-process)

(add-hook 'haskell-mode-hook
	  'haskell-indentation-mode
	  'interactive-haskell-mode)

(setq haskell-process-suggest-remove-import-lines t)
(setq haskell-process-auto-import-loaded-modules t)
(setq haskell-process-log t)
(setq haskell-process-type 'stack-ghci)
(setq haskell-process-type (quote stack-ghci))

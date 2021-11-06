;;; flyspell.el --- Configuration for flyspell

;;; Commentary:
;; 

;;; Code:
(require 'auto-dictionary)
(require 'flyspell-correct-helm)

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))
;;; flyspell.el ends here

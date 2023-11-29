;;; flyspell.el --- Configuration for flyspell

;;; Commentary:


;;; Code:
(unless (eq system-type 'windows-nt)
  (use-package flyspell
    :ensure auto-dictionary
    :ensure flyspell-correct-helm

    :config

    (add-hook 'text-mode-hook 'flyspell-mode)
    (add-hook 'prog-mode-hook 'flyspell-prog-mode)
    ;; https://emacs.stackexchange.com/questions/41403/git-commit-mode-with-flyspell-very-slow
    (add-hook 'git-commit-setup-hook 'git-commit-turn-on-flyspell)
    (add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))))
;;; flyspell.el ends here

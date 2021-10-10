;;; kwp-git.el --- -*- lexical-binding: t -*-

(use-package git-gutter-fringe
  :straight t
  :config
  (global-git-gutter-mode +1)
  (setq-default fringes-outside-margins t))

(use-package git-timemachine
  :straight t
  :defer t)

(provide 'kwp-git)
;;; kwp-git.el ends here

;;; kpav-git.el --- -*- lexical-binding: t -*-

(use-package magit
  :straight t
  :defer t
  :general
  ("C-x g" 'magit-status)
  (base-leader-def
    :states 'normal
    "g" '(:ignore t :wk "git")
    "gs" 'magit-status
    "gc" 'magit-checkout
    "gC" 'magit-commit
    "gb" 'magit-blame
    "gS" 'magit-stage-file
    "gU" 'magit-unstage-file
    "gg" 'hydra-my-git-menu/body
    "gy" 'my/magit-yank-branch-name)
  :custom
  (magit-completing-read-function 'ivy-completing-read)
  :config
  (defun my/magit-yank-branch-name ()
    "Show the current branch in the echo-area and add it to the `kill-ring'."
    (interactive)
    (let ((branch (magit-get-current-branch)))
      (if branch
          (progn (kill-new branch)
                 (message "%s" branch))
        (user-error "There is not current branch")))))

(use-package git-gutter-fringe
  :straight t
  :config
  (global-git-gutter-mode +1)
  (setq-default fringes-outside-margins t))

(use-package git-timemachine
  :straight t
  :defer t)

(provide 'kpav-git)
;;; kpav-git.el ends here

;;; kpav-projects.el --- -*- lexical-binding: t -*-

(use-package projectile
  :straight t
  :config
  (projectile-mode +1))

(use-package treemacs
  :straight t
  :defer t
  :general ([f8] 'treemacs))

(use-package treemacs-evil
  :straight t
  :after (evil treemacs))

(use-package treemacs-projectile
  :straight t
  :after (projectile treemacs))

(use-package treemacs-magit
  :straight t
  :after (treemacs))

(provide 'kpav-projects)
;;; kpav-projects.el ends here

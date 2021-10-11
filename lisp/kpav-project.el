;;; kpav-project.el --- -*- lexical-binding: t -*-

(use-package project
  :straight nil
  :init
  :general
  (base-leader-def
   :states 'normal
   "p" '(:ignore t :wk "projects")
   "pf" 'project-find-file
   "pg" 'consult-ripgrep
   "pG" 'consult-git-grep))

(use-package treemacs
  :straight t
  :defer t
  :general ([f8] 'treemacs))

(use-package treemacs-evil
  :straight t
  :after (evil treemacs))

;; (use-package treemacs-projectile
;;   :straight t
;;   :after (projectile treemacs))

(use-package treemacs-magit
  :straight t
  :after (treemacs))

(provide 'kpav-project)
;;; kpav-project.el ends here

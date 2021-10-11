;;; kpav-projects.el --- -*- lexical-binding: t -*-

;; (use-package projectile
;;   :straight t
;;   :init
;;   (use-package ripgrep :straight t)
;;   :general
;;   (base-leader-def
;;    :states 'normal
;;    "p" '(:ignore t :wk "projects")
;;    "pf" 'projectile-find-file
;;    "pd" 'projectile-find-dir
;;    "pb" 'projectile-switch-to-buffer
;;    "pp" 'projectile-switch-project
;;    "pg" 'projectile-ripgrep)
;;   :config
;;   (projectile-mode +1))

(use-package project
  :straight nil
  :init
  :general
  (base-leader-def
   :states 'normal
   "p" '(:ignore t :wk "projects")
   "pf" 'project-find-file
   "pg" 'project-search))

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

(provide 'kpav-projects)
;;; kpav-projects.el ends here

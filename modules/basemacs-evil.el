(use-package evil
  :straight t
  :init
  (use-package undo-fu :straight t)
  :custom
  (evil-want-keybinding nil)  ;; evil-collection assumes this
  (evil-undo-system 'undo-fu)
  :config
  (evil-mode +1))

(use-package evil-collection
  :straight t
  :after evil
  :config
  (evil-collection-init))

(use-package evil-surround
  :straight t
  :after evil
  :config
  (global-evil-surround-mode 1))

(use-package evil-commentary
  :straight t
  :config
  (evil-commentary-mode 1))

(use-package evil-magit
  :straight t
  :after (magit evil))

(provide 'basemacs-evil)
;;; basemacs-evil.el ends here

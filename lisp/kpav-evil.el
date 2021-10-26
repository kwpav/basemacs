;;; kpav-evil.el --- -*- lexical-binding: t -*-

(use-package evil
  :straight t
  :general
  ;; make <tab> expand things in org mode for evil
  (general-nmap org-mode-map
    "<tab>" 'org-cycle)
  :init
  (use-package undo-fu :straight t)
  (setq evil-want-keybinding nil ;; evil-collection assumes this
        evil-undo-system 'undo-fu)
  :config
  (evil-mode +1)
  ;; turn on Emacs keybinds in evil mode
  (setq evil-insert-state-map (make-sparse-keymap))
  (define-key evil-insert-state-map (kbd "<escape>") 'evil-normal-state))

(use-package evil-collection
  :straight t
  :after evil
  :config
  (evil-collection-init))

(use-package evil-surround
  :straight t
  :after evil
  :config
  (global-evil-surround-mode +1))

(use-package evil-commentary
  :straight t
  :config
  (evil-commentary-mode +1))

(provide 'kpav-evil)
;;; kpav-evil.el ends here

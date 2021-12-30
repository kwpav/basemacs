;;; basemacs-ido.el --- -*- lexical-binding: t -*-

(use-package ido
  :straight nil
  :custom
  (ido-enable-flex-matching t)
  (ido-everywhere t)
  :config
  (ido-mode +1))

(use-package ido-vertical-mode
  :straight t
  :custom
  (ido-vertical-define-keys 'C-n-and-C-p-only)
  :config
  (ido-vertical-mode +1))

(use-package ido-completing-read+
  :straight t
  :config
  (ido-ubiquitous-mode +1))

(use-package amx
  :straight t
  :config
  (amx-mode +1))

(provide 'basemacs-ido)
;;; basemacs-ido.el ends here

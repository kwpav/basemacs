;;; basemacs-helm.el --- -*- lexical-binding: t -*-

(use-package helm
  :straight t
  :demand t
  :ghook
  'after-init-hook
  :general
  ("M-x" 'helm-M-x)
  ("C-x r b" 'helm-filtered-bookmarks)
  ("C-x C-f" 'helm-find-files))

(provide 'basemacs-helm)
;;; basemacs-helm.el ends here

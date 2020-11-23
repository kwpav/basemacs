(use-package helm
  :straight t
  :general
  ("M-x" 'helm-M-x)
  ("C-x r b" 'helm-filtered-bookmarks)
  ("C-x C-f" 'helm-find-files)
  :config
  (helm-mode +1))

(provide 'basemacs-helm)
;;; basemacs-helm.el ends here

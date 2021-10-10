;;; kpav-lsp.el --- -*- lexical-binding: t -*-

(use-package lsp-mode
  :straight t
  :hook (lsp-mode . lsp-enable-which-key-integration)
  :commands lsp
  :custom
  (lsp-completion-provider :capf)
  (lsp-keymap-prefix "C-l"))

(use-package lsp-ui
  :straight t
  :commands lsp-ui-mode)

(use-package lsp-treemacs
  :straight t
  :commands lsp-treemacs-errors-list)

(use-package dap-mode
  :straight t)

(provide 'kpav-lsp)
;;; kpav-lsp.el ends here

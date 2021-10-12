;;; kpav-js.el --- -*- lexical-binding: t -*-

(use-package js-mode
  :straight nil
  :mode "\\.js\\'"
  :interpreter "node"
  :gfhook
  #'lsp)

(use-package typescript-mode
  :straight t
  :mode "\\.ts\\'"
  :commands (typescript-mode)
  :gfhook
  #'lsp)

(use-package json-mode
  :straight t
  :mode "\\.json\\'")

(provide 'kpav-js)
;;; kpav-js.el ends here

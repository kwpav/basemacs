;;; init.el --- -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'basemacs-core)

(use-package emacs
  :init
  (defconst basemacs-leader "SPC")
  (defconst basemacs-local-leader "SPC m"))

(require 'basemacs-selectrum)
(require 'basemacs-evil)
(require 'kpav-ui)
(require 'kpav-projects)
(require 'kpav-windows-and-buffers)
(require 'kpav-org)
(require 'kpav-git)
(require 'kpav-vterm)
(require 'kpav-lsp)
(require 'kpav-php)
(require 'kpav-elisp)

(provide 'init)
;;; init.el ends here

;;; init.el --- -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'basemacs-core)

(use-package emacs
  :init
  (defconst basemacs-leader "SPC")
  (defconst basemacs-local-leader "SPC m"))

(require 'kwp-ui)
(require 'kwp-projects)
(require 'kwp-windows-and-buffers)
(require 'kwp-org)
(require 'kwp-lsp)
(require 'kwp-php)
(require 'basemacs-ido)
(require 'basemacs-evil)

(provide 'init)
;;; init.el ends here

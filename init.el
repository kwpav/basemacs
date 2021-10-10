;;; init.el --- -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'basemacs-core)

(use-package emacs
  :init
  (defconst basemacs-leader "SPC")
  (defconst basemacs-local-leader "SPC m"))

(require 'basemacs-ido)
(require 'basemacs-evil)
(require 'kwp-ui)
(require 'kwp-projects)
(require 'kwp-windows-and-buffers)
(require 'kwp-org)
(require 'kwp-git)
(require 'kwp-vterm)
(require 'kwp-lsp)
(require 'kwp-php)
(require 'kwp-elisp)

(provide 'init)
;;; init.el ends here

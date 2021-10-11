;;; init.el --- -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'basemacs-core)

(use-package emacs
  :init
  (defconst basemacs-leader "SPC")
  (defconst basemacs-local-leader "SPC m"))

(require 'basemacs-evil)
(require 'kpav-selectrum)
(require 'kpav-ui)
(require 'kpav-project)
(require 'kpav-windows-and-buffers)
(require 'kpav-org)
(require 'kpav-git)
(require 'kpav-vterm)
(require 'kpav-lsp)
(require 'kpav-php)
(require 'kpav-elisp)
(require 'kpav-clojure)

(provide 'init)
;;; init.el ends here

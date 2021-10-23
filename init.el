;;; init.el --- -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'basemacs-core)

(use-package emacs
  :init
  (defconst basemacs-leader "SPC")
  (defconst basemacs-local-leader "SPC m"))

;; emacs
(require 'kpav-evil)
(require 'kpav-selectrum)
(require 'kpav-ui)
(require 'kpav-windows-and-buffers)
(require 'kpav-org)
;; tools
(require 'kpav-project)
(require 'kpav-git)
(require 'kpav-vterm)
;; code
(require 'kpav-lsp)
(require 'kpav-php)
(require 'kpav-elisp)
(require 'kpav-clojure)
(require 'kpav-common-lisp)
(require 'kpav-js)

(provide 'init)
;;; init.el ends here

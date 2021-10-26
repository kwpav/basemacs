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
(require 'kpav-org)
(require 'kpav-ui)
(require 'kpav-windows-and-buffers)
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

(use-package emacs
  :straight nil
  :general
  ("<escape>" 'keyboard-escape-quit))

(use-package emacs
  :straight nil
  :init
  (setq native-comp-async-report-warnings-errors nil))

(provide 'init)
;;; init.el ends here

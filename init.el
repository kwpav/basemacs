;;; init.el --- -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'basemacs-core)

(require 'kwp-ui)
(require 'kwp-projects)
(require 'kwp-lsp)
(require 'kwp-php)
(require 'basemacs-ido)
(require 'basemacs-evil)

(provide 'init)
;;; init.el ends here

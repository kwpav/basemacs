;;; init.el --- -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'basemacs-core)

(require 'basemacs-ui)
(require 'basemacs-ivy)
(require 'basemacs-evil)

(provide 'init)
;;; init.el ends here

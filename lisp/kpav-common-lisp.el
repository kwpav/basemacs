;;; kpav-common-lisp.el --- -*- lexical-binding: t -*-
(require 'kpav-lisp-core)

(use-package sly
  :straight t
  :defer t
  :ghook
  ('sly-mrepl-mode-hook #'rainbow-delimiters-mode)
  :general
  (base-local-leader-def
   :states 'normal
   :keymaps 'lisp-mode-map
   "eb" 'sly-eval-buffer
   "el" 'sly-eval-last-expression
   "ed" 'sly-eval-defun
   "er" 'sly-eval-region)
  :custom
  (inferior-lisp-program "/usr/bin/sbcl"))

(use-package sly-quicklisp
  :straight t
  :after sly)

(use-package sly-asdf
  :straight t
  :after sly)

(provide 'kpav-common-lisp)
;;; kpav-common-lisp.el ends here

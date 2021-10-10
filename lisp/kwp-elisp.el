;;; kwp-elisp.el --- -*- lexical-binding: t -*-

(use-package emacs
  :straight nil
  :general
  (base-local-leader-def
   :states 'normal
   :keymaps 'emacs-lisp-mode-map
   "e" '(:ignore t :wk "eval")
   "eb" 'eval-buffer
   "el" 'eval-last-sexp
   "ed" 'eval-defun
   "er" 'eval-region)
  (base-local-leader-def
   :states 'normal
   :keymaps 'lisp-interaction-mode-map
   "e" '(:ignore t :wk "eval")
   "eb" 'eval-buffer
   "el" 'eval-last-sexp
   "ed" 'eval-defun
   "er" 'eval-region))

(provide 'kwp-elisp)
;;; kwp-elisp.el ends here

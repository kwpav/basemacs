;;; kpav-clojure.el --- -*- lexical-binding: t -*-
(require 'kpav-lisp-core)

(use-package clojure-mode
  :straight t
  :ghook
  ('clojure-mode-hook #'lsp)
  ('clojurec-mode-hook #'lsp)
  ('clojurescript-mode #'lsp)
  :custom
  (lsp-enable-indentation nil)
  :config
  (dolist (m '(clojure-mode
               clojurec-mode
               clojurescript-mode
               clojurex-mode))
    (add-to-list 'lsp-language-id-configuration `(,m . "clojure"))))

(use-package cider
  :straight t
  :after clojure-mode
  :ghook
  ('cider-repl-mode-hook #'rainbow-delimiters-mode)
  :general
  (base-local-leader-def
   :states 'normal
   :keymaps'clojure-mode-map
   "r" 'cider
   "n" 'cider-repl-set-ns
   "er" 'cider-eval-region
   "eb" 'cider-eval-buffer
   "ef" 'cider-eval-sexp-at-point
   "el" 'cider-eval-last-sexp))

(provide 'kpav-clojure)
;;; kpav-clojure.el ends here

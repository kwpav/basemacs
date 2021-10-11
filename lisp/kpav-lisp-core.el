;;; kpav-lisp-core.el --- -*- lexical-binding: t -*-

(defconst my-lisp-mode-hooks
  '(lisp-mode-hook
    sly-mrepl-mode-hook
    emacs-lisp-mode-hook
    clojure-mode-hook
    cider-repl-mode-hook))

(use-package lispy
  :straight t
  :ghook my-lisp-mode-hooks)

(use-package aggressive-indent
  :straight t
  :ghook my-lisp-mode-hooks)

(provide 'kpav-lisp-core)
;;; kpav-lisp-core.el ends here

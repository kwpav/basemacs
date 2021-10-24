;;; kpav-org.el --- -*- lexical-binding: t -*-

(use-package org
  :straight t
  :general
  (org-src-mode-map
   [remap evil-save-and-close] 'org-edit-src-exit
   [remap evil-save-modified-and-close] 'org-edit-src-exit
   [remap evil-quit] 'org-edit-src-abort)
  (base-leader-def
    :states 'normal
    "a" 'org-agenda)
  (base-local-leader-def
    :keymaps 'org-mode-map
    :states 'normal
    "b" 'org-babel-tangle)
  :preface
  (defun my-disable-flycheck-for-elisp ()
    (setq flycheck-disabled-checkers '(emacs-lisp-checkdoc)))
  :gfhook
  ('org-src-mode-hook #'my-disable-flycheck-for-elisp)
  #'visual-line-mode
  :init
  (setq org-startup-indented t)
  :custom
  (org-agenda-files (list "~/org/agenda/")))

(use-package org-contrib
  :straight t)

(use-package org-superstar
  :straight t
  :ghook
  ('org-mode-hook (lambda () (org-superstar-mode +1))))

(provide 'kpav-org)
;;; kpav-org.el ends here

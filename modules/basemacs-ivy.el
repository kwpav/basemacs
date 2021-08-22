(use-package ivy
  :straight t
  :demand t
  :ghook
  'after-init-hook
  :general
  ("<f6>" 'ivy-resume)
  :custom
  (ivy-use-virtual-buffers t)
  (enable-recursive-minibuffers t)
  (ivy-count-format "(%d/%d) ")
  (ivy-height 20))

(use-package counsel
  :straight t
  :after ivy
  :demand t
  :general
  ("M-x" 'counsel-M-x)
  ("C-x C-f" 'counsel-find-file)
  ("<f1> f" 'counsel-describe-function)
  ("<f1> v" 'counsel-describe-variable)
  ("<f1> l" 'counsel-find-library)
  ("<f2> i" 'counsel-info-lookup-symbol)
  ("<f2> u" 'counsel-unicode-char)
  ("C-c g" 'counsel-git)
  ("C-c j" 'counsel-git-grep)
  ("C-c k" 'counsel-rg)
  ("C-x l" 'counsel-locate)
  ("C-S-r" 'counsel-expression-history)
  :config
  ;; use ripgrep for counsel-git-grep
  (setq counsel-git-cmd "rg --files")
  (setq counsel-rg-base-command
        "rg -i -M 120 --no-heading --line-number --color never %s ."))

(use-package counsel-etags
  :straight t
  :after counsel)

(use-package ivy-rich
  :straight t
  :after (ivy counsel)
  :config
  (ivy-rich-mode +1)
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line))

(use-package swiper
  :straight t
  :after ivy
  :general
  ("C-s" 'swiper))

(provide 'basemacs-ivy)
;;; basemacs-ivy.el ends here

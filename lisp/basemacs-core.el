;;; basemacs-core.el --- -*- lexical-binding: t -*-

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(setq straight-cache-autoloads t)

(straight-use-package 'use-package)

(use-package use-package
  :straight nil
  :custom
  (use-package-compute-statistics t))

(use-package general
  :straight t
  :demand t
  :init
  (defcustom basemacs-leader "C-c"
    "Basemacs leader key"
    :type 'key-sequence
    :group 'basemacs)
  (defcustom basemacs-local-leader "C-c C-m"
    "Basemacs local leader key"
    :type 'key-sequence
    :group 'basemacs)
  :config
  (general-create-definer base-leader-def
    :prefix basemacs-leader)
  (general-create-definer base-local-leader-def
      :prefix basemacs-local-leader))

(use-package which-key
  :straight t
  :custom
  (which-key-idle-delay 0)
  :config
  (which-key-mode +1))

(use-package emacs
  :straight (:type built-in)
  :init
  ;; answer with y/n instead of typing out yes/no
  (defalias 'yes-or-no-p 'y-or-n-p)
  :custom
  ;; load new source files instead of stale elisp bytecode
  (load-prefer-newer t)
  ;; allow emacs to be any size, removes black bars
  (frame-resize-pixelwise t))

(use-package autorevert
  :straight (:type built-in)
  :custom
  (global-revert-check-vc-info t)
  :config
  (global-auto-revert-mode +1))

(use-package mule
  :straight (:type built-in)
  :config
  (prefer-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-language-environment "UTF-8"))

(use-package simple
  :straight (:type built-in)
  :custom
  ;; killing and yanking uses the system clipboard
  (save-interprogram-paste-before-kill t)
  :config
  ;; display column info in the modeline
  (column-number-mode +1))

(use-package so-long
  :straight (:type built-in)
  :config
  (global-so-long-mode +1))

(use-package cus-edit
  :straight (:type built-in)
  :custom
  ;; create custom.el if it doesnt exist yet
  (custom-file (expand-file-name "custom.el" user-emacs-directory))
  :config
  (if (file-exists-p custom-file)
      (load-file custom-file)))

(use-package display-line-numbers
  :straight (:type built-in)
  :ghook
  ('prog-mode-hook #'display-line-numbers-mode))

(use-package yasnippet
  :straight t
  :preface
  (defconst basemacs-snippets-dir (expand-file-name "snippets/" user-emacs-directory))
  (make-directory basemacs-snippets-dir :parents)
  :custom
  (yas-snippet-dirs (list basemacs-snippets-dir))
  :config
  (yas-global-mode +1))

(use-package yasnippet-snippets
  :straight t
  :after yasnippet)

(provide 'basemacs-core)
;;; basemacs-core.el ends here

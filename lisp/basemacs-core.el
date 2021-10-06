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
  ;; :init
  ;; (defconst basemacs-leader "C-c")
  :config
  ;; (general-create-definer base-leader-def
  ;;   :prefix basemacs-leader)
  ;; prevent "Key sequence starts with a non-prefix key" errors
  ;; (general-auto-unbind-keys)
  (general-evil-setup)
  (general-create-definer base-leader-def
    :states '(normal visual insert emacs)
    :prefix "SPC")
  (general-create-definer base-local-leader-def
    :states '(normal visual insert emacs)
    :prefix "SPC m"))

(use-package which-key
  :straight t
  :custom
  (which-key-idle-delay 0)
  :config
  (which-key-mode +1))

(use-package emacs
  :straight nil
  :init
  ;; answer with y/n instead of typing out yes/no
  (defalias 'yes-or-no-p 'y-or-n-p)
  :custom
  ;; load new source files instead of stale elisp bytecode
  (load-prefer-newer t)
  ;; allow emacs to be any size, removes black bars
  (frame-resize-pixelwise t))

(use-package autorevert
  :straight nil
  :custom
  (global-revert-check-vc-info t)
  :config
  (global-auto-revert-mode +1))

(use-package mule
  :straight nil
  :config
  (prefer-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-language-environment "UTF-8"))

(use-package files
  :straight nil
  :custom
  (make-backup-files nil)    ;; stop creating backup~ files
  (auto-save-default nil)    ;; stop creating #autosave# files
  (create-lockfiles nil)     ;; stop creating .# files
  (require-final-newline t)) ;; auto add newline at the end of file

(use-package simple
  :straight nil
  :custom
  ;; killing and yanking uses the system clipboard
  (save-interprogram-paste-before-kill t)
  :config
  ;; display column info in the modeline
  (column-number-mode +1))

(use-package so-long
  :straight nil
  :config
  (global-so-long-mode +1))

(use-package saveplace
  :straight nil
  :config
  (save-place-mode +1))

(use-package cus-edit
  :straight nil
  :custom
  (custom-file (expand-file-name "custom.el" user-emacs-directory))
  :config
  (if (file-exists-p custom-file)
      (load-file custom-file)))

(use-package emacs
  :straight nil
  :custom
  (inhibit-startup-screen t))

(use-package frame
  :straight nil
  :config
  (blink-cursor-mode -1))

(use-package hl-line
  :straight nil
  :config
  (global-hl-line-mode +1))

(use-package org
  :straight nil
  :gfhook
  ;; visual word wrap
  #'visual-line-mode
  :custom
  ;; indent text based on outline structure
  (org-startup-indented t))

(use-package display-line-numbers
  :straight nil
  :ghook
  ('prog-mode-hook #'display-line-numbers-mode))

(use-package elec-pair
  :straight nil
  :ghook
  ('prog-mode-hook #'electric-pair-mode)
  ('org-mode-hook #'electric-pair-mode))

(use-package paren
  :straight nil
  :custom
  (show-paren-delay 0)
  :config
  (show-paren-mode +1))

(use-package company
  :straight t
  :config
  (global-company-mode +1))

(use-package flycheck
  :straight t
  :config
  (global-flycheck-mode +1))

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

(use-package magit
  :straight t
  :general
  ("C-x g" 'magit-status))

(provide 'basemacs-core)
;;; basemacs-core.el ends here

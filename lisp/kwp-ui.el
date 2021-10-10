;;; kwp-ui.el --- -*- lexical-binding: t -*-

(use-package faces
  :straight nil
  :init
  ;; Main typeface
  (set-face-attribute 'default nil :family "Iosevka" :height 130)
  ;; Proportionately spaced typeface
  (set-face-attribute 'variable-pitch nil :family "EtBembo" :height 1.0)
  ;; Monospaced typeface
  (set-face-attribute 'fixed-pitch nil :family "Iosevka" :height 1.0))

(use-package modus-themes
  :straight t
  :init
  (modus-themes-load-themes)
  :custom
  (modus-themes-bold-constructs t)
  (modus-themes-slanted-constructs t)
  (modus-themes-intense-paren-match t)
  (modus-themes-completions 'opinionated)
  ;; org specific settings
  (modus-themes-org-blocks 'grayscale)
  (modus-themes-headings '((t . rainbow)))
  (modus-themes-scale-headings t)
  :config
  (setq modus-themes-mixed-fonts t)
  (modus-themes-load-vivendi))

(use-package face-remap
  :straight nil
  :ghook
  ('org-mode-hook #'variable-pitch-mode))

(use-package rainbow-delimiters
  :straight t
  :hook (prog-mode . rainbow-delimiters-mode))

(provide 'kwp-ui)
;;; kwp-ui.el ends here

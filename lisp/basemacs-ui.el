(use-package rainbow-delimiters
  :straight t
  :ghook 'prog-mode-hook)

(use-package face-remap
  :straight nil
  :ghook
  ('org-mode-hook #'variable-pitch-mode))

(use-package faces
  :straight nil
  :config
  ;; Main typeface
  (set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 110)
  ;; Proportionately spaced typeface
  (set-face-attribute 'variable-pitch nil :family "DefaVu Serif" :height 1.0)
  ;; Monospaced typeface
  (set-face-attribute 'fixed-pitch nil :family "DejaVu Sans Mono" :height 1.0))

(use-package modus-themes
  :straight t
  :init
  (setq modus-themes-italic-constructs t
        modus-themes-bold-constructs nil
        modus-themes-region '(bg-only no-extend))
  (modus-themes-load-themes)
  :config
  (modus-themes-load-operandi))

(provide 'basemacs-ui)
;;; basemacs-ui.el ends here

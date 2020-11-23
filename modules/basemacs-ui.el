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

(use-package modus-operandi-theme
  :straight t
  :custom
  (modus-operandi-theme-bold-constructs t)
  (modus-operandi-theme-slanted-constructs t)
  (modus-operandi-theme-completions 'opinionated)
  ;; org specific settings
  (modus-operandi-theme-org-blocks 'grayscale)
  (modus-operandi-theme-headings '((t . rainbow)))
  (modus-operandi-theme-scale-headings t)
  :config
  (load-theme 'modus-operandi))

(use-package modus-vivendi-theme
  :straight t
  :custom
  (modus-vivendi-theme-bold-constructs t)
  (modus-vivendi-theme-slanted-constructs t)
  (modus-vivendi-theme-completions 'opinionated)
  ;; org specific settings
  (modus-vivendi-theme-org-blocks 'grayscale)
  (modus-vivendi-theme-headings '((t . rainbow)))
  (modus-vivendi-theme-scale-headings t))

(defun modus-themes-toggle ()
    "Toggle between `modus-operandi' and `modus-vivendi' themes."
    (interactive)
    (if (eq (car custom-enabled-themes) 'modus-operandi)
        (progn
          (disable-theme 'modus-operandi)
          (load-theme 'modus-vivendi t))
      (disable-theme 'modus-vivendi)
      (load-theme 'modus-operandi t)))

(provide 'basemacs-ui)
;;; basemacs-ui.el ends here

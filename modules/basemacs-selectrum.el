(use-package selectrum
  :straight t
  :demand t
  :ghook
  'after-init-hook)

(use-package prescient
  :straight t
  :after selectrum
  :config
  (prescient-persist-mode +1))

(use-package selectrum-prescient
  :straight t
  :after (selectrum prescient)
  :config
  (selectrum-prescient-mode +1))

(use-package ctrlf
  :straight t
  :config
  (ctrlf-mode +1))

(provide 'basemacs-selectrum)
;;; basemacs-selectrum.el ends here

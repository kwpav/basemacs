;;; kpav-php.el --- -*- lexical-binding: t -*-

(use-package php-mode
  :straight t
  :mode "\\.php\\'"
  :gfhook #'my-php-setup
  :general
  (:keymaps 'php-mode-map
    "C-c a" 'my/align-php-dbl-arrow)
  :custom
  ;; align -> on successive lines
  (php-lineup-cascaded-calls t)
  (flycheck-phpcs-standard "WellspringCodingStandard"))

(defun my-php-setup ()
  (php-enable-default-coding-style)
  (setq lsp-enable-file-watchers nil)
  (lsp))

(defun my/align-php-dbl-arrow ()
  "Align the => in arrays."
  (interactive)
  (align-regexp
   (region-beginning) (region-end)
   "\\(\\s-*\\) => " 1 0 nil))

(use-package phpcbf
  :straight t
  :after (php-mode)
  :custom
  (phpcbf-executable "/usr/local/bin/phpcbf")
  (phpcbf-standard "WellspringCodingStandard"))

(use-package psysh
  :straight t
  :defer t)

(provide 'kpav-php)
;;; kpav-php.el ends here

;;; early-init.el --- -*- lexical-binding: t -*-

(setq package-enable-at-startup nil)
(fset #'package--ensure-init-file #'ignore)

(setq frame-inhibit-implied-resize t)

(push '(menu-bar-lines . 0) default-frame-alist)   ;; remove menubar
(push '(tool-bar-lines . 0) default-frame-alist)   ;; remove toolbar
(push '(vertical-scroll-bars) default-frame-alist) ;; remove scrollbars

(provide 'early-init)
;;; early-init.el ends here

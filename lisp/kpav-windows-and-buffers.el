;;; kpav-windows-and-buffers.el --- -*- lexical-binding: t -*-

(use-package window
  :straight nil
  :general
  (base-leader-def
   :states 'normal
   "b" '(:ignore t :wk "buffers")
   "w" '(:ignore t :wk "windows")
   "bb" 'switch-to-buffer
   "bk" 'kill-buffer
   "wo" 'split-window-horizontally
   "wu" 'split-window-vertically
   "wd" 'delete-window))

(use-package windmove
  :straight nil
  :general
  (base-leader-def
   :states 'normal
   "wh" 'windmove-left
   "wj" 'windmove-down
   "wk" 'windmove-up
   "wl" 'windmove-right)
  :config
  (windmove-default-keybindings))

(provide 'kpav-windows-and-buffers)
;;; kpav-windows-and-buffers.el ends here

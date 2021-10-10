;;; kwp-windows-and-buffers.el --- -*- lexical-binding: t -*-

(base-leader-def
 :states 'normal
 "b" '(:ignore t :wk "buffers")
 "bb" 'switch-to-buffer
 "bk" 'kill-buffer
 "wo" 'split-window-horizontally
 "wu" 'split-window-vertically
 "wd" 'delete-window)

(use-package windmove
  :straight nil
  :general
  (base-leader-def
   :states 'normal
   "w" '(:ignore t :wk "windows")
   "wh" 'windmove-left
   "wj" 'windmove-down
   "wk" 'windmove-up
   "wl" 'windmove-right)
  :config
  (windmove-default-keybindings))

(provide 'kwp-windows-and-buffers)
;;; kwp-windows-and-buffers.el ends here

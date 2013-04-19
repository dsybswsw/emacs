
'(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)

;;(set-background-color "black") ;; 使用黑色背景
;;(set-foreground-color "white") ;; 使用白色前景
;;(set-face-foreground 'region "green")  ;; 区域前景颜色设为绿色
;;(set-face-background 'region "blue") ;; 区域背景色设为蓝色
(setq make-backup-files nil) ;; no back-up

(add-to-list 'load-path "~/.emacs.d/lisps/")

(require 'color-theme)

(color-theme-initialize)

;;(color-theme-lawrence)
;;(color-theme-billw)
;;(color-theme-blue-mood)
;;(color-theme-calm-forest)
;;(color-theme-classic)
;;(color-theme-hober)
;;(color-theme-clarity)
(color-theme-charcoal-black)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))

;;set ibus-el
 (add-to-list 'load-path "~/.emacs.d/lisps/ibus-el-0.3.2")
 (require 'ibus)
 (add-hook 'after-init-hook 'ibus-mode-on)

 (setq x-select-enable-clipboard t)
(tool-bar-mode -1)
;;(menu-bar-mode -1)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
(put 'downcase-region 'disabled nil)

(windmove-default-keybindings 'meta)
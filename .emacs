(custom-set-variables
  ;; custom-set-variables was added by Custom.>
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

;; disable the toolbar
(menu-bar-mode -1)

;; font settings
(set-default-font "Inconsolata 12")
;; (set-frame-font “MONACO-12″)
;; (set-background-color "black") ;; 使用黑色背景
;; (set-foreground-color "white") ;; 使用白色前景
;; (set-face-foreground 'region "green")  ;; 区域前景颜色设为绿色
;; (set-face-background 'region "blue") ;; 区域背景色设为蓝色
(setq make-backup-files nil) ;; no back-up

(add-to-list 'load-path "~/.emacs.d/lisps/")

;; (color-theme-initialize)

;; set theme
(load-theme 'molokai)
(setq molokai-theme-kit t)

;;(color-theme-lawrence)                  ;
;;(color-theme-billw)
;;(color-theme-blue-mood)
;;(color-theme-calm-forest)
;;(color-theme-classic)
;;(color-theme-hober)
;;(color-theme-clarity)
;;(color-theme-charcoal-black)
;;(color-theme-comidia)

;; enable line number mode.
(global-linum-mode t)

;; enable web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes (quote (("left8" (ecb-directories-buffer-name 0.25301204819277107 . 0.3333333333333333) (ecb-sources-buffer-name 0.25301204819277107 . 0.19047619047619047) (ecb-methods-buffer-name 0.25301204819277107 . 0.2857142857142857) (ecb-history-buffer-name 0.25301204819277107 . 0.16666666666666666)))))
 '(ecb-options-version "2.40")
 '(ecb-windows-height 0.25)
 '(ecb-windows-width 0.25)
 '(inhibit-startup-screen t))

;;set ibus-el
 (add-to-list 'load-path "~/.emacs.d/lisps/ibus-el-0.3.2")
 (require 'ibus)
 (add-hook 'after-init-hook 'ibus-mode-on)

;; share clipboard.
 (setq x-select-enable-clipboard t)
(tool-bar-mode -1)

;;(menu-bar-mode -1)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
(put 'downcase-region 'disabled nil)

(windmove-default-keybindings 'meta)
(setq c-default-style '((java-mode . "java") (awk-mode . "awk") (other . "linux")))
(setq-default indent-tabs-mode  nil)
(setq tab-width 4
      c-basic-offset 2)

(add-hook 'c-mode-common-hook
            '(lambda ()
                   (require 'xcscope)))

(require 'fill-column-indicator)

(setq-default fci-rule-column 80)

(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

; start server mode.
(server-start)
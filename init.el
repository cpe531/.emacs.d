;; In Windows, C:\Users\[user]\AppData\Remote\.emacs.d\
;; Linux: ~/.emacs.d/

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("" default))
 '(package-selected-packages '(powershell magit fireplace))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; My stuff
(require 'package)
;;(setq package-enable-at-startup nil)	;; from Uncle Dave Emacs Tutorial
;; C-h v -- look up variables (user-init-file)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; colour theme
;; M-x load-theme is the correct way to do this
;; Use theme-choose-variant to swap between light and dark.
;;(load-theme 'deeper-blue)	;; best theme -- Capoera Jungle Science Man in Yokohama, Surf's Up!
;;(load-theme 'catppuccin :no-confirm)
;;(setq catppuccin-flavor 'frappe) ;; 'latte, 'frappe, 'macchiato, or 'mocha
;;(catppuccin-reload)

;; font
;; (set-face-attribute 'default nil :font "LM Mono 10-12")
;; (set-face-attribute 'default nil :font "Libertinus Mono-11")
;; (set-face-attribute 'default nil :font "Fira Code Regular")

;; stop yelling at me
(setq visible-bell t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Shell
;;(setq-default explicit-shell-file-name "/Users/chris/scoop/apps/git/current/bin/bash.exe")

;; Basic Config
(setq next-screen-context-lines 5)	;; Number of lines of continuity when scrolling by screenfuls.

;; Programming
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; C/C++
(add-hook 'c-mode-hook 'display-fill-column-indicator-mode)
(add-hook 'c++-mode-hook 'display-fill-column-indicator-mode)
;;(setq display-fill-column-indicator-column 80)
(defun erwin-c-setup ()
  (setq c-default-style "stroustrup" c-basic-offset 4
	fill-column 80))
(add-hook 'c-mode-hook 'erwin-c-setup)
(add-hook 'c++-mode-hook 'erwin-c-setup)

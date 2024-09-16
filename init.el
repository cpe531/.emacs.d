;; In Windows, C:\Users\[user]\AppData\Remote\.emacs.d\
;; Linux: ~/.emacs.d/

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("249e100de137f516d56bcf2e98c1e3f9e1e8a6dce50726c974fa6838fbfcec6b" "" default))
 '(package-selected-packages '(kaolin-themes rust-mode powershell magit fireplace))
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
;; Use display-graphic-p to determine if running in GUI rather than term.
;; Use theme-choose-variant to swap between light and dark.
;;(load-theme 'deeper-blue) ;; best theme -- Capoera Jungle Science Man in Yokohama, Surf's Up!
(load-theme 'kaolin-valley-dark) ;; Try to stick with these theme for a while.

;; font
(set-face-attribute 'default nil :font "Iosevka") ;; Try to stick with this font (or slab version)

;; stop yelling at me
(setq visible-bell t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Shell
;;(setq-default explicit-shell-file-name "/Users/chris/scoop/apps/git/current/bin/bash.exe")

;; Basic Config
(setq next-screen-context-lines 9) ;; Number of lines of continuity when scrolling by screenfuls.

;; Programming
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; C/C++
(add-hook 'c-mode-hook 'display-fill-column-indicator-mode)
(add-hook 'c++-mode-hook 'display-fill-column-indicator-mode)
(defun erwin-c-setup ()
  (setq c-default-style "stroustrup" c-basic-offset 4
	fill-column 80))
(add-hook 'c-mode-hook 'erwin-c-setup)
(add-hook 'c++-mode-hook 'erwin-c-setup)

;; Rust
(defun erwin-rust-setup ()
  (setq fill-column 100)
  (display-fill-column-indicator-mode)
  (setq rust-format-on-save t)
  (setq indent-tabs-mode nil))
(add-hook 'rust-mode-hook 'erwin-rust-setup)

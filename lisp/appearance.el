;;; appearance.el -*- lexical-binding: t; -*-
;; Appearance related config

;; Minor display changes
(setq display-line-numbers-type "relative")
(global-display-line-numbers-mode 1)            ; Display line numbers in every buffer
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq fill-column 80)
(setq-default line-spacing 1)
(set-face-attribute 'default nil :height 160)
(setq enable-recursive-minibuffers t)

;; Laptop Power monitor
(unless (string-match-p "^Power N/A" (battery))  ; On laptops...
  (display-battery-mode 1))                      ; it's nice to know how much power you have

(setq inhibit-startup-message t) ; Don't show the splash screen
(setq visible-bell nil)          ; Flash when the bell rings
(setq ring-bell-function 'ignore); NEVER RING THE BELL

;; Modus Theme
(load-theme 'modus-operandi)

;; transpose-frame
(use-package transpose-frame)

;; modeline
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; nice icons that work with doom-modeline
;; to install the fonts required run: M-x nerd-icons-install-fonts
(use-package nerd-icons)

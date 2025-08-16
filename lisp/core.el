;;; core.el -*- lexical-binding: t; -*

(setq shell-file-name "/bin/bash")


;; because I forget emacs bindings all the time
(use-package which-key
  :config
  (which-key-mode))

(setq mac-option-modifier 'meta)

;; Do not clutter the filesystem with backup files/lockfiles
(setq backup-directory-alist `(("." . "~/.cache/emacs")))

(use-package no-littering)

;; No ugly lockfiles
(setq create-lockfiles nil)

;; yes/no -> y/n
(fset 'yes-or-no-p 'y-or-n-p)

(setq enable-recursive-minibuffers t)

;; tab = 2 spaces
(setq-default indent-tabs-mode nil
              tab-width 2)

;;--- COMPLETION FRAMEWORKS ---

;; ivy?
(use-package ivy
  :init
  (ivy-mode 1))

;; consult
(use-package consult)
;; company
(use-package company)
(add-hook 'after-init-hook 'global-company-mode)


;; avy
(use-package avy
  :bind ("M-j" . avy-goto-char-timer))

;; Spelling Correction
(use-package flyspell-correct
  :bind ("C-'" . flyspell-correct-wrapper))

;; magit
(use-package magit)

;; TRAMP config
(add-to-list 'tramp-remote-path "~/.toolbox/bin")
 
;; ripgrep interface
(use-package deadgrep)


;; personal functions
(require 'url-util)
(defun my/kill-url-at-point ()
  "Kill the url at point."
  (interactive)
  (kill-new (url-get-url-at-point)))

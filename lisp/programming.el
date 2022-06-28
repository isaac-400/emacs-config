;;; programming.el -*- lexical-binding: t; -*-
;; Programming related config

;; scheme
(use-package geiser-guile)
(use-package paredit
  :hook (scheme-mode . paredit-mode))

;; typescript
(use-package typescript-mode)

;; json
(use-package json-mode)

;; LSP with eglot
(use-package eglot
  :hook (python-mode . eglot))

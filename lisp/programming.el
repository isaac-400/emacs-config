;;; programming.el -*- lexical-binding: t; -*-
;; Programming related config

;; scheme
(use-package geiser-guile)
(use-package paredit
  :hook (scheme-mode . paredit-mode))

;; typescript
(use-package typescript-mode)

;; python
(setq python-python-command "python3") ;; default to python3

;; go
(use-package go-mode)

;; tree-sitter syntax highlighting and structural editing
(use-package tree-sitter
  :config
  (global-tree-sitter-mode)
  :hook
  (tree-sitter-mode . tree-sitter-hl-mode))
(use-package tree-sitter-langs)

;; various config file modes
(use-package dockerfile-mode)
(use-package json-mode)
(use-package yaml-mode)
(use-package nix-mode)

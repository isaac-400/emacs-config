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

;; python
(setq python-python-command "python3") ;; default to python3

;; go
(use-package go-mode)

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (python-mode . lsp)
         (go-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)

;; tree-sitter syntax highlighting and structural editing
(use-package tree-sitter
  :config
  (global-tree-sitter-mode)
  :hook
  (tree-sitter-mode . tree-sitter-hl-mode))
  
(use-package tree-sitter-langs)

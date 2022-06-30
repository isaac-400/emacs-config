;;; documents.el -*- lexical-binding: t; -*-

;; --- ORG MODE ---
;; org-mode is fantastic as well. I keep things close to default.

(use-package org
  :demand t
  :load-path "~/emacs.d/elpa/org-9.5/"
  :bind (("C-c l" . org-stored-link)
         ("C-c a" . org-agenda)
         ("C-c c" . org-capture))
  :config
  (setq org-directory "~/org/")

  (setq if/default-org-file "~/org/todo.org")

  (setq org-agenda-files
        (directory-files-recursively "~/org/" "\.org$"))
  (setq org-todo-keywords
        '((sequence  "TODO(t)" "PROJ(p)" "MAYBE(m)" "NEXT(n)" "|"
                     "DONE(d)" "CANCELLED(c)" "DEFERRED(f)")))

  (setq org-agenda-skip-deadline-if-done t)
  (setq org-agenda-skip-scheduled-if-done t)
  (setq org-agenda-skip-timestamp-if-done t)
  ;; Skip deleted files
  (setq org-agenda-skip-unavailable-files t)
  (setq org-capture-templates
        '(("t" "todo" entry (file+headline if/default-org-file "INBOX")
           "* NEXT %?\n" :clock-in t :clock-resume t)))
  
  (setq org-image-actual-width nil)
  (setq org-startup-indented t
        org-src-tab-acts-natively t))

(use-package org-pomodoro)

(use-package ob-typescript)


;; org-babel
(org-babel-do-load-languages
  'org-babel-load-languages
  '((emacs-lisp . t)
    (python . t)
    (scheme . t)
    (typescript . t)
    (java . t)
    (eshell . t)))

;; ;; org-journal
;; (use-package org-journal
;;   :config
;;   (setq org-journal-dir "~/journal/")
;;   (setq org-journal-encrypt-journal t))

;; read pdfs in emacs but better

(use-package pdf-tools
  :demand t
  :config
  (pdf-loader-install))

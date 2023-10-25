;; amazon.el ;; -*- lexical-binding: t; -*- ;;
;; Work related config

(use-package amz-brazil-config
  :straight '(amz-brazil-config :type git
           :build t
           :post-build
           (copy-file "lisp/brazil-path-cache-artifacts" (straight--build-dir "amz-brazil-config"))
           :repo "ssh://git.amazon.com/pkg/EmacsAmazonLibs"))

(dolist (pkgname '(amz-common amz-kerberos amz-workspace amz-mw amz-package))
  (message "Installing %s" pkgname)
  (straight-use-package
   `(,pkgname :type git
                :host nil
                :build t
                ;; :post-build (copy-file "lisp/brazil-path-cache-artifacts"
                ;;                        (straight--build-dir ,pkgname))
                :repo "ssh://git.amazon.com:2222/pkg/EmacsAmazonLibs")))

;; Transient interface for CRUX
(use-package amz-crisp
  :straight '(amz-crisp :type git :host nil :repo "ssh://git.amazon.com:2222/pkg/Crisp"))

;; Transient interface for Brazil
(use-package amz-brief
  :straight '(amz-brief :type git :host nil :repo "ssh://git.amazon.com:2222/pkg/Brief"))


;; amazon.el ;; -*- lexical-binding: t; -*- ;;
;; Work related config



(straight-use-package
  '(amz-brazil-config
    :type git
           :build t
           :post-build
           (copy-file "lisp/brazil-path-cache-artifacts"
                      (straight--build-dir "amz-brazil-config"))
           :repo "ssh://git.amazon.com/pkg/EmacsAmazonLibs"))

(require 'amz-common)

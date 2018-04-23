;;; 02-packages.el --- Install and configure packages

;;; Commentary:
;;;    You can configure your plugins here.

;;; Code:

;; Create repositories cache, if required
(when (not package-archive-contents)
  (package-refresh-contents))

;; Declare a list of required packages
(defvar init-my-packages
  '(better-defaults
    elpy            ;; Emacs Lisp Python Environment
    flycheck        ;; flycheck Python syntax-checking
    sublimity       ;; Smooth-scrolling, minimap
    ace-jump-mode   ;; Jump to letter with simple macro
    ace-window      ;; To be able to switch windows visually
    ztree           ;; Efficient directory tree comparison (ztree-diff)
    undo-tree       ;; Allows you to recover any past state of a buffer
    powerline       ;; To decorate your mode-line and make it more informative
    projectile      ;; Interaction library for Emacs
    use-package     ;; Allows you to isolate package configuration in your .emacs file
    magit
    treemacs
    treemacs-projectile
    git-gutter
    material-theme  ;; Charcoal theme
    all-the-icons)) ;; Icons pack (required for neo-theme)

;; Install required packages
(mapc #'(lambda (package)
      (unless (package-installed-p package)
        (package-install package)))
      init-my-packages)

(require 'sublimity-scroll)
(sublimity-mode)

(global-undo-tree-mode)

(autoload 'ace-jump-mode 
  "ace-jump-mode" 
  "Emacs quick move minor mode"
  t)

(autoload 'ace-jump-mode-pop-mark 
  "ace-jump-mode" 
  "Ace jump back:-"
  t)

;; Enable powerline
(powerline-center-theme)
(setq powerline-default-separator
'slant)

(use-package neotree
  :ensure t
  :bind (([f8] . treemacs-toggle)))


;;; 02-packages.el ends here

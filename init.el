;;; init.el --- Emacs configuration

;;; Commentary:
;;;    required:
;;;       pip install --user elpy jedi flake8 importmagic autopep8 yapf epc
;;;       M-x all-the-icons-install-fonts
;;;    This configuration was created from (Thanks you!):
;;;        https://codeandoando.com/emacs-como-entorno-de-desarrollo-para-python/
;;;        https://github.com/myTerminal/super-emacs/blob/master/.emacs.d/init.el


;;; Code:

(load-file "~/.emacs.d/emacs-config/01-repositories.el")
(load-file "~/.emacs.d/emacs-config/02-packages.el")


;; BASIC CUSTOMIZATION
;; -------------------------------------

(projectile-mode)

(load-theme 'material t) ;; load material theme

(global-linum-mode t) ;; enable line numbers globally
(global-flycheck-mode) ;; enable flycheck globally
 
;;(setq inhibit-startup-message t) ;; hide startup message
(setq neo-theme (if (display-graphic-p) 'icons 'arrow)) ;; require: M-x all-the-icons-install-fonts


;; PYTHON CONFIGURATION
;; -------------------------------------

(elpy-enable) ;; enable elpy

;; use flycheck, not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(python-shell-interpreter "python2.7"))
 '(python-shell-interpreter "python3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;; init.el ends here

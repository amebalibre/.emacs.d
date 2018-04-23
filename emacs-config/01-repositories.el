;;; 01-repositories.el --- This file add list of repositories for Emacs

;;; Commentary:
;;;     You can add here all repositories of you whisp.


;;; Code:
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;;; 01-repositories.el ends here

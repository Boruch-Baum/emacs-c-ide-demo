; init.el - for emacs_ide_demo
;
; Requirements:
;   GNU Global
; Options:
;   The default is to use `helm'. If you do not want this, comment out
;   the two lines (require 'setup-helm) and (require
;   'setup-helm-gtags), and uncomment line (require 'setup-ggtags).
; Usage:
;   cp emacs_ide_demo ~/.emacs.d/
;   M-x package-refresh-contents
;   M-x load-file ~/.emacs.d/init.el

(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)
(setq package-selected-packages
      "zygospore helm-gtags helm yasnippet ws-butler volatile-highlights use-package undo-tree iedit dtrt-indent counsel-projectile company clean-aindent-mode anzu")
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/emacs_ide_demo")

(require 'setup-general)
(if (version< emacs-version "24.4")
    (require 'setup-ivy-counsel)
  (require 'setup-helm)
  (require 'setup-helm-gtags)
; (require 'setup-ggtags)
  )
(require 'setup-cedet)
(require 'setup-editing)

; NOTES:
;
;   Not sure the purpose of variable `package-selected-packages'
;
;   Package 'function-args' was defined here. It tooltips C++ function
;   definitions/arguments. (functions: fa-show, fa-jump)
;     (require 'function-args)
;     (fa-config-default)
;   BTW: Compare to moo-complete (uses helm, though)
;     (functions moo-propose-virtual, moo-propose-override)

(setq gc-cons-threshold 100000000)

(add-hook 'prog-mode-hook
  (lambda () (interactive)
    (setq show-trailing-whitespace 1)))

;; Compilation
(global-set-key (kbd "<f5>")
  (lambda ()
    (interactive)
    (setq-local compilation-read-command nil)
    (call-interactively 'compile)))

(setq
   gdb-many-windows t
   gdb-show-main t ;; display source file containing 'main' at startup
   )

;; Package: company
(use-package company
  :init
  (global-company-mode 1)
  (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)


;; Package: projectile
(use-package projectile
  :init
  (projectile-global-mode)
  (setq projectile-enable-caching t))

;; Package zygospore
(use-package zygospore
  :bind (
    ("C-x 1" . zygospore-toggle-delete-other-windows)))

(global-set-key (kbd "C-c w") 'whitespace-mode)
(windmove-default-keybindings)

(provide 'setup-general)

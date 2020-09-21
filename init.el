(package-initialize)

(add-hook 'after-init-hook '(lambda ()
                              (load "~/.emacs.d/custom/my-packages.el")
                              (load "~/.emacs.d/custom/developer.el")
                              (load "~/.emacs.d/custom/general.el")
                              (load "~/.emacs.d/custom/key-bindings.el")))  ; Load your key-bindings file at the end - To prevent override

(setq python-shell-interpreter "/usr/local/bin/python3")
(load (expand-file-name "~/.quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/bin/sbcl") ;for slime






(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-major-mode (quote lisp-mode))
 '(package-selected-packages
   (quote
    (slime yasnippet-snippets which-key vterm vimish-fold use-package speed-type solarized-theme restart-emacs pdf-tools magit key-chord helm-projectile evil diminish company avy auto-complete)))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

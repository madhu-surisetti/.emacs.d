;; ===================================
;; MELPA Package Support
;; ===================================
;; Enables basic packaging support
(require 'package)

;; Adds the Melpa archive to the list of available repositories
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; Initializes the package infrastructure
(package-initialize)

;; If there are no archived package contents, refresh them
(when (not package-archive-contents)
  (package-refresh-contents))

(add-hook 'after-init-hook '(lambda ()
                               (load "~/.emacs.d/custom/packages.el")
                               (load "~/.emacs.d/custom/general.el")
                               (load "~/.emacs.d/custom/key-bindings.el")))  ; Load your key-bindings file at the end - To prevent override

(setq python-shell-interpreter "/usr/local/bin/python3")
(load (expand-file-name "~/.quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/local/bin/sbcl") ;for slime

;; for env variables

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(exec-path-from-shell-copy-env "PKG_CONFIG_PATH")

;; Emacs likes to strew its backup and temporary files everywhere. Lets give them a home in the temporary file directory
(defvar temporary-file-directory "~/.emacs.d/temps")
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; added by emacs customize

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-echo-area-message "charlie")
 '(nov-text-width 100)
 '(package-selected-packages
   '(nov eval-in-repl evil-lispy avy pdf-tools exec-path-from-shell evil magit slime diminish company which-key helm use-package restart-emacs))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "nil" :slant normal :weight normal :height 151 :width normal))))
 '(variable-pitch ((t (:height 1.4 :family "Liberation Serif")))))
(put 'narrow-to-region 'disabled nil)

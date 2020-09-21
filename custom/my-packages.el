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



;; ===================================
;; my-packages
;; ===================================

(use-package helm
  :ensure t
  :defer 2
  :bind
  ("M-x" . helm-M-x)
  ("C-x C-f" . helm-find-files)
  ("M-y" . helm-show-kill-ring)
  ("C-x b" . helm-mini)
  :config
  (require 'helm-config)
  (helm-mode 1)
  (setq helm-split-window-inside-p t
    helm-move-to-line-cycle-in-source t)
  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-min-height 20)
  (helm-autoresize-mode 1)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
  (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
  )

(use-package projectile
  :ensure t
  :diminish projectile-mode
  :bind
  (("C-. f" . helm-projectile-find-file)
   ("C-. p" . helm-projectile-switch-project)
   ("C-. e" . projectile-save-project-buffers))
  :config
  (projectile-mode +1)
)

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))



(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (which-key-mode +1))


(use-package speed-type
  :ensure t
  :init
  (add-to-list 'load-path "~/.emacs.d/speed-type/speed-type.el"))

(use-package company
  :ensure t
  :diminish company-mode
  :config
  (add-hook 'after-init-hook #'global-company-mode))


(use-package diminish
  :ensure t)


(use-package avy
  :ensure t
  :bind
  ("C-," . avy-goto-char)
  :config
  (setq avy-background t))




(use-package yasnippet                  ; Snippets
  :ensure t
  :config
  (setq
   yas-verbosity 1                      ; No need to be so verbose
   yas-wrap-around-region t)

  ;; (with-eval-after-load 'yasnippet
  ;;   (validate-setq yas-snippet-dirs '(yasnippet-snippets-dir)))

  (yas-reload-all)
  (yas-global-mode))

(use-package yasnippet-snippets         ; Collection of snippets
  :ensure t)

(use-package vterm
  :ensure t)

(use-package slime
  :ensure t)

(use-package magit
  :ensure t)

(use-package key-chord 
  :ensure t)

(use-package vimish-fold
  :ensure t)

(use-package solarized-theme
  :ensure t
  :init
  (load-theme 'solarized-dark t))

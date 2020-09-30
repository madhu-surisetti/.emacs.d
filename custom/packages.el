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






(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (which-key-mode +1))






(use-package company
  :ensure t)





(use-package diminish
	     :ensure t)




(use-package slime
	     :ensure t)




(use-package magit
	     :ensure t)




(use-package evil
  :ensure t
  :init
  (evil-mode))





(use-package avy
  :ensure t
  :config
  (setq avy-background t))




(use-package evil-lispy
  :ensure t)



(use-package eval-in-repl
  :ensure t)




(use-package nov
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode)))

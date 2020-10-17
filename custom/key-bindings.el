;; =====================================================================
;; Key Bindings
;; =====================================================================



(defmacro open-dir (directory)
  "use this for opening directores with key-bindings"
  `(lambda ()
     (interactive)
     (dired ,directory)))

;; (defun open-org-dir ()
;;   (interactive)
;;   (dired "~/org"))

;; (defun open-books-dir ()
;;   (interactive)
;;   (dired "~/repos/books"))

;; (defun open-init-dir ()
;;   (interactive)
;;   (dired "~/.emacs.d/custom"))

;; evil-mode
(define-key evil-motion-state-map " " nil)
(define-key evil-motion-state-map (kbd "SPC SPC") 'helm-M-x)
(define-key evil-motion-state-map (kbd "SPC q r") 'restart-emacs)
(define-key evil-motion-state-map (kbd "SPC q q") 'kill-emacs)
(define-key evil-motion-state-map (kbd "SPC e") 'avy-goto-char)
;; buffer-motion-related
(define-key evil-motion-state-map (kbd "SPC b") 'helm-mini)
(define-key evil-motion-state-map (kbd "SPC s") 'slime)
(define-key evil-motion-state-map (kbd "SPC j") 'evil-switch-to-windows-last-buffer)
(define-key evil-motion-state-map (kbd "SPC l") 'slime-compile-defun)
(define-key evil-motion-state-map (kbd "SPC k") 'other-window)
(define-key evil-motion-state-map (kbd "SPC d") 'dired)
(define-key evil-motion-state-map (kbd "SPC o i") (open-dir "~/.emacs.d/custom"))
(define-key evil-motion-state-map (kbd "SPC o u") (open-dir "~/repos/books"))
(define-key evil-motion-state-map (kbd "SPC o d") (open-dir "~/Downloads"))
(define-key evil-motion-state-map (kbd "SPC o r") (open-dir "~/repos"))
(define-key evil-motion-state-map (kbd "SPC o f") (open-dir "~/repos/fig"))
(define-key evil-motion-state-map (kbd "SPC 0") 'delete-window)
(define-key evil-motion-state-map (kbd "SPC 1") 'delete-other-windows)
(define-key evil-motion-state-map (kbd "SPC 2") 'split-window-below)
(define-key evil-motion-state-map (kbd "SPC 3") 'split-window-below)

;; file-related
(define-key evil-motion-state-map (kbd "SPC f s") 'save-buffer)
(define-key evil-motion-state-map (kbd "SPC f f") 'helm-find-files)
(define-key evil-motion-state-map (kbd "SPC f r") 'helm-recentf)

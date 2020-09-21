;; =====================================================================
;; Key Bindings
;; =====================================================================

(setq org-capture-templates		; org-caputre template definition
      '(("j" "Journal" entry (file+datetree "~/universe/org/journal.org") "* %?\nENTRY AT: %U\n\t%i")
        ("p" "Principles" entry (file+headline "~/org/principles.org" "Principles") "* %?\n")
        ("g" "GTD")
        ("gt" "Tasks" entry (file+headline "~/org/gtd.org" "Tasks") "* TODO %?\n\t%i OUTCOME: \n\tNEXT_ACTION: \n")
        ("gp" "Projects" entry (file+headline "~/org/gtd.org" "Projects") "* TODO %?\t[[file:~/org/projects/%^{Project File}.org]]  %i\n")
        ("gs" "Someday" entry (file+headline "~/org/gtd.org" "Someday") "* %?\n\t%i\n")
        ("gc" "Calendar" entry (file+headline "~/org/gtd.org" "Calendar") "* TODO %?\n\t%i\n SCHEDULED: %^t\n")
        ("gr" "Reference" entry (file+headline "~/org/gtd.org" "Reference") "* %?\n\t%i\n")
        ("n" "Quick Notes" entry (file+datetree "~/org/notes.org") "* %?\n\t%i\n")))


;; editing
(global-set-key "\M-o"        (lambda() (interactive) (end-of-visual-line) (newline))) ;; Start a NewLine from anywhere
;; motion




;; projectile
;; (global-set-key (kbd "C-. d") 'projectile-dired)


;; PdfView
(add-hook 'pdf-view-mode-hook
          (lambda ()
            (blink-cursor-mode -1)
            (local-set-key "n" 'pdf-view-next-page)
            (local-set-key "p" 'pdf-view-previous-page)
            (local-set-key "j" 'pdf-view-next-line-or-next-page)
            (local-set-key "k" 'pdf-view-previous-line-or-previous-page)))


;; These hard-coded-functions are defined because that's the only way i know to bind these actions to keys
(defun open-org-dir ()
  (interactive)
  (dired "~/org"))

(defun open-books-dir ()
  (interactive)
  (dired "~/Downloads/books"))

(defun open-init-dir ()
  (interactive)
  (dired "~/.emacs.d/custom"))


;; evil-mode
(evil-mode)
;; general
(define-key evil-motion-state-map " " nil)
(define-key evil-motion-state-map (kbd "SPC SPC") 'helm-M-x)
(define-key evil-motion-state-map (kbd "SPC q r") 'restart-emacs)
(define-key evil-motion-state-map (kbd "SPC q q") 'kill-emacs)
;; buffer-motion-related
(define-key evil-motion-state-map (kbd "SPC b") 'helm-mini)
(define-key evil-motion-state-map (kbd "SPC s") 'slime)
(define-key evil-motion-state-map (kbd "SPC j") 'evil-switch-to-windows-last-buffer)
(define-key evil-motion-state-map (kbd "SPC l") 'next-buffer)
(define-key evil-motion-state-map (kbd "SPC k") 'other-window)
(define-key evil-motion-state-map (kbd "SPC d") 'dired)
(define-key evil-motion-state-map (kbd "SPC o o") 'open-org-dir)
(define-key evil-motion-state-map (kbd "SPC o u") 'open-books-dir)
(define-key evil-motion-state-map (kbd "SPC o i") 'open-init-dir)
;; file-related
(define-key evil-motion-state-map (kbd "SPC f s") 'save-buffer)
(define-key evil-motion-state-map (kbd "SPC f f") 'helm-find-files)
(define-key evil-motion-state-map (kbd "SPC f r") 'helm-recentf)
;; lisp-related
(add-hook 'lisp-mode-hook
          (lambda ()
            (company-mode)
            (vimish-fold-mode 1)
            (evil-local-set-key 'normal (kbd "s j") 'slime-compile-defun)
            (evil-local-set-key 'normal (kbd "s e") 'slime-edit-definition)
            (evil-local-set-key 'normal (kbd "s l") 'slime-close-all-parens-in-sexp)
            (evil-local-set-key 'normal (kbd "s f") 'vimish-fold)
            (evil-local-set-key 'normal (kbd "s d") 'vimish-fold-delete)
            (evil-local-set-key 'motion (kbd "w") 'evil-jump-item)
            (evil-local-set-key 'motion (kbd "e") 'evil-end-of-line)))



;; ;; org-mode
;; (require 'org)
(define-key evil-motion-state-map (kbd "SPC h k") 'org-capture)
(define-key evil-motion-state-map (kbd "SPC h l") 'org-store-link)
(define-key evil-motion-state-map (kbd "SPC h a") 'org-agenda)
;; (global-set-key "\C-cc" 'org-capture)	;org-capture hot-key
;; (global-set-key "\C-cl" 'org-store-link)
;; (global-set-key "\C-ca" 'org-agenda)

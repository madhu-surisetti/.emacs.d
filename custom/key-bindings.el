;; =====================================================================
;; Key Bindings
;; =====================================================================

(defmacro open-dir (directory)
  "use this for opening directores with key-bindings"
  `(lambda ()
     (interactive)
     (dired ,directory)))

(defmacro evil-keymaps (state keymap-lst)
  `(progn
     ,(dolist (keymap keymap-lst)
        (define-key (cond ((eq state 'motion) evil-motion-state-map)
                          ((eq state 'insert) evil-insert-state-map))
          (kbd (car keymap)) (cadr keymap)))))

;; evil-mode
(define-key evil-motion-state-map " " nil)
(evil-keymaps motion
              (("SPC SPC" helm-M-x)
               ("SPC q r" restart-emacs)
               ("SPC q q" kill-emacs)
               ("SPC e" avy-goto-char)
               ;; git
               ("SPC g g" magit-status)
               ("SPC g i" magit-init)
               ("SPC g s" magit-stage)
               ("SPC g c" magit-commit)
               ("SPC g p" magit-push)
               ("SPC g l" magit-clone)
               ("SPC g r" magit-remote-add)
               ("SPC g u" magit-pull)
               ;; buffer-motion-related
               ("SPC b" helm-mini)
               ("SPC s" slime)
               ("SPC j" evil-switch-to-windows-last-buffer)
               ("SPC l" slime-compile-defun)
               ("SPC k" other-window)
               ("SPC d" dired)
               ("SPC 0" delete-window)
               ("SPC 1" delete-other-windows)
               ("SPC 2" display-buffer)
               ("SPC 3" split-window-right)
               ;; file-related
               ("SPC f s" save-buffer)
               ("SPC f f" helm-find-files)
               ("SPC f r" helm-recentf)))


;; directory-jumping
(define-key evil-motion-state-map (kbd "SPC o i" ) (open-dir "~/.emacs.d/custom"))
(define-key evil-motion-state-map (kbd "SPC o u" ) (open-dir "~/repos/books"))
(define-key evil-motion-state-map (kbd "SPC o d" ) (open-dir "~/Downloads"))
(define-key evil-motion-state-map (kbd "SPC o r") (open-dir "~/repos"))
(define-key evil-motion-state-map (kbd "SPC o f") (open-dir "~/repos/fig"))

(evil-keymaps insert
              (("<f8>" evil-normal-state)))

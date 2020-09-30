;; ===================================
;; Basic Customization
;; ===================================

(setq user-full-name "madhu-surisetti"
      user-mail-address "madhu4surisetti@gmail.com")
(fset 'yes-or-no-p 'y-or-n-p)		;; yes-or-no to y-or-n
(global-auto-revert-mode t)		;; Emacs to reload the file automatically when edited outside
(setq-default tab-width 4
              indent-tabs-mode nil)
(setq next-line-add-newlines t)				    ;; C-n adds new lines
(toggle-frame-fullscreen)		;; Start Emacs in FullScreen
(global-hl-line-mode +1)		; highlight the line you're in
;; (setq inhibit-startup-message t)    ;; Hide the startup message
(when (fboundp 'scroll-bar-mode)    ;; disable scroll bar
  (scroll-bar-mode -1))



;; for using pdf-view-mode for pdfs
(use-package pdf-tools
 :pin manual ;; manually update
 :config
 ;; initialise
 (pdf-tools-install)
 ;; open pdfs scaled to fit page
 (setq-default pdf-view-display-size 'fit-page)
 ;; automatically annotate highlights
 (setq pdf-annot-activate-created-annotations t)
 ;; use normal isearch
 (define-key pdf-view-mode-map (kbd "/") 'isearch-forward)
 ;; turn off cua so copy works
 (add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
 ;; more fine-grained zooming
 (setq pdf-view-resize-factor 1.1)
 ;; keyboard shortcuts
 (add-hook 'pdf-view-mode-hook
           (lambda ()
	     (linum-mode -1)
	     (cua-mode 0)
	     (blink-cursor-mode -1)
             (local-set-key "n" 'pdf-view-next-page)
             (local-set-key "p" 'pdf-view-previous-page)
             (local-set-key "j" 'pdf-view-next-line-or-next-page)
             (local-set-key "k" 'pdf-view-previous-line-or-previous-page)
 (define-key pdf-view-mode-map (kbd "h") 'pdf-annot-add-highlight-markup-annotation)
 (define-key pdf-view-mode-map (kbd "t") 'pdf-annot-add-text-annotation)
 (define-key pdf-view-mode-map (kbd "D") 'pdf-annot-delete))))





;; for dealing with lisp mode
(add-hook 'lisp-mode-hook (lambda ()
                            (evil-lispy-mode 1)
                            (local-set-key (kbd "<C-return>") 'eir-eval-in-slime)
                            (slime-mode 1)))

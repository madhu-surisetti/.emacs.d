;; ===================================
;; Basic Customization
;; ===================================

(setq user-full-name "madhu-surisetti"
      user-mail-address "madhu4surisetti@gmail.com")

(setq gc-cons-threshold 50000000)	      ;; garbage collection threshold
(setq large-file-warning-threshold 100000000) ;; file size warning threshold

;; (setq inhibit-startup-message t)    ;; Hide the startup message
(toggle-frame-fullscreen)		;; Start Emacs in FullScreen
(global-hl-line-mode +1)		; highlight the line you're in
;; (setq mac-function-modifier 'meta)      ; Set Meta Key to Super
;; (setq mac-option-modifier nil)          ; Set Meta Key to Super
(setq next-line-add-newlines t)				    ;; C-n adds new lines
(toggle-frame-fullscreen)		;; Start Emacs in FullScreen
(fset 'yes-or-no-p 'y-or-n-p)		;; yes-or-no to y-or-n
(global-auto-revert-mode t)		;; Emacs to reload the file automatically when edited outside
(setq-default tab-width 4
              indent-tabs-mode nil)



;; Emacs likes to strew its backup and temporary files everywhere. Lets give them a home in the temporary file directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Disable Scroll Bar
;; (when (fboundp 'scroll-bar-mode)
;;   (scroll-bar-mode -1))

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
 (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)
 ;; turn off cua so copy works
 (add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
 ;; more fine-grained zooming
 (setq pdf-view-resize-factor 1.1)
 ;; keyboard shortcuts
 (define-key pdf-view-mode-map (kbd "h") 'pdf-annot-add-highlight-markup-annotation)
 (define-key pdf-view-mode-map (kbd "t") 'pdf-annot-add-text-annotation)
 (define-key pdf-view-mode-map (kbd "D") 'pdf-annot-delete))

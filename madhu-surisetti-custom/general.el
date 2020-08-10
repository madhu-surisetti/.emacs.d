;; ===================================
;; Basic Customization
;; ===================================

(setq user-full-name "Madhu Surisetti"
      user-mail-address "flyabovetheclouds.rf@gmail.com")

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


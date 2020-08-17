;; =====================================================================
;; Key Bindings
;; =====================================================================

;; org-mode
(require 'org)
(global-set-key "\C-cc" 'org-capture)	;org-capture hot-key
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

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
;; org-mode


;; editing
;; (define-key global-map [(shift backspace)] 'kill-whole-line)
(global-set-key "\M-o"        (lambda() (interactive) (end-of-visual-line) (newline))) ;; Start a NewLine from anywhere
;; editing


;; projectile
(global-set-key (kbd "C-. d") 'projectile-dired)
;; projectile


;; PdfView
(add-hook 'pdf-view-mode-hook
          (lambda ()
            (local-set-key "\C-n" 'pdf-view-next-page)
            (local-set-key "\C-p" 'pdf-view-previous-page)
            (local-set-key "n" 'pdf-view-next-line-or-next-page)
            (local-set-key "p" 'pdf-view-previous-line-or-previous-page)))
;; PdfView

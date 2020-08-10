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
	("p" "Principles")
	("pw" "Work" entry (file+headline "~/universe/org/principles.org" "Work") "* %?\n")
	("pm" "Wealth" entry (file+headline "~/universe/org/principles.org" "Wealth") "* %?\n")
	("po" "Outcasts" entry (file+headline "~/universe/org/principles.org" "Outcasts") "* %?\n")
	("g" "GTD")
	("gg" "Goals" entry (file+headline "~/universe/org/goals.org" "Goals") "* TODO %?\nEntry At: %U\n\t%i")
	("gt" "Tasks" entry (file+headline "~/universe/org/gtd.org" "Tasks") "* TODO %?\n\t%i OUTCOME: \n\tNEXT_ACTION: \n")
	("gp" "Projects" entry (file+headline "~/universe/org/gtd.org" "Projects") "* TODO %?\t[[file:~/universe/org/projects/%^{Project File}.org]]  %i\n")
	("gs" "Someday" entry (file+headline "~/universe/org/gtd.org" "Someday") "* %?\n\t%i\n")
	("gc" "Calendar" entry (file+headline "~/universe/org/gtd.org" "Calendar") "* TODO %?\n\t%i\n SCHEDULED: %^t\n")
	("gk" "Tickler" entry (file+headline "~/universe/org/gtd.org" "Tickler") "* %?\n\t%i\n")
	("gr" "Reference" entry (file+headline "~/universe/org/gtd.org" "Reference") "* %?\n\t%i\n")
	("gh" "Trash" entry (file+headline "~/universe/org/gtd.org" "Trash") "* %?\n\t%i\n")
	("n" "Quick Notes" entry (file+datetree "~/universe/org/notes.org") "* %?\n\t%i\n  %a")))
;; org-mode


;; editing
;; (define-key global-map [(shift backspace)] 'kill-whole-line)
(global-set-key "\M-o"        (lambda() (interactive) (end-of-visual-line) (newline))) ;; Start a NewLine from anywhere
;; editing


;; projectile
(global-set-key (kbd "C-. d") 'projectile-dired)
;; projectile

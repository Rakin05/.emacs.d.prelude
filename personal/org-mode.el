(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Felix/gtd.org" "Eingang")
         "* TODO %?\n  %i\n ")
        ("j" "Journal" entry (file+datetree "~/Felix/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")))

(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
(setq org-todo-keyword-faces
      '(("TODO" . (:foreground "red" :weight bold))
        ("IN-PROGRESS" . "purple")
        ("WAITING" . "blue")
        ("DONE" . "green")))

(setq org-agenda-files '("~/Felix/gtd.org"))

(define-key global-map (kbd "C-x t") (lambda () (interactive) (org-capture nil "t")))

(define-key global-map (kbd "<f5>") (lambda () (interactive) (find-file "~/Felix/gtd.org")))

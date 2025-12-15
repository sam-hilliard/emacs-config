;; ~/.emacs.d/org-settings.el

(setq org-directory "~/Documents/notes/org")

(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(setq org-default-notes-file
      (expand-file-name "projects.org" org-directory))

(setq org-agenda-files
      (list (expand-file-name "projects.org" org-directory)))

(setq org-refile-targets
      `((,(expand-file-name "projects.org"   org-directory) :maxlevel . 1)
        (,(expand-file-name "areas.org"     org-directory) :maxlevel . 1)
        (,(expand-file-name "resources.org" org-directory) :maxlevel . 1)))

(setq org-refile-allow-creating-parent-nodes 'confirm)
(setq org-refile-use-outline-path 'file)

(setq org-archive-location
      (concat (expand-file-name "archive.org" org-directory)
              "::* Archived Tasks"))

(setq org-todo-keywords
      '((sequence
         "TODO(t)"
         "IN-PROGRESS(i)"
         "WAITING(w)"
         "SOMEDAY(s)"
         "REPEAT(r)"
         "|"
         "DONE(d)"
         "CANCELLED(c)")))

(setq org-todo-keyword-faces
      '(("TODO"        . (:foreground "#9d0006" :weight bold))
        ("IN-PROGRESS" . (:foreground "#b57614" :weight bold))
        ("WAITING"     . (:foreground "#076678" :weight bold))
        ("SOMEDAY"     . (:foreground "#8f3f71" :weight bold))
        ("REPEAT"      . (:foreground "#af3a03" :weight bold))
        ("DONE"        . (:foreground "#79740e" :weight bold))
        ("CANCELLED"   . (:foreground "#928374" :weight bold))))

;; Open projects.org file at startup
(find-file (expand-file-name "projects.org" org-directory))

(defun deploy-pewo()
  (interactive)
  (async-shell-command "bash ~/Projekte/pewo/deploy.sh"))

(define-key global-map (kbd "C-x <f5>") 'deploy-pewo)

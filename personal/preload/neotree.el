(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)

;; When running `projectile-switch-project' (C-c p p), `neotree' will not change root automatically.
(setq projectile-switch-project-action 'neotree-projectile-action)

;; NeoTree can be opened (togged) at projectile project root as follows:
(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (neotree-toggle)
    (if project-dir
        (if (neo-global--window-exists-p)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))

(add-hook 'neo-change-root-hook
          (lambda () (neo-buffer--with-resizable-window
                      (let ((fit-window-to-buffer-horizontally t))
                        (fit-window-to-buffer)))))

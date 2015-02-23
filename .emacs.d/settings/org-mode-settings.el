;--------------;
;;; org-mode ;;;
;--------------;

;; Set up reftex to work with org-mode
(defun org-mode-reftex-setup ()
  (load-library "reftex")
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (reftex-parse-all))
  (define-key org-mode-map (kbd "C-c (") 'reftex-citation))

(add-hook 'org-mode-hook 'org-mode-reftex-setup)
(add-hook 'org-mode-hook 'turn-on-auto-fill)
(add-hook 'org-mode-hook (fci-mode 1))

(provide 'org-mode-settings)

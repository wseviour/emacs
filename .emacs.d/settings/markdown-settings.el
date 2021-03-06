;-------------------;
;;; Markdown mode ;;;
;-------------------;

(include-plugin "markdown-mode")
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (append 
       (list '("\\.text" . markdown-mode) 
	     '("\\.md" . markdown-mode) 
	     '("\\.markdown" . markdown-mode) 
	     )
       auto-mode-alist))

(add-hook 'markdown-mode-hook
	  (lambda ()
	    (turn-on-auto-fill)
            (fci-mode 1)))


(provide 'markdown-settings)

;-------------------;
;;; Markdown mode ;;;
;-------------------;

(require 'reftex)

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

;;; Code:
(defvar reftex-cite-format-markdown
  '((?\C-m . "[@%l]")
    (?k . "@%l")
    )
        "Reftex citation format compatible with pandoc markdown.")



(provide 'markdown-settings)

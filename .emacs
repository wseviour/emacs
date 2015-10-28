;; Fix cl-lib for emacs 23
;; http://stackoverflow.com/questions/20678847/cannot-load-cl-lib-at-emacs-startup
;;(add-to-list 'load-path "~/.emacs.d/cl-lib/")
;;(require 'cl-lib)

;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")
;; path to where plugins are kept
(setq plugin-path "~/.emacs.d/el-get/")

;; define various custom functions
(require 'custom-functions)

;; configure general settings
(require 'general-settings)

;; install dependencies with el-get
(require 'el-get-settings)

;; set windmove keybindings
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;---------------;
;;; Utilities ;;;
;---------------;

;; Git
(include-plugin "magit")
(require 'magit)

;; Popup
(include-elget-plugin "popup")
(require 'popup)

;; Websocket
(include-plugin "websocket")
(require 'websocket)

;; Request
(include-plugin "request")
(require 'request)

;; yasnippet
;; (require 'yasnippet-settings)

;; Fill column indicator
(require 'fill-column-indicator)
(setq fci-rule-width 1)
(setq fci-rule-color "grey20")
(setq-default fill-column 80)

;; Auto complete
(require 'auto-complete-settings)

;; Camelcase functions
(require 'camelcase-settings)

;; Helm
(require 'helm-settings)


;-----------;
;;; Modes ;;;
;-----------;

;; CUA mode 
;; (cua-mode t)
;; (setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
;; (transient-mark-mode 1) ;; No region when it is not highlighted
;; (setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; Ido mode
(require 'ido)
(ido-mode 1)

;; MuMaMo
(require 'mumamo-settings)

;; Markdown mode
(require 'markdown-settings)

;; Python mode 
(require 'python-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; Org-mode
(require 'org-mode-settings)

;; SCSS Mode
;; (require 'scss-settings)

;; Matlab mode
;; (require 'matlab-settings)

;; Javascript
;; (require 'js-settings)

;; Nyancat mode!
;; (nyan-mode 1)



;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)


; Octave mode for Matlab
(setq auto-mode-alist
      (cons
       '("\\.m$" . octave-mode)
              auto-mode-alist))

           



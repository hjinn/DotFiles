;; default
;cscope
(require 'xcscope)
;mercurial
(require 'mercurial)
(require 'mq)
(load "/usr/share/emacs/site-lisp/mercurial.el")

;; Load CEDET
(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")
;(setq semanticdb-default-save-director "~/.semanticdb/")
;(semantic-add-system-include "/usr/include/" 'c++-mode)
(global-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
(global-set-key [(control shift return)] 'semantic-complete-analyze-inline)
(global-ede-mode 1)
(semantic-load-enable-code-helpers)

; python
(add-hook 'python-mode-hook
	  (function (lambda ()
		      (setq indent-tabs-mode 1
			    )
		    )
	  )
)

;cscope
;(load "/usr/share/emacs/site-lisp/xcscope.el")

;php-mode
;(autoload 'php-mode "php-mode.el" "Php mode." t)
;(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))
(load "~/.emacs.d/nxhtml/autostart.el")


;; hangul related
;(when enable-multibyte-characters
;  (set-language-environment "Korean")
;)  


;; hangul printing for ps-mule.el
(setq-default ps-multibyte-buffer 'non-latin-printer)


;; etc
;(setq process-connection-type nil)
(setq make-backup-files nil)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-default-style (quote ((c-mode . "K&R") (c++-mode . "K&R") (java-mode . "java") (other . "gnu"))))
 '(current-language-environment "Korean")
 '(jde-debugger (quote ("JDEbug")))
 '(jde-sourcepath (quote ("$JAVA_HOME/share/src/" "./")))
 '(menu-bar-mode nil)
 '(org-todo-keywords (quote ((sequence "TODO" "DONE" "ING"))))
 '(safe-local-variable-values (quote ((c-set-style . "linux") (c-set-style . "BSD"))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil nil (tool-bar)))

;; utf-8 related
;; must be declared after the language-evironment declaration
(setq-default file-name-coding-system 'utf-8)
(setq input-method-verbose-flag nil
      input-method-highlight-flag nil)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)


;;org-mode related
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cb" 'org-iswitchb)
(setq org-log-done t)
(setq org-agenda-files (list "~/personal/org/work.org" "~/personal/org/personal.org"))
(defun gtd ()
  (interactive)
  (find-file "~/personal/org/work.org")
)


;; decoration related
(setq font-lock-maximum-decoration t)
(global-font-lock-mode t)
(set-default-font "DejaVu Sans")
(set-fontset-font "fontset-default" 'hangul '("Guseul" . "unicode-bmp"))
;(set-fontset-font t 'hangul (font-spec :family "Guseul-12"))
;(set-cursor-color "#AAAAAA")


;; SLIME (lisp) related
(setq inferior-lisp-program "sbcl")
;(add-to-list 'load-path "~/.emacs.d/slime")
(require 'slime)
(slime-setup)


;; Twittering-mode related
(load "~/.emacs.d/twittering-mode.el")
(require 'twittering-mode)
;(setq twittering-username "USERNAME")

;; android related
(require 'android-mode)
(setq android-mode-sdk-dir "/opt/android-sdk/")
;(setq android-mode-avd "foo")


;; icicles related
;(load "~/.emacs.d/menu-bar+.el")
(load "~/.emacs.d/lacarte.el")
(require 'icicles)
(eval-after-load "ring" '(progn (require 'ring+)))
;;(global-set-key (kbd "M-`") 'tmm-menubar)


;; etags-select
;;(load "~/.emacs.d/etags-select.el")

;; resize shortcut
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'shrink-window)
(global-set-key (kbd "S-C-<down>") 'enlarge-window)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "bitstream" :family "Monospace"))))
 '(mode-line ((t (:background "grey16" :foreground "#AAAAAA" :box (:line-width -1 :color "grey32"))))))
; '(region ((((class color) (min-colors 88) (background dark)) (:background "skyblue4")))))


					;Author @saprative
					;Email: saprative@gmail.com
					;List of Packages

					;Packages
(setq package-list '(evil))
(setq  package-archives '(("gnu" . "https://elpa.gnu.org/packages/") 
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(add-to-list 'package-archives
	                  '("melpa" . "http://melpa.org/packages/"))

					; Require packages
;; Package Init
(package-initialize)
;;Install evil mode
(require 'evil)
(evil-mode 1)
(add-to-list 'evil-emacs-state-modes 'nav-mode)
(setq evil-motion-state-modes (append evil-emacs-state-modes evil-motion-state-modes))
(setq evil-emacs-state-modes nil)
(require 'auto-complete-config)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
;; Solarized theme
(require 'solarized-dark-theme )
(set-frame-font '"Droid Sans Mono-18")
(require 'org)
;; Powerline module 
(require 'powerline)
(powerline-default-theme)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(require 'evil-leader)



					; install the missing packages
;; Packages install 
(dolist (package package-list)
  (unless (package-installed-p package)
        (package-install package)))
;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))



					; Configuaration
;; Org mode global keys
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
;; Switch of emacs toolbar
(tool-bar-mode -1)
;; Evil
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer)
;; Org mode
(setq org-agenda-files (list "~/org/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("/Users/saprativejana/org/TODO.org" "/Users/saprativejana/org/android.org" "/Users/saprativejana/org/test.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Limit lines to 80
(setq visual-line-mode)
;;(setq longlines-wrap-follows-window-size)

(find-file "~/org/") 

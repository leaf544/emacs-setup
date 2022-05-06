;; REQUIREMENTS 

(require 'cl-lib)
(require 'org)
;; (set-face-attribute 'default nil :background "#000000")
;; LOAD EXTERNAL FILES

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(load "~/functions.el")
(load "~/hooks.el")
(load "~/key.el")
(load "~/base.el")

(load "~/lib-el/reader.el")
(load "~/leafimage/leaf-image.el")
(load "~/journal/days.el")

(defvar font "Iosevka Medium Extended")
(defvar theme 'migrainity)

;; ON START-UP

(when t
   
  (fset 'quran-formatter
        (kmacro-lambda-form [?\C-  ?\C-e ?\M-q return ?\C-n] 0 "%d"))
  
  (put 'narrow-to-region 'disabled nil)
  (add-to-list 'load-path "~/.emacs.d/elpa/powerline-20220122.1904/")
  (require 'powerline)
  (add-to-list 'load-path "~/.emacs.d/elpa/org-bullets-20200317.1740/")
  (require 'org-bullets)

  (leaf/org-init)
  (org-display-inline-images t t)
  
  (if (< (length command-line-args) 2)
      (progn
        (find-file "~/start.org")
        (revert-buffer t t)))
  
  (powerline-default-theme)
  (end-of-buffer)

  (if theme
      (load-theme theme t))

  (if font
      (set-face-attribute 'default nil :family font))

  (when window-system (set-fontset-font "fontset-default" '(#x600 . #x6ff) "Janna LT Bold"))
  (use-package magit :ensure t)
  )

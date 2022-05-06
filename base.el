(load "~/package.el")

(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)
(setq make-backup-files nil)

(setq-default message-log-max 1000)
(kill-buffer "*Messages*")

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-set-style "k&r")
(setq c-basic-offset 4)

;;(setq ring-bell-function 'ignore) ;; Turn off windows sounds
(set-fringe-mode 0)
;; (set-face-attribute 'fringe nil :background "#12151a" :foreground "#12151a")
;; (set-face-attribute 'vertical-border nil :background "#12151a" :foreground "#12151a")

(tool-bar-mode -1) ;; Disable tool bar
(menu-bar-mode -1) ;; Disable menu bar
(toggle-scroll-bar -1) ;; Disable scroll bar
(electric-pair-mode 1)

(toggle-frame-maximized) ;; Maximize emacs on startup

(put 'scroll-left 'disabled nil)
(put 'erase-buffer 'disabled nil)

(global-auto-revert-mode t) ;; Automatic buffer revert 

(add-to-list 'display-buffer-alist '("*Async Shell Command*" display-buffer-no-window (nil)))
(when window-system (set-fontset-font "fontset-default" '(#x600 . #x6ff) "Amiri Quran")) ;; Qur'an support
(add-hook 'prog-mode-hook #'hs-minor-mode)
(setq default-directory "~/")
(setq kill-buffer-query-functions (delq 'process-kill-buffer-query-function kill-buffer-query-functions))

(put 'async-bytecomp-package-mode 'disabled t)
(recentf-mode)
(setq recentf-max-saved-items 30)


(setq-default org-adapt-indentation t)

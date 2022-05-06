;; REQUIREMENTS

(require 'cl-lib)

;; LOAD EXTERNAL FILES

(load "~/jsupport.el")
;; (load "~/articles.el")
(load "~/read-only-buffers.el")
;; (load "~/cpp-boiler.el")

;; HIGH PRIORITY

;;(add-hook 'c-mode-common-hook 'leaf/on-c-buffer)
;; (add-hook 'find-file-hook 'leaf/on-read-only-buffer)
(add-hook 'org-mode-hook 'leaf-on-open-journal)
;; (add-hook 'org-mode-hook 'leaf-on-open-article)

;; LOW PRIORITY

(add-hook 'emacs-lisp-mode-hook 'leaf/elisp-setup)

(add-hook 'eww-mode-hook 'linum-mode)
(add-hook 'exercise-mode-hook 'leaf/sensible-zoom)
(add-hook 'buffer-menu-mode-hook 'leaf/sensible-zoom)
(add-hook 'find-file-hook 'leaf/kill-scratch)

(setq exercise-mode-syntax-highlights
      '(("#INT\\|#CHAR\\|#BOOL" . font-lock-type-face)
        ("%" . font-lock-string-face)
        ("/" . font-lock-comment-face)
        ("/" . font-lock-comment-delimiter-face)))
  
(define-derived-mode exercise-mode fundamental-mode "Exercise-Mode"
  "Lose that APT, dawg."
  (setq font-lock-defaults '(exercise-mode-syntax-highlights)))

(add-to-list 'auto-mode-alist '("\\.newage\\'" . exercise-mode))
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

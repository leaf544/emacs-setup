(load "~/package.el")
(require 'package)
(require 'org)

(defvar cmd "cd ~/Downloads/tor-browser_ar/ && ./start-tor-browser.desktop ")

(defun leaf/compile-cpp-gpp ()
  "Compiles cpp programs via the GCC compiler"
  (interactive)
  (let ((compile-mode (read-string "Compile Mode: "))
        (links)
        (compile-command))
    (cond
     ((string= compile-mode "0")
      (setq compile-command (concat "g++ " (buffer-file-name) " -o main_exec && ./main_exec';"))
      (shell-command compile-command))
     ((string= compile-mode "1")
      (setq links (read-string "Links: "))
      (setq compile-command (concat "g++ " (buffer-file-name) " " links " -o main_exec.exe && start main_exec.exe"))
      (shell-command compile-command)))))

(defun leaf/explorer-here ()
  "Opens up the explorer in your current directory"
  (interactive)
  (shell-command "nemo ."))

(defun leaf/except-close ()
  "Kills all buffers except the one you're working in, useful for organizing" 
  (interactive)
  (delete-other-windows)
  (let ((work-buffer (buffer-name))
        (marked-buffer))
    (next-buffer)
    (while (not (string= (buffer-name) work-buffer))
      (setq marked-buffer (get-buffer (buffer-name)))
      (kill-buffer marked-buffer)
      (next-buffer)))
  (message "%s" "Killed all buffers"))

(defun leaf/updated-revert ()
  "For dired"
  (interactive)
  (revert-buffer t t))

(defun leaf/motivate-me ()
  "Helps me turn into a sigma"
  (interactive)
  (let ((temp t))
    (dolist (file (reverse (directory-files "C:/Users/doode/Desktop/motivation")))
      (when (not (string-equal (substring file 0 1) "."))
        (find-file (concat "F:/motivation" "/" file))))))

;; (defun leaf/mark-open ()
;;   "Mark open"
;;   (interactive)
;;   (setq MARKED t)
;;   (shell-command (concat "echo " (buffer-file-name) " > " "f:/emacs/last.txt " (number-to-string text-scale-mode-amount) " "(number-to-string (line-number-at-pos)))))

(defun leaf/org-init ()
  "Org customizations"
  (setq org-hide-emphasis-markers t)
  (setq org-return-follows-link t)
  (transient-mark-mode t)
  (setq org-startup-folded nil)
  (setf (cdr (assoc 'file org-link-frame-setup)) 'find-file)
  (add-hook 'org-mode-hook 'leaf/sensible-zoom))

(defun leaf/sensible-zoom ()
  "Zoom into files according to common sense"
  (let ((nline (line-number-at-pos (point-max))))
    (when (> (/ nline 61) 1)
      (dotimes (i (/ nline 61))
        (text-scale-increase 0.4)))
    (unless (> (/ nline 61) 1)
      (text-scale-increase 2))))

(defun leaf/minibuffer-setup ()
  (text-scale-increase 0) ;; so text-scale-mode-amount doesn't fuck us in the ass
  (unless (> text-scale-mode-amount 2)
    (set-face-attribute 'minibuffer-prompt nil :height 190)
    (text-scale-increase 2.8)
    (setq MINIBUFFER-AWAKE t)))

(defun leaf/elisp-setup ()
  ;; (leaf/sensible-zoom)
  (electric-pair-mode t))

(defun na ()
  (async-shell-command "start F:/NewAge/NewAge.exe"))

(defun leaf/tasks-buffer ()
  (interactive)
  (split-window-horizontally)
  (find-file "~/btasks.org"))

(defun leaf/hehe ()
  (interactive)
  (setq page (read-string "Page: "))
  (setq line "")

  (if (= (line-beginning-position) (point))
      (setq line (buffer-substring-no-properties (line-beginning-position) (line-end-position)))
    (setq line (buffer-substring-no-properties (line-beginning-position) (point))))
  
  (setq alter (concat (substring line 0 (- (length line) 1)) page))

  (setq cmd "cd ~/Downloads/tor-browser_ar/ && ./start-tor-browser.desktop ")
  
  (if (not (string= "" page))
      (shell-command (concat cmd alter))
    (shell-command (concat cmd line))))
  


;; (defun leaf/hehe ()
;;   (interactive)
;;   (async-shell-command (concat "/home/leaf/Downloads/tor-browser_ar/Browser/./firefox " (buffer-substring-no-properties (line-beginning-position) (line-end-position)))))

(defun leaf/kill-scratch ()
  (interactive)
  (when (get-buffer "*scratch*")
    (kill-buffer "*scratch*")))

;; (defun leaf/panes ()
;;   (interactive)
;;   (delete-other-windows)
;;   (leaf/kill-scratch)
;;   (find-file "~/reminders.org")
;;   (find-file "~/btasks.org")  
;;   (split-window-right)
;;   (switch-to-buffer-other-window "reminders.org")
;;   (split-window-below)
;;   (other-window 1)
;;   (find-file "~/stasks.org")
;;   (end-of-buffer)
;;   (switch-to-buffer-other-window "btasks.org")
;;   (end-of-buffer))

(defun leaf/panes ()
  (interactive)
  (delete-other-windows)
  (leaf/kill-scratch)
  (find-file "~/journal/reminders.org")
  (find-file "~/journal/tasks.org")
  (split-window-right)
  (switch-to-buffer-other-window "reminders.org")
  (switch-to-buffer-other-window "tasks.org")
  (end-of-buffer))

(defun leaf/kill-all ()
  (interactive)
  (switch-to-buffer "*scratch*")
  (leaf/except-close))
  
(defun tor-link (pre)
  (interactive)
  (setq search (read-string "Link: " pre))
  (shell-command (concat cmd search)))

(defun tor-search ()
  (interactive)
  (setq search (read-string "Search query: "))
  (setq search (concat "https://duckduckgo.com/?q=" (subst-char-in-string ?\s ?+ search)))
  (shell-command (concat cmd search)))


(defun dark ()
  (interactive)
  (leaf/updated-revert)
  (disable-theme 'migrainity-light)
  (load-theme 'migrainity t))

(defun light ()
  (interactive)
  (leaf/updated-revert)
  (disable-theme 'migrainity)
  (load-theme 'migrainity-light t))

(defun better-copy ()
  (interactive)
  (kill-ring-save (point) (line-end-position)))

(defun empty-buffer ()
  (interactive)
  (print (buffer-size))
  )

(defun iro ()
  (interactive)
  (print buffer-read-only)
  )

(defun goto-verse ()
  (interactive)
  (setq look-for (read-string "Verse: "))
  (setq components (split-string look-for ":"))
  (find-file (concat "~/quran/" (car components) ".txt"))
  (search-forward look-for)
  (beginning-of-line))

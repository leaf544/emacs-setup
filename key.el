;; LOAD EXTERNAL FILES

;; (load "~/articles.el")
(load "~/network/connect.el")
(load "~/jsupport.el")

;; KBD KEYS

(global-set-key (kbd "M-s") 'leaf/compile-cpp-gpp)
(global-set-key (kbd "C-;") 'leaf/explorer-here)
(global-set-key [(meta up)] 'leaf/except-close)
(global-set-key (kbd "C-h C-j") 'leaf/updated-revert)
(global-set-key (kbd "C-=") 'delete-other-windows)
(global-set-key (kbd "C-c C-'") 'leaf/mark-open)
(global-set-key (kbd "M-[") 'shell)
(global-set-key (kbd "M-]") 'restart-emacs)
(global-set-key (kbd "C-x 3") (lambda ()
                                (interactive)
                                (split-window-right)
                                (other-window 1)))

(global-set-key (kbd "C-x 2") (lambda ()
                                (interactive)
                                (split-window-below)
                                (other-window 1)))

;; ALIASES

(defalias 'ec 'leaf/except-close)
(defalias 'el 'elcord-mode)
(defalias 're 'restart-emacs)
(defalias 'mf 'mark-open-mark)
(defalias 'me 'leaf/motivate-me)
(defalias 'as 'leaf/tasks-buffer)
(defalias 'la 'leaf/hehe)
(defalias 'pa 'leaf/panes)
(defalias 'df 'describe-function)
(defalias 'dk 'describe-key)
(defalias 'dv 'describe-variable)
(defalias 'ka 'leaf/kill-all)
(defalias 'ts 'tor-search)

(defalias 'tl (lambda ()
                (interactive)
                (tor-link "https://www.")))

(defalias 'tr (lambda ()
                (interactive)
                (tor-link "https://www.reddit.com/r/")))

(defalias 'ex (lambda ()
                (interactive)
                (find-file "~/Desktop/private-new-age/.newage")))

(defalias 'no (lambda ()
                (interactive)
                (find-file "~/notepad.org")
                (end-of-buffer)))

(defalias 'ho (lambda ()
                (interactive)
                (find-file "/mnt/6C1EC2791EC23BB8/emacs/hotties.txt")
                (text-scale-increase 3)))


(defalias 'bt (lambda ()
                (interactive)
                (find-file "~/btasks.org")
                (end-of-buffer)))

(defalias 'rem (lambda ()
                 (interactive)
                 (find-file "/mnt/6C1EC2791EC23BB8/emacs/reminders.org")
                 ;;(find-file "~/reminders.org")
                 (end-of-buffer)))
(defalias 're-fi 'rename-file)

(defalias 'na (lambda ()
                (interactive)
                (async-shell-command "bash ~/Desktop/private-new-age/run.sh")
                ))

(defalias 'al (lambda ()
                (interactive)
                (shell-command "gnome-terminal -- bash -c './alarm'; exec bash")
                ))

(defalias 'hb (lambda ()
                (interactive)
                (end-of-line)
                (hs-hide-block)))

(defalias 'sb (lambda ()
                (interactive)
                (end-of-line)
                (hs-show-block)))
(defalias 'el (lambda()
                (interactive)
                (shell-command "gnome-terminal -- bash -c './elapsed'; exec bash")))

(defalias 'te (lambda()
                (interactive)
                (shell-command "gnome-terminal -- bash -c './teacher'; exec bash")))

(defalias 'em (lambda()
                (interactive)
                (setq default-directory "/mnt/6C1EC2791EC23BB8/")))

(defalias 'de (lambda()
                (interactive)
                (setq default-directory "~/")
                (command-execute 'find-file)
                ))

(defalias 'ro (lambda ()
                (interactive)
                (command-execute 'read-only-mode)
                
                ))
(defalias 'in (lambda ()
                (interactive)
                (async-shell-command "start C:/Users/doode/Desktop/Tor_Browser/Browser/firefox.exe https://incels.is/forums/inceldom-discussion.2/")))

(defalias 'in2 (lambda ()
                (interactive)
                (kill-new "https://incels.is/forums/inceldom-discussion.2/")))

(defalias 'j (lambda ()
               (interactive)
               (find-file "~/journal/j.org")
               (end-of-buffer)
               ;; (search-backward "2022")
               ;; (sit-for 2)
               ;; (beginning-of-line)
               ;; (command-execute 'mark-paragraph)
               ;; (command-execute 'end-of-buffer)
               ;; (command-execute 'narrow-to-region)
               ))

(defalias 'a (lambda ()
               (interactive)
               (find-file "~/journal/articles/")))

(defalias 'q (lambda ()
               (interactive)
               (quran/boot)))

(defalias 'g (lambda ()
               (interactive)
               (goto-verse)))

(defalias 'gf (lambda ()
                (interactive)
                (command-execute 'grep-find)))

(defalias 'dl (lambda ()
               (interactive)
               (display-line-numbers-mode)))


(defalias 'r (lambda ()
               (interactive)
               (rant/open-control)))


(defalias 'ab (lambda ()
               (interactive)
               (find-file "~/journal/ab.org")))

(defalias 'l (lambda ()
               (interactive)
               
               ))

(defalias 're (lambda ()
                (interactive)
                (find-file "~/journal/reminders.org")
                ))

(defalias 'connect (lambda ()
                     (interactive)
                     (shell-command "bash ~/connect.sh")))


(defalias 'm (lambda ()
                     (interactive)
                     (view-echo-area-messages)))


(defalias 'lc (lambda ()
                (interactive)
                (leaf/connection-method)))


(defalias 'fh (lambda ()
                (interactive)
                (setq origin-hour (read-string "Now: " ));; origin-hour (format-time-string "%I"))
                (setq hour-stream "[ ")

                (dotimes (i 14)
                  (if (= (string-to-number origin-hour) 12)
                      (setq origin-hour "0"))
                  (setq origin-hour (number-to-string (+ (string-to-number origin-hour) 1)))
                  (setq hour-stream (concat hour-stream origin-hour " ")))
                
                (setq hour-stream (concat hour-stream "]"))
                (insert hour-stream)
                ))

;; LOAD EXTERNAL FILES

;; (load "~/leaf-utils.el")

;; PREFACE

(defalias 'l 'list)
(defalias 'lb 'line-beginning-position)
(defalias 'le 'line-end-position)

;; VARIABLES

(defvar *time-file* "~/journal/time.txt")

(defvar *journal-buffers* '(
                            ("j.org" . leaf-insert-form-b)
                            ("ab.org" . leaf-insert-form-c)
                            ("start.org" . leaf-insert-form-a)
                            ))

;; FUNCTIONS

(defun return-time ()
  (setq split (split-string (current-time-string)))
  (setq split (delete (elt split 3) split))
  (format "%s" split)) 

;; This could use some refining

(defun following-hours ()
  (setq origin-hour (format-time-string "%I"))
  (setq hour-stream "[ ")

  (dotimes (i 14)
    (if (= (string-to-number origin-hour) 12)
        (setq origin-hour "0"))
    (setq origin-hour (number-to-string (+ (string-to-number origin-hour) 1)))
    (setq hour-stream (concat hour-stream origin-hour " ")))
  
  (setq hour-stream (concat hour-stream "]"))
  hour-stream)

(defun cat-read-from-file (path)
  (shell-command-to-string (concat "cat " path)))

;; MAIN

(defun leaf-on-open-journal ()
  (interactive)
  (dolist (buff *journal-buffers*)
    (when (string= (buffer-name) (car buff))

      (shell-command (concat "echo '" (return-time) "' > " *time-file*))
      (end-of-buffer)
      
      (setq date-in-j "")
      (setq date-in-tf (cat-read-from-file *time-file*))
      (setq date-in-tf (delete (elt date-in-tf (- (string-width date-in-tf) 0)) date-in-tf))
      
      (cond ((< (point-max) 2)
             (funcall (cdr buff) date-in-tf))
            ((> (point-max) 2)
             (search-backward (car (last (split-string (current-time-string) " "))))
             (setq date-in-j (buffer-substring (+ (lb) 2) (le)))
             (end-of-buffer)
             (indent-for-tab-command)
             (if (not (string= date-in-j date-in-tf))
                 (funcall (cdr buff) date-in-tf))))
      (save-buffer))))


;; ATTATCHED FUNCTIONS

(defun leaf-insert-form-a (time-stamp)
  (insert time-stamp)
  (org-toggle-heading 1)
  (org-return)
  (indent-for-tab-command))

(defun leaf-insert-form-b (time-stamp)
  (leaf-insert-form-a time-stamp)
  (insert (concat "\"" "\""))
  (org-toggle-heading 2))

(defun leaf-insert-form-c (time-stamp)
  (leaf-insert-form-a time-stamp)
  (insert (format-time-string "%p "))
  (insert (following-hours)))

(defun leaf-insert-time ()
  (interactive)
  (insert (return-time))
  (org-toggle-heading 1))


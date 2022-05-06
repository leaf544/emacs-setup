;; VARIABLES
(defvar *read-only-buffers* '("hotties.txt"))
(defvar *read-only-dir* '())

;; MAIN

;; (defun leaf/on-read-only-buffer ()
;;   (interactive)
;;   (when (or (member (buffer-name) *read-only-buffers*) (member default-directory *read-only-dir*))
;;     (read-only-mode)))

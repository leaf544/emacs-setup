(deftheme dgd
  "Created 2021-11-26.")

(set-face-attribute 'default nil :background "#D7D8D2" :foreground "#2B2C42")

(set-face-attribute 'font-lock-string-face nil :foreground "#298229")
(set-face-attribute 'font-lock-preprocessor-face nil :foreground "#3A4074" :weight 'normal)
(set-face-attribute 'font-lock-builtin-face nil :foreground "#000000")

(set-face-attribute 'font-lock-function-name-face nil :foreground "#000000")
(set-face-attribute 'font-lock-comment-face nil :foreground "#808181")
(set-face-attribute 'font-lock-type-face nil :foreground "#242C87")
(set-face-attribute 'font-lock-constant-face nil :foreground "#922420")
(set-face-attribute 'font-lock-variable-name-face nil :foreground "#000000")
(set-face-attribute 'font-lock-keyword-face nil :foreground "#922420")

(set-face-attribute 'mode-line nil :family "Jetbrains Mono NL" :box nil :foreground "black" :background "#B5B573" :height 120)
(set-face-attribute 'mode-line-inactive nil :family "Jetbrains Mono NL" :box nil :foreground "black" :background "#A8B3BA" :height 120)
(set-face-attribute 'minibuffer-prompt nil :foreground "#922420")

(set-face-foreground 'org-todo "#AE6A86")
(set-face-foreground 'org-level-1 "#10243B")

(set-face-attribute 'vertical-border nil :background "#D7D8D2" :foreground "#D7D8D2")
(set-face-attribute 'region nil :background "#C9CACB")
(set-face-attribute 'isearch nil :background "#AE6A86")

(set-face-foreground 'org-todo "#922420")
(set-face-foreground 'org-level-1 "#242C87")


(provide-theme 'dgd)

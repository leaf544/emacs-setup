(deftheme migrainity
  "Created 2021-09-24.")

;; (load "~/.emacs.d/elpa/powerline-20220122.1904/powerline.el")
;; (load "~/.emacs.d/elpa/powerline-20220122.1904/powerline-themes.el")

(custom-theme-set-faces
 'migrainity
 '(default ((t (:family "Iosevka Medium Extended" :foundry "outline" :width normal :height 115 :weight normal :slant normal :underline nil :overline nil :extend nil :strike-through nil :box nil :inverse-video nil :foreground "#dfe4eb" :background "#000000" :stipple nil :inherit nil))))
 '(cursor ((((background light)) (:background "black")) (((background dark)) (:background "white"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:weight bold :foreground "#A8CCBA"))))
 '(highlight ((((class color) (min-colors 88) (background light)) (:background "darkseagreen2")) (((class color) (min-colors 88) (background dark)) (:background "darkolivegreen")) (((class color) (min-colors 16) (background light)) (:background "darkseagreen2")) (((class color) (min-colors 16) (background dark)) (:background "darkolivegreen")) (((class color) (min-colors 8)) (:foreground "black" :background "green")) (t (:inverse-video t))))
 '(region ((t (:extend t :background "#153335"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:extend t :background "yellow1")) (((class color) (min-colors 88) (background dark)) (:extend t :background "SkyBlue4")) (((class color) (min-colors 16) (background light)) (:extend t :background "yellow")) (((class color) (min-colors 16) (background dark)) (:extend t :background "SkyBlue4")) (((class color) (min-colors 8)) (:extend t :foreground "black" :background "cyan")) (t (:inverse-video t))))
 '(trailing-whitespace ((((class color) (background light)) (:background "red1")) (((class color) (background dark)) (:background "red1")) (t (:inverse-video t))))
 '(font-lock-builtin-face ((t (:foreground "#A9A8E8"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#504a4c" :inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:foreground "#636061"))))
 '(font-lock-constant-face ((t (:foreground "#A8CCBA"))))
 '(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
 '(font-lock-function-name-face ((t (:foreground "#59b0c0"))))
 '(font-lock-keyword-face ((t (:foreground "#b6dce3"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:foreground "#A8CCBA" :inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#6A8D96"))))
 '(font-lock-type-face ((t (:weight normal :foreground "#b6dce3"))))
 '(font-lock-variable-name-face ((t (:foreground "#59b0c0"))))
 '(font-lock-warning-face ((t (:inherit (error)))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:underline (:color foreground-color :style line) :foreground "#6A8D96" :background "#153335"))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(fringe ((((class color) (background light)) (:background "grey95")) (((class color) (background dark)) (:background "grey10")) (t (:background "gray"))))
 '(header-line ((default (:inherit (mode-line))) (((type tty)) (:underline (:color foreground-color :style line) :inverse-video nil)) (((class color grayscale) (background light)) (:box nil :foreground "grey20" :background "grey90")) (((class color grayscale) (background dark)) (:box nil :foreground "grey90" :background "grey20")) (((class mono) (background light)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "black" :background "white")) (((class mono) (background dark)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "white" :background "black"))))
 '(tooltip ((t (:foreground "systeminfotext" :background "systeminfowindow" :inherit (variable-pitch)))))
 '(mode-line ((t (:family "DejaVu Sans Mono" :foundry "outline" :width normal :weight normal :slant normal :box nil :foreground "black" :background "#6A8D96" :height 110))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:weight light :box nil :foreground "#000000" :background "#8F9AA1" :inherit (mode-line)))))
 '(isearch ((t (:foreground "brown4" :background "#710C3F"))))
 '(isearch-fail ((t (:background "#FF3A1D"))))
 '(lazy-highlight ((t (:background "#0017D6"))))
 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(org-todo ((t (:foreground "F96161"))))
 '(org-level-1 ((t (:foreground "#CDD2D0"))))
 '(eshell-prompt ((t (:foreground "#A8CCBA" :weight normal)))) 
 )

;; (insert (face-foreground 'font-lock-string-face))

;; (setq-default mode-line-format
;;               (list
;;                (propertize "  " 'face '(:background "#6A8D96"))
;;                " "
;;                "["
;;                (propertize "%b" 'face 'bold)
;;                "]"))

;; (set-face-foreground 'org-todo "#F96161")
;; (set-face-foreground 'org-level-1 "#CDD2D0")
;; (set-face-foreground 'org-table (face-foreground 'font-lock-constant-face))
;; (set-face-foreground 'org-formula (face-foreground 'org-table))

;; (set-face-attribute 'vertical-border nil :background "#12151a" :foreground "#12151a")

(provide-theme 'migrainity)


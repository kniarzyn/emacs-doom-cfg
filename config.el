(setq truncate-lines 'nil)

(setq tab-always-indent t)

(prefer-coding-system 'utf-8)

(define-key evil-motion-state-map "j" 'evil-next-visual-line)
(define-key evil-motion-state-map "k" 'evil-previous-visual-line)
(define-key evil-visual-state-map "j" 'evil-next-visual-line)
(define-key evil-visual-state-map "k" 'evil-previous-visual-line)

(define-key evil-normal-state-map (kbd "C-j") 'move-text-down)
(define-key evil-normal-state-map (kbd "C-k") 'move-text-up)

(setq alchemist-test-truncate-lines nil)
(set-popup-rule! "^\\*alchemist test report" :size 0.4 :select nil :quit nil :ttl 0 :side 'bottom)

(setq web-mode-markup-indent-offset 2
      web-mode-code-indent-offset 2
      web-mode-css-indent-offset 2
      js-indent-level 2
      json-reformat:indent-width 2
      css-indent-offset 2)

(setq
 doom-font (font-spec :family "Source Code Pro" :size 20)
 doom-big-font (font-spec :family "Source Code Pro" :size 20)
 doom-variable-pitch-font (font-spec :family "Source Code Pro" :size 20)
 doom-theme 'doom-gruvbox)

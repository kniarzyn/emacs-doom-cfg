(setq truncate-lines 'nil)

(setq tab-always-indent t)

(prefer-coding-system 'utf-8)

(define-key evil-motion-state-map "j" 'evil-next-visual-line)
(define-key evil-motion-state-map "k" 'evil-previous-visual-line)
(define-key evil-visual-state-map "j" 'evil-next-visual-line)
(define-key evil-visual-state-map "k" 'evil-previous-visual-line)

(define-key evil-normal-state-map (kbd "C-j") 'move-text-down)
(define-key evil-normal-state-map (kbd "C-k") 'move-text-up)

(map! :leader "o e" #'projectile-run-eshell)

(setq alchemist-test-truncate-lines nil)
(set-popup-rule! "^\\*alchemist test report" :size 0.4 :select nil :quit nil :ttl 0 :side 'bottom)
(setq compilation-scroll-output t)

(add-to-list 'auto-mode-alist '("\\.?eex?\\'" . web-mode))

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

(defun spacemacs/window-layout-toggle ()
  "Toggle between horizontal and vertical layout of two windows."
  (interactive)
  (if (= (count-windows) 2)
    (let* ((window-tree (car (window-tree)))
           (current-split-vertical-p (car window-tree))
           (first-window (nth 2 window-tree))
           (second-window (nth 3 window-tree))
           (second-window-state (window-state-get second-window))
           (splitter (if current-split-vertical-p
                         #'split-window-horizontally
                       #'split-window-vertically)))
      (delete-other-windows first-window)
      ;; `window-state-put' also re-selects the window if needed, so we don't
      ;; need to call `select-window'
      (window-state-put second-window-state (funcall splitter)))
    (error "Can't toggle window layout when the number of windows isn't two.")))

;; Place your private configuration here
(map! :n "SPC l +" #'spacemacs/window-layout-toggle)

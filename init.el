(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(frame-background-mode (quote dark))
 '(custom-enabled-themes (quote (deeper-blue)))
 '(inhibit-startup-screen t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(default ((t (:inherit nil :stipple nil :background "gray15" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 128 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "DeepSkyBlue1"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "goldenrod1"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "aquamarine1"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "dark magenta"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "indian red"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "DarkSeaGreen1"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "HotPink1"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "goldenrod4"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "DodgerBlue3"))))
)

;; Neotree
(add-to-list 'load-path "~/.emacs.d/neotree/")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Aggressive Indent
(add-to-list 'load-path "~/.emacs.d/elpa/aggressive-indent-1.2/")
;;(add-hook 'c-mode-hook #'aggressive-indent-mode)

;; Highlight corresponding parentheses when cursor is on one
(show-paren-mode t)

;; Show trailing white spaces
(setq-default show-trailing-whitespace t)

;; Complete Anything Mode
(add-hook 'after-init-hook 'global-company-mode)

;; Doxymacs
(add-to-list 'load-path "~/.emacs.d/doxymacs/")
(require 'doxymacs)

;; Rainbow delimiters
(add-to-list 'load-path "~/.emacs.d/rainbow_delimiters/")
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Org-mode:
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; Remove toolbar
(tool-bar-mode 0)

;; Ease window resizing
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Change buffers easily
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; Magit configuration
(global-set-key (kbd "C-x g") 'magit-status)

;; Indent whole buffer command
(defun indent-buffer ()
  "Indents an entire buffer using the default intenting scheme."
  (interactive)
  (save-excursion
    (delete-trailing-whitespace)
    (indent-region (point-min) (point-max) nil)
    (untabify (point-min) (point-max))))
(global-set-key "\C-x\\" 'indent-buffer)
(put 'downcase-region 'disabled nil)

(setq tramp-default-method "ssh")

;; Cmake mode
(add-to-list 'load-path "~/.emacs.d/cmake/")
(require 'cmake-mode)

(setq markdown-command "~/.emacs.d/github_flavor.rb")

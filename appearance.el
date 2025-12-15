;; ~/.emacs.d/appearance.el

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode -1)

(setq inhibit-startup-screen t)

(global-display-line-numbers-mode)

;; Load the theme (gruvbox-light-medium)
(require 'gruvbox-theme)
(load-theme 'gruvbox-light-medium t)

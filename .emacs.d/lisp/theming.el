(set-frame-font "Go Mono 13" nil t)

;; (use-package solarized-theme
;;   :config
;;   (load-theme 'solarized-dark 1)

;;   (setq solarized-height-minus-1 1.0)
;;   (setq solarized-height-plus-1 1.0)
;;   (setq solarized-height-plus-2 1.0)
;;   (setq solarized-height-plus-3 1.0)
;;   (setq solarized-height-plus-4 1.0)
;;   (setq solarized-use-more-italic t)
;;   (setq solarized-emphasize-indicators nil)
;;   (setq solarized-high-contrast-mode-line t)
;;   (setq x-underline-at-descent-line t))

(use-package doom-modeline
  :defer t
  :hook (after-init . doom-modeline-init))

(use-package org-bullets
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; JAI Hype :pepega:
;;(use-package jai-mode)

;; (use-package leuven-theme
;;   :config
;;   (load-theme 'leuven-dark t)
;;   (setq leuven-scale-outline-headlines nil)
;;   (setq leuven-scale-org-agenda-structure nil))

;; (use-package quasi-monochrome-theme
;;   :config
;;   (load-theme 'quasi-monochrome t))

(use-package xresources-theme
  :config
  (load-theme 'xresources t))
;; (use-package constant-theme
;;   :config
;;   (load-theme 'constant t))

;; (use-package almost-mono-themes
;;   :config
;;   (load-theme 'almost-mono-black t))

;; -*- lexical-binding: t -*-

(setq ring-bell-function 'ignore        ; don't beep
      x-gtk-use-system-tooltips nil     ; no gui popups
      use-dialog-box nil                ; no gui popups dammit!
      echo-keystrokes 0.5               ; echo keystrokes faster
      confirm-kill-processes nil        ; just kill the process
      inhibit-startup-screen 1          ; stop the annoying message at the beginning
      disabled-command-function nil)    ; enable all commands

(menu-bar-mode -1)                      ; menu-bar is gone
(tool-bar-mode -1)                      ; tool-bar is gone
(scroll-bar-mode -1)                    ; scroll-bar is gone
(blink-cursor-mode 0)                   ; stop blinking on me!
(show-paren-mode t)                     ; highlight matching parens
(column-number-mode t)                  ; show column numbers

;; Scrolling
(setq mouse-wheel-scroll-amount '(1)    ; scroll gentle
      mouse-wheel-progressive-speed nil ; don't accelerate
      scroll-conservatively 101         ; don't jump to the middle of screen
      hscroll-margin 1                  ; don't you scroll that early!
      hscroll-step 1                    ; but scroll just a bit
      scroll-preserve-screen-position t) ; try to keep cursor in its position

(setq-default
 vc-follow-symlinks t
 ;; Save clipboard contents into kill-ring before replacing them
 save-interprogram-paste-before-kill t
 fill-column 80
 sentence-end-double-space nil
 word-wrap t
 indent-tabs-mode nil
 require-final-newline t
 tab-always-indent t
 tab-width 4
 ;; Wrapping
 truncate-lines t
 truncate-partial-width-windows 50)

(winner-mode t)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Security hype
(setq gnutls-verify-error t
      tls-checktrust t)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      delete-old-versions -1
      version-control t
      vc-make-backup-files t
      auto-save-list-file-prefix "~/.emacs.d/autosave/"
      auto-save-file-name-transforms '((".*" "~/.emacs.d/autosave/" t)))

;; But don't create stupid lockfiles
(setq create-lockfiles nil)

(use-package smex
  :config
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands))

(use-package ido-vertical-mode
  :config
  (setq ido-vertical-define-keys 'C-n-C-p-up-and-down)
  (ido-mode 1)
  (ido-everywhere t)
  (ido-vertical-mode 1))

;;; Productivity

(use-package writeroom-mode
  :config
  (global-set-key (kbd "C-x p t") 'writeroom-mode))

;(use-package bookmark-plus)

;(require 'proof-site "~/.emacs.d/lisp/PG/generic/proof-site")


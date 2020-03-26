;;; -*- lexical-binding: t -*-

(use-package company
  :custom
  (company-require-match nil)
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.2)
  (company-tooltip-align-annotation t)
  (company-frontends '(company-pseudo-tooltip-frontend
		               company-echo-metadata-frontend))
  :commands (company-mode global-company-mode company-complete
                          company-complete-common company-manual-begin
                          company-grab-line)
  :bind (
         :map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :hook ((prog-mode . company-mode)
         (comint-mode . company-mode)))

(use-package company-quickhelp
  :after company
  :commands (company-quickhelp-mode)
  :init
  (company-quickhelp-mode 1)
  (use-package pos-tip
    :commands (pos-tip-show)))

(use-package slime-company
  :after company
  :config
  (slime-setup '(slime-fancy slime-company))
  (define-key company-active-map (kbd "\C-n") 'company-select-next)
  (define-key company-active-map (kbd "\C-p") 'company-select-previous)
  (define-key company-active-map (kbd "\C-d") 'company-show-doc-buffer)
  (define-key company-active-map (kbd "M-.") 'company-show-location))

(use-package proof-general)

(use-package company-coq
  :config
  (add-hook 'coq-mode-hook #'company-coq-mode))

(use-package dumb-jump
  :config
  (dumb-jump-mode 1))


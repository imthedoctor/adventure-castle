(require 'req-package)

(req-package helm
  :ensure t
  :chords ((";l" . helm-bookmarks))
  :bind (("C-x C-b" . helm-buffers-list)
         ("C-c y" . helm-show-kill-ring)
         ("C-x C-r" . helm-recentf)
         ("C-x r l" . helm-bookmarks))
  :config (require 'helm-config))

(req-package ace-jump-helm-line
  :ensure t
  :commands ace-jump-helm-line
  :require helm
  :init (define-key helm-map (kbd "C-;") 'ace-jump-helm-line))

(req-package helm-google
  :ensure t
  :commands helm-google)

(req-package helm-proc
  :ensure t
  :commands helm-proc
  :require helm)

(req-package helm-gitignore
  :ensure t
  :commands helm-gitignore)

(req-package helm-company
  :ensure t
  :require company
  :commands helm-company
  :config (progn (define-key company-mode-map (kbd "C-:") 'helm-company)
                 (define-key company-active-map (kbd "C-:") 'helm-company)))

(req-package helm-helm-commands
  :ensure t
  :commands helm-helm-commands
  :require helm)

(req-package helm-swoop
  :ensure t
  :commands helm-swoop-from-isearch
  :require helm
  :init (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch))

(req-package helm-descbinds
  :ensure t
  :commands helm-descbinds
  :require helm)

(req-package helm-package
  :commands helm-package
  :require helm)

(req-package makefile-runner
  :ensure t)

(req-package helm-make
  :ensure t
  :commands helm-make
  :require makefile-runner)

(req-package wgrep-helm
  :ensure t
  :require (helm wgrep grep))

(req-package helm-github-stars
  :ensure t
  :commands helm-github-stars
  :require helm
  :config (setq helm-github-stars-username (getenv "USER")))

(req-package helm-themes
  :ensure t
  :commands helm-themes
  :require helm)

(req-package helm-books
  :ensure t
  :commands helm-books
  :require helm)

(req-package helm-org-rifle
  :ensure t)

(provide 'init-helm)

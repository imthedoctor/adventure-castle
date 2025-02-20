(require 'req-package)

;; haskell mode

(req-package haskell-mode
  :ensure t
  :mode (("\\.hs$" . haskell-mode)
         (".xmobarrc$" . haskell-mode)
         ("\\.cabal$" . haskell-cabal-mode))
  :config
  (setq haskell-tags-on-save t)
  (setq haskell-process-type 'cabal-repl)
  (add-hook-exec 'haskell-mode 'turn-on-haskell-doc-mode)
  (add-hook-exec 'haskell-mode 'turn-on-haskell-indentation)
  (add-hook-exec 'haskell-mode (lambda () (ghc-init))))

(req-package company-ghc
  :ensure t
  :require haskell-mode company
  :config
  (add-to-list 'company-backends 'company-ghc))

(req-package hindent
  :ensure t
  :require haskell-mode
  :commands hindent-mode
  :init (add-hook-exec 'haskell-mode 'hindent-mode))

(req-package haskell-snippets
  :ensure t
  :require haskell-mode yasnippet)

(provide 'init-haskell)

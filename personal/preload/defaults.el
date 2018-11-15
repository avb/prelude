(server-start)

(setq default-frame-alist '((font . "Hack Nerd Font Mono")))
(setq backup-directory-alist `(("." . "~/.saves")))
(setq-default tab-width 2)
(setq-default truncate-lines t)
(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
(add-hook 'web-mode-hook (lambda () (setq web-mode-markup-indent-offset 2)g))
(add-hook 'web-mode-hook (lambda () (setq web-mode-css-indent-offset 2)))
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed 1) ;; don't accelerate scrolling
(setq scroll-step 1) ;; keyboard scroll one line at a time

(require 'chruby)
(chruby "ruby-2.5.3")
(setq flycheck-ruby-rubocop-executable "/Users/adam/.gem/ruby/2.5.3/bin/rubocop")

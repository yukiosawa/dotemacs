;; Emacs color theme
;; /usr/share/emacs/25.2/etc/themes/
(load-theme 'manoj-dark t)
;; (load-theme 'misterioso t)
;; (load-theme 'tango-dark t)
;; (load-theme 'wombat t)

;; anthy.el
;; sudo apt-get install anthy-el
(set-language-environment "Japanese")
(push "/usr/share/emacs/site-lisp/anthy/" load-path)
(load-library "anthy")
(setq default-input-method "japanese-anthy")

;; key bindings
(define-key global-map (kbd "C-h") 'delete-backward-char)

;; show line and column numbers
;(global-linum-mode t)
(line-number-mode t)
(column-number-mode t)

;; タブの無効化
(setq-default indent-tabs-mode nil)

;; package.el
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; ;; load path
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
;; 
;; ;; auto-install
;; ;; wget http://www.emacswiki.org/emacs/download/auto-install.el
;; (require 'auto-install)
;; (setq auto-install-directory "~/.emacs.d/elisp")
;; ;; (auto-install-update-emacswiki-package-name t)

;; auto-complete
;; M-x package-install auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; web-mode
;; M-x package-install web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 4)


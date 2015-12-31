;; lzw by 2015-12-30
;; email: lzw0739@163.com
;; author: shanks0739

;; basic config
;(add-to-list 'load-path "~/.emacs.d/")
;(add-to-list  'load-path (expand-file-name "package" user-emacs-directory)) 
;(add-to-list 'load-path "~/.emacs.d/package/color-theme")
;(add-to-list 'load-path "~/.emacs.d/package/auto-complete")
;(add-to-list 'load-path "~/.emacs.d/package/yasnippet")
;(add-to-list 'load-path "~/.emacs.d/package/cedet")
;(add-to-list 'load-path "~/.emacs.d/package/ecb")
;(add-to-list 'load-path "~/.emacs.d/package/ido-ubiquitous")
;(add-to-list 'load-path "~/.emacs.d/package/smex")

;; load path
(let* ((my-lisp-dir "~/.emacs.d/package")
       (default-directory my-lisp-dir)
       (orig-load-path load-path))
      (setq load-path (cons my-lisp-dir nil))
      (normal-top-level-add-subdirs-to-load-path)
      (nconc load-path orig-load-path))

;; basic conf
(load "basic_conf")

;; 开发环境配置，如自动补全，符号定位和引用，颜色配置
(load "env_development")

;(require 'color-theme)
;(setq color-theme-is-global t)
;(color-theme-dark-blue2)
;(color-theme-matrix)
;(color-theme-gnome2)

;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories  "~/.emacs.d/package/auto-comlete/dict")
;(ac-config-default)
;(require 'auto-complete)
;(require 'smex)
;(setq ac-auto-start 2)

;(require 'yasnippet)
;(setq yas-prompt-functions
;      '(yas-dropdown-prompt yas-x-prompt yas-completing-prompt yas-ido-prompt yas-no-prompt))
;(yas-global-mode 1)
;(yas-minor-mode-on) ; 以minor mode打开，这样才能配合主mode使用



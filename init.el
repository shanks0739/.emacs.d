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


;; 开发环境配置，如自动补全，符号定位和引用，颜色配置
(load "env_development")

(load "tags_conf")

;; basic conf
(load "basic_conf")

;(require 'color-theme)
;(setq color-theme-is-global t)
;(color-theme-dark-blue2)
;(color-theme-matrix)
;(color-theme-gnome2)


;; development environment configure file
;; lzw


;; 自动补全
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories  "~/.emacs.d/package/auto-comlete/dict")
(ac-config-default)
(setq ac-auto-start 2)

;; 自动补全源， 辅助auto-comlete-config
(require 'yasnippet)
;;(setq yas-prompt-functions '(yas-dropdown-prompt yas-x-prompt yas-completing-prompt yas-ido-prompt yas-no-prompt))
(yas-global-mode 1)
(yas-minor-mode-on) ; 以minor mode打开，这样才能配合主mode使用

;(require 'smex)

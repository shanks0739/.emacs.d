;; development environment configure file
;; lzw

;;#####################################################################
;; 自动补全
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories  "~/.emacs.d/package/auto-comlete/dict")
(ac-config-default)
(setq ac-auto-start 2)

;; 自动补全源， 辅助auto-comlete-config
(require 'yasnippet)
;;(setq yas-prompt-functions '(yas-dropdown-prompt yas-x-prompt yas-completing-prompt yas-ido-prompt yas-no-prompt))
(setq yas-snippet-dirs "~/.emacs.d/package/snippets")
(yas-load-directory yas-snippet-dirs)

(yas-reload-all)
(yas-global-mode 1)
(yas-minor-mode-on) ; 以minor mode打开，这样才能配合主mode使用

;;#####################################################################
;; M-x help
(require 'smex)
(smex-initialize) 
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;
;(global-set-key [(meta x)] (lambda ()
;			     (interactive)
;			     (or (boundp 'smex-cache)
;				 (smex-initialize))
;			     (global-set-key [(meta x)] 'smex)
;			     (smex)))
;
;(global-set-key [(shift meta x)] (lambda ()
;				   (interactive)
;				   (or (boundp 'smex-cache)
;				       (smex-initialize))
;				   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
;				                                      (smex-major-mode-commands)))
;
;
;(autoload 'smex "smex"
;    "Smex is a M-x enhancement for Emacs, it provides a convenient interface to your recently and most frequently used commands.")
;
;(global-set-key (kbd "M-x") 'smex)
;
;;#####################################################################
;; helm
(require 'helm-config)


;;#####################################################################
;; cedet 代码补全工具，也可以是代码浏览，引用等功能
;(require 'cedet)
;(semantic-load-enable-excessive-code-helpers)
;(global-ede-mode t)
;(require 'semantic-ia)
;(require 'semantic-gcc)
;(global-srecode-minor-mode 1)
;(semantic-load-enable-semantic-debugging-helpers)

;; ecb 这个工具使emacs 看起来像ide
;(require 'ecb)
;(setq stack-trace-on-error t)
;(ecb-activate)

;;#####################################################################

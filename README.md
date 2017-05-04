# emacs_conf
emacs configure file

https://github.com/shanks0739/emacs_conf.git

使用这个配置文件之前，需要在package/helm运行make

#windows 
(setenv "HOME" "D:/soft/emacs") ;; you can change this dir to the place you like
(setenv "PATH" "D:/soft/emacs")
(setq default-directory "~/")
(load "~/.emacs.d/init.el")
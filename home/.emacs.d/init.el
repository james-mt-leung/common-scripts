;;; turn on syntax highlighting
(global-font-lock-mode 1)

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;;; make Groovy mode electric by default.
(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)
             (groovy-electric-mode)))

(add-to-list 'load-path "~/.emacs.d/")

(defun my-c-mode-hook () 
   (setq indent-tabs-mode nil 
         c-basic-offset 4)) 
(add-hook 'c-mode-common-hook 'my-c-mode-hook) 

(setq backup-inhibited t)
(iswitchb-mode 1)
(setq iswitchb-buffer-ignore '("^ " "*Buffer"))

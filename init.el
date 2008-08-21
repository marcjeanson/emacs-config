(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/plugins")

(load-library "autostart")


;; load some libs
(require 'ido)
(ido-mode t)
(require 'redo)
(global-set-key (kbd "C-?") 'redo)
(add-to-list 'load-path "~/.emacs.d/plugins/git")
(require 'git)

;; Rails related libs
(require 'rails)
(setq ri-ruby-script "~/.emacs.d/plugins/ri-emacs-0.2.3/ri-emacs.rb")
(autoload 'ri "~/.emacs.d/plugins/ri-emacs-0.2.3/ri-ruby.el" nil t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; javascript library
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


;; Frame title bar formatting to show full path of file
(setq-default
 frame-title-format
 (list '((buffer-file-name " %f" (dired-directory
                                  dired-directory
                                  (revert-buffer-function " %b"
                                                          ("%b - Dir:  " default-directory)))))))

;; don't create backup files
(setq make-backup-files nil)

;; spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; scroll by a single line
(setq scroll-step 1)

;; replace highlighted text with what I type
(delete-selection-mode t)

;; set standard indent to 2
(setq standard-indent 2)

;; make Ctrl-. repeat last command, like vi's . command
(global-set-key (kbd "C-.") 'repeat)

;; make yes or no answers for emacs y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; taken from sams-lib.el
(defun other-window-backwards (arg)
  "Like `other-window', but moves in the opposite direction."
  (interactive "p")
  (other-window (- 0 arg)))
(global-set-key (kbd "C-x p") 'other-window-backwards)


;; Show line-number in the mode line
(line-number-mode 1)
;; Show column-number in the mode line
(column-number-mode 1)

;; colour related section
(require 'color-theme)
(load-file "~/.emacs.d/colours/twilight-emacs/color-theme-twilight.el")
(color-theme-twilight)
(global-hl-line-mode 1) ;; turn on the highlight line mode
(transient-mark-mode t) ;; region to be highlighted when a mark is active
(show-paren-mode t) ;; highlight matching brackets etc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


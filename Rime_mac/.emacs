(setenv "PATH" (concat "/library/Tex/texbin:/usr/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/library/Tex/texbin/" "/usr/local/bin") exec-path))
;;设置软件源
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line
;;设置auctex
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t) 
 ;preview-latex
 (add-to-list 'load-path
 "~/Downloads/auctex-11.86/preview")
 (require 'preview)
 
 ; yasnippet
 
 

 
 
 
 ;auctex setting,from  http://www.xemacs.org/Documentation/packages/html/auctex_4.html    
 (require 'tex-site)
 (setq TeX-auto-save t)
 (setq TeX-parse-self t)
 
 ;为了使用 AucTeX 方便，为 LaTeX 模式 hook 自动换行，数学公式，reftex 和显示行号的功能
 (mapc (lambda (mode)
       (add-hook 'LaTeX-mode-hook mode))
       (list 'auto-fill-mode
             'cdlatex-mode
             'LaTeX-math-mode
             'turn-on-reftex
             'linum-mode))
 
 
 
 
 
 
 (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
  '(show-paren-mode t)
  '(tool-bar-mode nil))
 (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
  )
 
 
 
 
 
 (setq TeX-save-query nil) ;;autosave latex file before compiling
 
 
 
 
 
 ;use pdflatex
 (setq latex-run-command "pdflatex")
 
 
 ;generate pdf when complile.
 (setq TeX-PDF-mode t)

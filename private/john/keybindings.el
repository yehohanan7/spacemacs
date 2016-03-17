(global-set-key "\C-x\C-m" 'helm-M-x)
(global-set-key "\C-x\m" 'helm-M-x)

(global-set-key "\C-c\h" 'helm-mini)
(global-set-key "\M-y" 'helm-show-kill-ring)
(global-set-key (kbd "C-S-s") 'helm-swoop)



(global-set-key (kbd "C-S-n") (lambda () (interactive) (next-line 5)))
(global-set-key (kbd "C-S-p") (lambda () (interactive) (next-line -5)))

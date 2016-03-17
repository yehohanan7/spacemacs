(defconst john-packages
  '(helm
    recentf
    expand-region
    magit
    multiple-cursors
    restclient
    erc
    hackernews))

(defun john/init-multiple-cursors ()
  (use-package multiple-cursors
    :ensure multiple-cursors
    :bind 
    (("C-c m a" . mc/mark-all-like-this)
     ("C-c m m" . mc/mark-all-like-this-dwim)
     ("C-c m l" . mc/edit-lines)
     ("C-c m n" . mc/mark-next-like-this)
     ("C-c m p" . mc/mark-previous-like-this)
     ("C-c m s" . mc/mark-sgml-tag-pair)
     ("C-c m d" . mc/mark-all-like-this-in-defun))))

(defun john/init-magit ()
  (use-package magit
    :ensure magit
    :init
    (progn 
      (setq magit-last-seen-setup-instructions "1.4.0"))
    :bind
    (("C-S-g" . magit-status))))


(defun john/init-expand-region ()
  (use-package expand-region
    :ensure expand-region
    :bind ("C-=" . er/expand-region)))


(defun john/init-restclient ()
  (use-package restclient
    :ensure restclient
    :init (add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))))


(defun john/init-erc ()
  (use-package erc
    :ensure erc
    :config
    (setq erc-autojoin-channels-alist
          '(("#kafka" "#lisp" "#emacs"))
          erc-server "irc.freenode.net"
          erc-nick "maveneagle")))

(defun john/init-hackernews ()
  (use-package hackernews :ensure hackernews))

(defun john/init-helm ()
  (use-package helm
      :ensure helm
      :init
      (progn 
        (require 'helm-config) 
        (setq helm-candidate-number-limit 100)
        (setq helm-idle-delay 0.0 ; update fast sources immediately (doesn't).
              helm-input-idle-delay 0.01  ; this actually updates things
                                            ; reeeelatively quickly.
              helm-quick-update t
              helm-M-x-requires-pattern nil
              helm-ff-skip-boring-files t)
        (helm-mode))
      :config
      (progn
        (add-to-list 'helm-completing-read-handlers-alist
                     '(switch-to-buffer . ido))
        ;; Unicode
        (add-to-list 'helm-completing-read-handlers-alist 
                     '(insert-char . ido)))
      :bind (("C-c h" . helm-mini) 
             ("C-h a" . helm-apropos)
             ("M-y" . helm-show-kill-ring)
             ("M-x" . helm-M-x)
             ("C-x c o" . helm-occur)
             ("C-x c s" . helm-swoop)
             ("C-x c SPC" . helm-all-mark-rings)))
    (ido-mode -1))

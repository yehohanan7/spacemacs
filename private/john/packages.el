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

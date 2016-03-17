(fset 'yes-or-no-p 'y-or-n-p)

;; History
(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode 1)
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))

;;Show column number
(column-number-mode 1)

;;Don't show whitespace in diff, but show context
(setq vc-diff-switches '("-b" "-B" "-u"))

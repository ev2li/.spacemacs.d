(setq-default evil-escape-key-sequence "jk")
(setq-default evil-escape-delay 0.2)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
;;(setq indent-line-function 'insert-tab)
(setq auto-save-default nil)
(setq c-basic-offset 4)
(setq evil-want-fine-undo t)
(setq byte-compile-warnings '(cl-functions))
(setq inhibit-compacting-font-caches t)
(setq projectile-enable-caching t)
(setq spacemacs-show-trailing-whitespace nil)
(setq max-lisp-eval-depth 1000)

(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
;; 禁用 undo-tree 自动保存历史文件
(with-eval-after-load 'undo-tree
  (setq undo-tree-auto-save-history nil)
  (setq undo-tree-history-directory-alist nil))

;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
;; (sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

;; recentf刷新时间
(setq
 recentf-auto-cleanup 60
 recentf-max-saved-items 50
 recentf-exclude '("/tmp/" "/ssh:" "/sudo:" "/Trash/")
 )
;; 可选：屏蔽提示
(setq recentf-save-hook (lambda () (message "")))
;; 方法1：完全禁止显示警告信息（包括 minibuffer 提示）
(setq warning-minimum-level :error)
(setq inhibit-warning-messages t)

;; 当 magit 加载完成后，执行以下配置
(with-eval-after-load 'magit
  (setq magit-no-confirm '(push pull))
  )

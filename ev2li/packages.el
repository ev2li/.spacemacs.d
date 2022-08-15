(defconst ev2li-packages
  '(company)
  
;; 配置包
;; use-package 装载包
;; :init 在包装载之前执行的代码
;; :config 在包装载之后执行的代码
;; :bind 自定义绑定包快捷键，例如:bind ("C-." . jumpweb-mode))
;; :defer t 自动推迟加载，在空闲时间加载
;; :disabled t 禁用
(defun  ev2li/post-init-company()
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0)
  )



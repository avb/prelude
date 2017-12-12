(global-linum-mode t)
(if (display-graphic-p)
    ;; Used if t
    (setq linum-format "%4d \u2502")
  ;; Used if nil
  (setq linum-format "%4d | "))

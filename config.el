;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;;; env fix
;;; Code:
(when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))

;; Prettier stuff ----------------
;; TODO - Might not need this as format-all can be used, but saving this for later
;; (require 'prettier-js)

;; (eval-after-load 'typescript-mode
;;     '(progn
;;        (add-hook 'typescript-mode-hook #'add-node-modules-path)
;;        (add-hook 'typescript-mode-hook #'prettier-js-mode)))

;; (eval-after-load 'web-mode
;;   '(progn
;;     (add-hook 'js2-mode-hook 'prettier-js-mode)
;;     (add-hook 'web-mode-hook 'prettier-js-mode)))


;; TYPESCRIPT STUFF ---------------------
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (eldoc-mode +1))

;; this adds code hints in the echo area
(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; flow --------------------
;; TODO - This does not function properly, might delete this later
;; (add-hook 'js2-mode-hook 'flow-minor-mode)

;; (with-eval-after-load 'company
;;   (add-to-list 'company-backends 'company-flow))

;; (with-eval-after-load 'flycheck
;;   ;; (flycheck-add-mode 'javascript-flow 'flow-minor-mode)
;;   (flycheck-add-mode 'javascript-eslint 'flow-minor-mode))
;;   ;; (flycheck-add-next-checker 'javascript-flow 'javascript-eslint))

;; VISUAL STUFF ---------------------
(setq
 doom-font (font-spec :family "Fira Code" :size 12)
 doom-big-font (font-spec :family "Fira Code" :size 30))

(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-dracula t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme (all-the-icons must be installed!)
(doom-themes-neotree-config)
;; or for treemacs users
(doom-themes-treemacs-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)


;; CUSTOM KEYBINDINGS ---------------------
(map! :leader

      "cF" #'tide-fix
      "cR" #'tide-format

      (:prefix ("oS" . "Spotify" )
                :desc "Play/Pause" "P" #'spotify-playpause
                :desc "Previous" "p" #'spotify-previous
                :desc "Next" "n" #'spotify-next)

      (:prefix ("oG" . "Password generator")
                :desc "Generate simple" "s" #'password-generator-simple
                :desc "Generate strong" "S" #'password-generator-strong
                :desc "Generate paranoid" "P" #'password-generator-paranoid
                :desc "Generate phonetic" "p" #'password-generator-phonetic))

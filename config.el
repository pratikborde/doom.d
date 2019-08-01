;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;;; env fix
;;; Code:
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))



;; GLOBAL DEFAULTS ---------------------
(setq
 package-check-signature nil
 doom-modeline-minor-modes t
 doom-modeline-vcs-max-length 50
 doom-modeline-buffer-file-name-style 'truncate-with-project
 doom-themes-enable-bold t    ; if nil, bold is universally disabled
 doom-themes-enable-italic t
 evil-escape-key-sequence "fd"
 +workspaces-on-switch-project-behavior t
 magit-process-finish-apply-ansi-colors t
 doom-font (font-spec :family "Fira Code" :size 13)
 doom-big-font (font-spec :family "Fira Code" :size 30)
 org-bullets-bullet-list '("⬢" "◆" "▲" "■"))



;; THEME STUFF ---------------------

(require 'doom-themes)
;; Load the theme (doom-one, doom-molokai, doom-Iosvkem etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-dracula t)
;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)
;; or for treemacs users
(doom-themes-treemacs-config)
;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)



;; VISUAL STUFF
(add-hook 'prog-mode-hook 'highlight-symbol-mode)

(add-to-list 'default-frame-alist
             '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist
'(ns-appearance . dark))



;; ORG MODE ------------------
(add-hook 'org-mode-hook (lambda ()
                           "Beautify Org Checkbox Symbol"
                           (push '("[ ]" .  "☐") prettify-symbols-alist)
                           (push '("[X]" . "☑" ) prettify-symbols-alist)
                           (push '("[-]" . "❍" ) prettify-symbols-alist)
                           (prettify-symbols-mode)))

;; org projectile
(after! 'projectile
  (require 'org-projectile)
  (setq org-projectile-projects-file
        "~/org/project_todos.org")
  (push (org-projectile-project-todo-entry) org-capture-templates)
  (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files))))



;; TYPESCRIPT STUFF ---------------------
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (eldoc-mode +1))

;; this adds code hints in the echo area
(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'prog-mode-hook #'visual-line-mode)



;; INTELLIGENT AUTOCOMPLETE
(require 'company-tabnine)
(add-to-list 'company-backend #'company-tabnine)



;; FLOW --------------------
;; TODO - This does not function properly, might delete this later
;; (add-hook 'js2-mode-hook 'flow-minor-mode)

;; (with-eval-after-load 'company
;;   (add-to-list 'company-backends 'company-flow))

;; (with-eval-after-load 'flycheck
;;   ;; (flycheck-add-mode 'javascript-flow 'flow-minor-mode)
;;   (flycheck-add-mode 'javascript-eslint 'flow-minor-mode))
;;   ;; (flycheck-add-next-checker 'javascript-flow 'javascript-eslint))



;; FORGE ---------------------
;; (with-eval-after-load 'forge
;;   ;; (add-to-list 'forge-alist '("github.dev.global.tesco.org" "github.dev.global.tesco.org/api/v3"
;;   ;;                             "github.dev.global.tesco.org" forge-github-repository))
;;   (push '("github.dev.global.tesco.org" "github.dev.global.tesco.org/api/v3"
;;           "github.dev.global.tesco.org" forge-github-repository)
;;         forge-alist)
;;   (forge--split-url "https://github.dev.global.tesco.org/Online-Technology/lego-web.git"))



;; GPG/GNUPG CONFIG ---------------------
;; (require 'epa-file)
;; (custom-set-variables '(epg-gpg-program  "/usr/local/Cellar/gnupg/2.2.16_1"))
;; (epa-file-enable)



;; CUSTOM KEYBINDINGS ---------------------
(map! :leader

      "cF" #'tide-fix
      "cR" #'tide-format
      :desc "Projectile todo" "pO" #'org-projectile-goto-location-for-project
      :desc "Projectile eshell" "ps" #'projectile-run-eshell
      :desc "Toggle iedit" "/e" #'iedit-mode
      :desc "Save all buffers" "fw" #'evil-write-all

      (:prefix ("j" . "jump to")
        :desc "To line" "l" #'evil-avy-goto-line
        :desc "timer" "t" #'evil-avy-goto-char-timer
        :desc "To word" "w" #'evil-avy-goto-char)

      (:prefix ("oS" . "Spotify" )
        :desc "Play/Pause" "P" #'spotify-playpause
        :desc "Previous" "p" #'spotify-previous
        :desc "Next" "n" #'spotify-next)

      (:prefix ("oL" . "Dash docset" )
        :desc "dash-at-point" "d" #'dash-at-point
        :desc "dash-at-point-with-docset" "D" #'dash-at-point-with-docset)

      (:prefix ("oG" . "Password generator")
        :desc "Generate simple" "s" #'password-generator-simple
        :desc "Generate strong" "S" #'password-generator-strong
        :desc "Generate paranoid" "P" #'password-generator-paranoid
        :desc "Generate phonetic" "p" #'password-generator-phonetic))

;;; config.el ends here

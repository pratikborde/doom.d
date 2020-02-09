;;; init.el -*- lexical-binding: t; -*-
;; Copy me to ~/.doom.d/init.el or ~/.config/doom/init.el, then edit me!

(doom! :feature
       ;;debugger          ; FIXME stepping through code, to help you add bugs
       ;; spellcheck       ; tasing you for misspelling mispelling
       ;; syntax-checker   ; tasing you for every semicolon you forget

       :completion
       (company            ; the ultimate code completion backend
        +auto)              ; as you type completion
        ;; +childframe)       ; a nicer company UI. Emacs +26 only!
       ;; (helm
       ;; +fuzzy)          ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       (ivy
        +fuzzy)            ; a search engine for love and life

       :ui
       workspaces        ; tab emulation, persistence & separate workspaces
       ;;deft            ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       ;; doom-modeline  ; a snazzy Atom-inspired mode-line
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       ;; evil-goggles
       ophints           ; display visual hints when editing in evil
       ;;fci             ; a `fill-column' indicator
       hl-todo           ; highlight TODO/FIXME/NOTE tags
       modeline          ; snazzy, Atom-inspired modeline, plus API
       nav-flash         ; blink the current line after jumping
       neotree           ; a project drawer, like NERDTree for vim
       treemacs          ; a project drawer, like neotree but cooler
       (popup            ; tame sudden yet inevitable temporary windows
        +all             ; catch all popups that start with an asterix
        +defaults)       ; default popup rules
       ;;pretty-code     ; replace bits of code with pretty symbols
       ;;tabbar          ; FIXME an (incomplete) tab bar for Emacs
       ;;unicode         ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       window-select     ; visually switch windows
       indent-guides

       :editor
       snippets            ; my elves. They type so I don't have to
       file-templates      ; auto-snippets for empty files
       (evil
        +everywhere)       ; come to the dark side, we have cookies
       (format
        +onsave)         ; automated prettiness
       ;;lispy           ; vim for lisp, for people who dont like vim
       multiple-cursors  ; editing in many places at once
       ;;parinfer        ; turn lisp into python, sort of
       rotate-text       ; cycle region at point between text candidates
       fold

       :term
       eshell            ; a consistent, cross-platform shell (WIP)

       :emacs
       (dired            ; making dired pretty [functional]
        +ranger         ; bringing the goodness of ranger to dired
        +icons)          ; colorful icons for dired-mode
       ;; ediff             ; comparing files in Emacs
       electric          ; smarter, keyword-based electric-indent
       ;; hideshow       ; basic code-folding support
       ;; imenu             ; an imenu sidebar and searchable code index
       ;;term            ; terminals in Emacs
       vc                ; version-control and Emacs, sitting in a tree

       :tools
       (lookup             ; helps you navigate your code and documentation
        +docsets)          ; ...or in Dash docsets locally
       eval                ; run code, run (also, repls)
       flyspell
       flycheck
       ;;ansible
       ;;docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       ;;ein               ; tame Jupyter notebooks with emacs
       ;;gist              ; interacting with github gists
       ;;macos             ; MacOS-specific commands
       ;;make              ; run make tasks from Emacs
       magit               ; a git porcelain for Emacs
       ;;password-store    ; password manager for nerds
       ;;pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       ;;rgb               ; creating color strings
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       ;;upload            ; map local to remote projects via ssh/ftp
       ;;wakatime

       :lang
       ;;assembly          ; assembly for fun or debugging
       ;;(cc +irony +rtags); C/C++/Obj-C madness
       ;;clojure           ; java with a lisp
       ;;common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, .NET, and mono shenanigans
       data                ; config/data formats
       ;;erlang            ; an elegant language for a more civilized age
       ;;elixir            ; erlang done right
       ;;elm               ; care for a cup of TEA?
       emacs-lisp          ; drown in parentheses
       ;;ess               ; emacs speaks statistics
       ;;go                ; the hipster dialect
       ;;(haskell +intero) ; a language that's lazier than I am
       ;;hy                ; readability of scheme w/ speed of python
       ;;idris             ;
       ;;(java +meghanada) ; the poster child for carpal tunnel syndrome
       javascript          ; all(hope(abandon(ye(who(enter(here))))))
       ;;typescript          ; javascript but better
       ;;julia             ; a better, faster MATLAB
       ;;latex             ; writing papers in Emacs has never been so fun
       ;;ledger            ; an accounting system in Emacs
       ;;lua               ; one-based indices? one-based indices
       markdown            ; writing docs for people to ignore
       ;;nim               ; python + lisp at the speed of c
       ;;nix               ; I hereby declare "nix geht mehr!"
       ;;ocaml             ; an objective camel
       (org                ; organize your plain life in plain text
        +attach            ; custom attachment system
        +babel             ; running code in org
        +capture           ; org-capture in and outside of Emacs
        +export            ; Exporting org to whatever you want
        +present)          ; Emacs for presentations
       ;;perl              ; write code no one else can comprehend
       ;;php               ; perl's insecure younger brother
       ;;plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       ;;python            ; beautiful is better than ugly
       ;;qt                ; the 'cutest' gui framework ever
       ;;racket            ; a DSL for DSLs
       ;;rest              ; Emacs as a REST client
       ;;ruby              ; 1.step do {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;;rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala             ; java, but good
       (sh +fish)           ; she sells (ba|z|fi)sh shells on the C xor
       ;;solidity          ; do you need a blockchain? No.
       ;;swift             ; who asked for emoji variables?
       web                 ; the tubes
       ;;vala              ; GObjective-C

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       ;;(email +gmail)    ; emacs as an email client
       ;;irc               ; how neckbeards socialize
       ;;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought
       ;;(write            ; emacs as a word processor (latex + org + markdown)
       ;; +wordnut         ; wordnet (wn) search
       ;; +langtool)       ; a proofreader (grammar/style check) for Emacs

       :collab
       ;;floobits          ; peer programming for a price
       impatient-mode      ; show off code over HTTP

       :config
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;;literate

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.
       (default +bindings +smartparens))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7f74a3b9a1f5e3d31358b48b8f8a1154aab2534fae82c9e918fb389fca776788" "3952ef318c8cbccf09954ecf43250ac0cbd1f4ae66b4abe569491b260f6e054b" "8c847a5675ece40017de93045a28ebd9ede7b843469c5dec78988717f943952a" "1a6d627434899f6d21e35b85fee62079db55ef04ecd9b70b82e5d475406d9c69" "f5568ed375abea716d1bdfae0316d1d179f69972eaccd1f331b3e9863d7e174a" "e95ad48fd7cb77322e89fa7df2e66282ade015866b0c675b1d5b9e6ed88649b4" "06e4b3fdcbadc29ff95a7146dee846cd027cfefca871b2e9142b54ad5de4832f" "1ce41d115da8d2be704cdad88fa865a9a5df0fe46949c9f9dd6b5b6ed3f07f99" "8047ac280914cbe8dcdc489703c398f0941339cfca77dfc09f3641f1f040267c" "1d265677f99a321b640e4d762fba7c5e32ebb75250999ba53577e2a9eb009a3e" "868abc288f3afe212a70d24de2e156180e97c67ca2e86ba0f2bf9a18c9672f07" "49df0ada0e74872716a329425b4e49d32948ab3a7876a4685beb2625dd5af440" "cdb3e7a8864cede434b168c9a060bf853eeb5b3f9f758310d2a2e23be41a24ae" "19af2877d17fc4749ef3c860e84e8a9c177133a35c4daf6626d8e981c8eae2c7" "614e5089876ea69b515c50b6d7fa0a37eb7ed50fda224623ec49e1c91a0af6a1" "5d84ef8afded2cb54c77d21d6eb40a8a8356e4d490667ecc0de553e64e9f8292" "a16e816774b437acb78beb9916a60ea236cfcd05784227a7d829623f8468c5a2" "ef4edbfc3ec509612f3cf82476beddd2aeb3da7bdc3a35726337a0cc838a4ef4" "e3c87e869f94af65d358aa279945a3daf46f8185f1a5756ca1c90759024593dd" "4201f4d3ce08da82c08aca12d9ca2c085bb07c115c096b36f111a34f0cf8d11d" "9c27124b3a653d43b3ffa088cd092c34f3f82296cf0d5d4f719c0c0817e1afa6" "a9a3a1b0bc473e039066e90405dd1a84a96ef8df4772ef471fd1f87e4f2301a4" "2f0cbe053485bccbbbb582acdba7c7c9585ad808ee8ab32f0d727c3d39b42275" "4e132458143b6bab453e812f03208075189deca7ad5954a4abb27d5afce10a9a" "427fa665823299f8258d8e27c80a1481edbb8f5463a6fb2665261e9076626710" "0fdd9258f9bf92772bf3d7839dee12161a48225f58b91035de33abb5e3a11a73" "b0fd04a1b4b614840073a82a53e88fe2abc3d731462d6fde4e541807825af342" "a253b8f92ed1a77f179c1069c74cdcba2e62c428798c7f46062aa23efdb94ea1" "f4469be21de9e2b76148b49d46df0b4a70527d1dd20cc9a537ea56a7285125e3" "d0c943c37d6f5450c6823103544e06783204342430a36ac20f6beb5c2a48abe3" "c6eb20360a7ecdc906723a258891ba97817989115f9c01c13d0e682f4d00ae3f" "155a5de9192c2f6d53efcc9c554892a0d87d87f99ad8cc14b330f4f4be204445" "fd50a938921687443697065dd2c810d3e87c3bcaf81a33280d06a974c6697170" "1cfc3c062790a8d6f9ce677c50cf671609f45c32695778873b4a7619f1e749b5" "ed85d92735406d8b9dc96b1b7f1e1c19a908bcb550e6dcaccdbe62e43d6efbeb" "841b0cf4568ead763f166191e6573645011febc638bb32842f9a626cd8cd446a" "43c808b039893c885bdeec885b4f7572141bd9392da7f0bd8d8346e02b2ec8da" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "256bd513a9875cd855077162cdfee8d75b0ad7e18fe8b8cbc10412561fbef892" "4e10cdf7d030fb41061cf57c74f6ddfc19db8d4af6c8e0723dc77f9922543a3d" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "34c99997eaa73d64b1aaa95caca9f0d64229871c200c5254526d0062f8074693" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "955426466aa729d7d32483d3b2408cf474a1332550ad364848d1dfe9eecc8a16" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" default)))
 '(package-check-signature nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

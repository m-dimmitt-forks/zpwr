# customTerminalInstaller

This repo is my own version of Hashrocket's Dotmatrix repo.  This allows one to install a custom terminal environment with Powerline for Vim, Tmux,oh-my-zsh with the Agnosterzak theme, iftop, htop, glances, mtr and much more.  
# Supported Operating Systems:
- macOS
- raspbian
- debian
- freebsd
- kali
- fedora
- centos
- debian
- arch
- mint
- WSL
- SUSE


# Installation Instructions

```sh
git clone https://github.com/MenkeTechnologies/customTerminalInstaller.git && cd customTerminalInstaller && ./install.sh
```

Some interactivity is required near end of installer for postfix, wireshark and snort installs.

Once you reach the oh-my-zsh prompt, type ```logout```, ```exit``` or type Control-D to return to installer script.

Change line 18 in ~/.shell_aliases_functions.sh

```export GITHUB_ACCOUNT='MenkeTechnologies'```

to match your GitHub account name to enable various functionality with your account like openMyGH, hc and hd shell functions for opening your GitHub home page, creating and deleting GitHub repos from the command line.

There is a shell function called `getrc` that will pull down latest changes from this repository.

Always looking for contributors.

# Running on a MacbookPro
![Alt text](/tmuxfinal1.png?raw=true)
![Alt text](/tmuxfinal22.png?raw=true)
![Alt text](/tmuxfinal5.png?raw=true)
# Running on the Raspberry Pi 3
![Alt text](/tmuxfinal3.png?raw=true)
![Alt text](/tmuxfinal4.png?raw=true)

# Tmux keybindings (tmux lsk)
bind-key    -T copy-mode    C-Space           send-keys -X begin-selection
bind-key    -T copy-mode    C-a               send-keys -X start-of-line
bind-key    -T copy-mode    C-b               send-keys -X cursor-left
bind-key    -T copy-mode    C-c               send-keys -X cancel
bind-key    -T copy-mode    C-e               send-keys -X end-of-line
bind-key    -T copy-mode    C-f               send-keys -X cursor-right
bind-key    -T copy-mode    C-g               send-keys -X clear-selection
bind-key    -T copy-mode    C-k               send-keys -X copy-end-of-line
bind-key    -T copy-mode    C-n               send-keys -X cursor-down
bind-key    -T copy-mode    C-p               send-keys -X cursor-up
bind-key    -T copy-mode    C-r               command-prompt -i -I "#{pane_search_string}" -p "(search up)" "send -X search-backward-incremental \"%%%\""
bind-key    -T copy-mode    C-s               command-prompt -i -I "#{pane_search_string}" -p "(search down)" "send -X search-forward-incremental \"%%%\""
bind-key    -T copy-mode    C-v               send-keys -X page-down
bind-key    -T copy-mode    C-w               send-keys -X copy-selection-and-cancel
bind-key    -T copy-mode    Escape            send-keys -X cancel
bind-key    -T copy-mode    Space             send-keys -X page-down
bind-key    -T copy-mode    ,                 send-keys -X jump-reverse
bind-key    -T copy-mode    ;                 send-keys -X jump-again
bind-key    -T copy-mode    F                 command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\""
bind-key    -T copy-mode    N                 send-keys -X search-reverse
bind-key    -T copy-mode    R                 send-keys -X rectangle-toggle
bind-key    -T copy-mode    T                 command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\""
bind-key    -T copy-mode    f                 command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\""
bind-key    -T copy-mode    g                 command-prompt -p "(goto line)" "send -X goto-line \"%%%\""
bind-key    -T copy-mode    n                 send-keys -X search-again
bind-key    -T copy-mode    q                 send-keys -X cancel
bind-key    -T copy-mode    t                 command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\""
bind-key    -T copy-mode    MouseDown1Pane    select-pane
bind-key    -T copy-mode    MouseDrag1Pane    select-pane ; send-keys -X begin-selection
bind-key    -T copy-mode    MouseDragEnd1Pane send-keys -X copy-selection-and-cancel
bind-key    -T copy-mode    WheelUpPane       select-pane ; send-keys -X -N 5 scroll-up
bind-key    -T copy-mode    WheelDownPane     select-pane ; send-keys -X -N 5 scroll-down
bind-key    -T copy-mode    DoubleClick1Pane  select-pane ; send-keys -X select-word
bind-key    -T copy-mode    TripleClick1Pane  select-pane ; send-keys -X select-line
bind-key    -T copy-mode    Home              send-keys -X start-of-line
bind-key    -T copy-mode    End               send-keys -X end-of-line
bind-key    -T copy-mode    NPage             send-keys -X page-down
bind-key    -T copy-mode    PPage             send-keys -X page-up
bind-key    -T copy-mode    Up                send-keys -X cursor-up
bind-key    -T copy-mode    Down              send-keys -X cursor-down
bind-key    -T copy-mode    Left              send-keys -X cursor-left
bind-key    -T copy-mode    Right             send-keys -X cursor-right
bind-key    -T copy-mode    M-1               command-prompt -N -I 1 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode    M-2               command-prompt -N -I 2 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode    M-3               command-prompt -N -I 3 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode    M-4               command-prompt -N -I 4 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode    M-5               command-prompt -N -I 5 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode    M-6               command-prompt -N -I 6 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode    M-7               command-prompt -N -I 7 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode    M-8               command-prompt -N -I 8 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode    M-9               command-prompt -N -I 9 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode    M-<               send-keys -X history-top
bind-key    -T copy-mode    M->               send-keys -X history-bottom
bind-key    -T copy-mode    M-R               send-keys -X top-line
bind-key    -T copy-mode    M-b               send-keys -X previous-word
bind-key    -T copy-mode    M-f               send-keys -X next-word-end
bind-key    -T copy-mode    M-m               send-keys -X back-to-indentation
bind-key    -T copy-mode    M-r               send-keys -X middle-line
bind-key    -T copy-mode    M-v               send-keys -X page-up
bind-key    -T copy-mode    M-w               send-keys -X copy-selection-and-cancel
bind-key    -T copy-mode    M-{               send-keys -X previous-paragraph
bind-key    -T copy-mode    M-}               send-keys -X next-paragraph
bind-key    -T copy-mode    M-Up              send-keys -X halfpage-up
bind-key    -T copy-mode    M-Down            send-keys -X halfpage-down
bind-key    -T copy-mode    C-Up              send-keys -X scroll-up
bind-key    -T copy-mode    C-Down            send-keys -X scroll-down
bind-key    -T copy-mode-vi C-b               send-keys -X page-up
bind-key    -T copy-mode-vi C-c               send-keys -X cancel
bind-key    -T copy-mode-vi C-d               send-keys -X halfpage-down
bind-key    -T copy-mode-vi C-e               send-keys -X scroll-down
bind-key    -T copy-mode-vi C-f               send-keys -X page-down
bind-key    -T copy-mode-vi C-h               send-keys -X cursor-left
bind-key    -T copy-mode-vi C-j               send-keys -X copy-selection-and-cancel
bind-key    -T copy-mode-vi Enter             send-keys -X copy-pipe "reattach-to-user-namespace pbcopy"
bind-key    -T copy-mode-vi C-u               send-keys -X halfpage-up
bind-key    -T copy-mode-vi C-v               send-keys -X rectangle-toggle
bind-key    -T copy-mode-vi C-y               send-keys -X scroll-up
bind-key    -T copy-mode-vi Escape            send-keys -X clear-selection
bind-key    -T copy-mode-vi Space             send-keys -X begin-selection
bind-key    -T copy-mode-vi $                 send-keys -X end-of-line
bind-key    -T copy-mode-vi ,                 send-keys -X jump-reverse
bind-key    -T copy-mode-vi /                 command-prompt -p "(search down)" "send -X search-forward \"%%%\""
bind-key    -T copy-mode-vi 0                 send-keys -X start-of-line
bind-key    -T copy-mode-vi 1                 command-prompt -N -I 1 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode-vi 2                 command-prompt -N -I 2 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode-vi 3                 command-prompt -N -I 3 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode-vi 4                 command-prompt -N -I 4 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode-vi 5                 command-prompt -N -I 5 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode-vi 6                 command-prompt -N -I 6 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode-vi 7                 command-prompt -N -I 7 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode-vi 8                 command-prompt -N -I 8 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode-vi 9                 command-prompt -N -I 9 -p (repeat) "send -N \"%%%\""
bind-key    -T copy-mode-vi :                 command-prompt -p "(goto line)" "send -X goto-line \"%%%\""
bind-key    -T copy-mode-vi ;                 send-keys -X jump-again
bind-key    -T copy-mode-vi ?                 command-prompt -p "(search up)" "send -X search-backward \"%%%\""
bind-key    -T copy-mode-vi A                 send-keys -X append-selection-and-cancel
bind-key    -T copy-mode-vi B                 send-keys -X previous-space
bind-key    -T copy-mode-vi D                 send-keys -X copy-end-of-line
bind-key    -T copy-mode-vi E                 send-keys -X next-space-end
bind-key    -T copy-mode-vi F                 command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\""
bind-key    -T copy-mode-vi G                 send-keys -X history-bottom
bind-key    -T copy-mode-vi H                 send-keys -X top-line
bind-key    -T copy-mode-vi J                 send-keys -X scroll-down
bind-key    -T copy-mode-vi K                 send-keys -X scroll-up
bind-key    -T copy-mode-vi L                 send-keys -X bottom-line
bind-key    -T copy-mode-vi M                 send-keys -X middle-line
bind-key    -T copy-mode-vi N                 send-keys -X search-reverse
bind-key    -T copy-mode-vi T                 command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\""
bind-key    -T copy-mode-vi V                 send-keys -X select-line
bind-key    -T copy-mode-vi W                 send-keys -X next-space
bind-key    -T copy-mode-vi ^                 send-keys -X back-to-indentation
bind-key    -T copy-mode-vi b                 send-keys -X previous-word
bind-key    -T copy-mode-vi e                 send-keys -X next-word-end
bind-key    -T copy-mode-vi f                 command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\""
bind-key    -T copy-mode-vi g                 send-keys -X history-top
bind-key    -T copy-mode-vi h                 send-keys -X cursor-left
bind-key    -T copy-mode-vi j                 send-keys -X cursor-down
bind-key    -T copy-mode-vi k                 send-keys -X cursor-up
bind-key    -T copy-mode-vi l                 send-keys -X cursor-right
bind-key    -T copy-mode-vi n                 send-keys -X search-again
bind-key    -T copy-mode-vi o                 send-keys -X other-end
bind-key    -T copy-mode-vi q                 send-keys -X cancel
bind-key    -T copy-mode-vi t                 command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\""
bind-key    -T copy-mode-vi v                 send-keys -X begin-selection
bind-key    -T copy-mode-vi w                 send-keys -X next-word
bind-key    -T copy-mode-vi y                 send-keys -X copy-pipe "reattach-to-user-namespace pbcopy"
bind-key    -T copy-mode-vi {                 send-keys -X previous-paragraph
bind-key    -T copy-mode-vi }                 send-keys -X next-paragraph
bind-key    -T copy-mode-vi MouseDown1Pane    select-pane
bind-key    -T copy-mode-vi MouseDrag1Pane    select-pane ; send-keys -X begin-selection
bind-key    -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-selection-and-cancel
bind-key    -T copy-mode-vi WheelUpPane       select-pane ; send-keys -X -N 5 scroll-up
bind-key    -T copy-mode-vi WheelDownPane     select-pane ; send-keys -X -N 5 scroll-down
bind-key    -T copy-mode-vi DoubleClick1Pane  select-pane ; send-keys -X select-word
bind-key    -T copy-mode-vi TripleClick1Pane  select-pane ; send-keys -X select-line
bind-key    -T copy-mode-vi BSpace            send-keys -X cursor-left
bind-key    -T copy-mode-vi NPage             send-keys -X page-down
bind-key    -T copy-mode-vi PPage             send-keys -X page-up
bind-key    -T copy-mode-vi Up                send-keys -X cursor-up
bind-key    -T copy-mode-vi Down              send-keys -X cursor-down
bind-key    -T copy-mode-vi Left              send-keys -X cursor-left
bind-key    -T copy-mode-vi Right             send-keys -X cursor-right
bind-key    -T copy-mode-vi C-Up              send-keys -X scroll-up
bind-key    -T copy-mode-vi C-Down            send-keys -X scroll-down
bind-key    -T prefix       C-n               next-window
bind-key    -T prefix       C-o               rotate-window
bind-key    -T prefix       C-p               previous-window
bind-key    -T prefix       C-r               run-shell /Users/wizard/.tmux/plugins/tmux-resurrect/scripts/restore.sh
bind-key    -T prefix       C-s               run-shell /Users/wizard/.tmux/plugins/tmux-resurrect/scripts/save.sh
bind-key    -T prefix       C-v               run-shell "tmux set buffer \"$(reattach-to-user-namespace pbpaste)\"; tmux paste-buffer"
bind-key    -T prefix       C-x               send-prefix
bind-key    -T prefix       C-z               suspend-client
bind-key    -T prefix       Space             next-layout
bind-key    -T prefix       !                 break-pane
bind-key    -T prefix       "                 split-window
bind-key    -T prefix       #                 list-buffers
bind-key    -T prefix       $                 command-prompt -I "#S" "rename-session -- '%%'"
bind-key    -T prefix       %                 split-window -h
bind-key    -T prefix       &                 confirm-before -p "kill-window #W? (y/n)" kill-window
bind-key    -T prefix       '                 command-prompt -p index "select-window -t ':%%'"
bind-key -r -T prefix       (                 switch-client -p
bind-key -r -T prefix       )                 switch-client -n
bind-key    -T prefix       +                 split-window -v -c "#{pane_current_path}" ; select-pane -l ; kill-pane
bind-key    -T prefix       ,                 command-prompt -I "#W" "rename-window -- '%%'"
bind-key    -T prefix       -                 split-window -v
bind-key    -T prefix       .                 command-prompt "move-window -t '%%'"
bind-key    -T prefix       0                 select-window -t :=0
bind-key    -T prefix       1                 select-window -t :=1
bind-key    -T prefix       2                 select-window -t :=2
bind-key    -T prefix       3                 select-window -t :=3
bind-key    -T prefix       4                 select-window -t :=4
bind-key    -T prefix       5                 select-window -t :=5
bind-key    -T prefix       6                 select-window -t :=6
bind-key    -T prefix       7                 select-window -t :=7
bind-key    -T prefix       8                 select-window -t :=8
bind-key    -T prefix       9                 select-window -t :=9
bind-key    -T prefix       :                 command-prompt
bind-key    -T prefix       ;                 last-pane
bind-key    -T prefix       =                 choose-buffer -Z
bind-key    -T prefix       ?                 list-keys
bind-key    -T prefix       D                 source-file /Users/wizard/.tmux/control-window
bind-key    -T prefix       E                 source-file /Users/wizard/.tmux/fourVertical
bind-key    -T prefix       F                 source-file /Users/wizard/.tmux/four-panes
bind-key    -T prefix       G                 source-file /Users/wizard/.tmux/eight-panes
bind-key -r -T prefix       H                 resize-pane -L 5
bind-key    -T prefix       I                 run-shell /Users/wizard/.tmux/plugins/tpm/bindings/install_plugins
bind-key -r -T prefix       J                 resize-pane -D 5
bind-key -r -T prefix       K                 resize-pane -U 5
bind-key -r -T prefix       L                 resize-pane -R 5
bind-key    -T prefix       M                 select-pane -M
bind-key    -T prefix       O                 source-file /Users/wizard/.tmux/sixteen-panes
bind-key    -T prefix       P                 paste-buffer
bind-key    -T prefix       R                 source-file /Users/wizard/.tmux/thirtytwo-panes-repl
bind-key    -T prefix       S                 set-window-option synchronize-panes
bind-key    -T prefix       T                 source-file /Users/wizard/.tmux/config-files
bind-key    -T prefix       U                 run-shell /Users/wizard/.tmux/plugins/tpm/bindings/update_plugins
bind-key    -T prefix       [                 copy-mode
bind-key    -T prefix       \                 split-window -h -c "#{pane_current_path}"
bind-key    -T prefix       ]                 paste-buffer
bind-key    -T prefix       _                 split-window -v -c "#{pane_current_path}"
bind-key    -T prefix       c                 new-window
bind-key    -T prefix       d                 detach-client
bind-key    -T prefix       f                 command-prompt "find-window -- '%%'"
bind-key    -T prefix       i                 display-message
bind-key    -T prefix       l                 last-window
bind-key    -T prefix       m                 select-pane -m
bind-key -r -T prefix       n                 next-window
bind-key    -T prefix       o                 select-pane -t :.+
bind-key -r -T prefix       p                 previous-window
bind-key    -T prefix       q                 display-panes
bind-key    -T prefix       r                 source-file /Users/wizard/.tmux.conf ; display-message Reloaded!
bind-key    -T prefix       s                 choose-tree -Zs
bind-key    -T prefix       t                 clock-mode
bind-key    -T prefix       w                 choose-tree
bind-key    -T prefix       x                 kill-pane
bind-key    -T prefix       z                 resize-pane -Z
bind-key -r -T prefix       {                 rotate-window
bind-key    -T prefix       |                 split-window -h
bind-key    -T prefix       }                 swap-pane -D
bind-key    -T prefix       ~                 show-messages
bind-key    -T prefix       PPage             copy-mode -u
bind-key -r -T prefix       Up                select-pane -U
bind-key -r -T prefix       Down              select-pane -D
bind-key -r -T prefix       Left              select-pane -L
bind-key -r -T prefix       Right             select-pane -R
bind-key    -T prefix       M-1               select-layout even-horizontal
bind-key    -T prefix       M-2               select-layout even-vertical
bind-key    -T prefix       M-3               select-layout main-horizontal
bind-key    -T prefix       M-4               select-layout main-vertical
bind-key    -T prefix       M-5               select-layout tiled
bind-key    -T prefix       M-n               next-window -a
bind-key    -T prefix       M-o               rotate-window -D
bind-key    -T prefix       M-p               previous-window -a
bind-key    -T prefix       M-u               run-shell /Users/wizard/.tmux/plugins/tpm/bindings/clean_plugins
bind-key -r -T prefix       M-Up              resize-pane -U 5
bind-key -r -T prefix       M-Down            resize-pane -D 5
bind-key -r -T prefix       M-Left            resize-pane -L 5
bind-key -r -T prefix       M-Right           resize-pane -R 5
bind-key -r -T prefix       C-Up              resize-pane -U
bind-key -r -T prefix       C-Down            resize-pane -D
bind-key -r -T prefix       C-Left            resize-pane -L
bind-key -r -T prefix       C-Right           resize-pane -R
bind-key    -T root         MouseDown1Pane    select-pane -t = ; send-keys -M
bind-key    -T root         MouseDown1Status  select-window -t =
bind-key    -T root         MouseDown3Pane    if-shell -F -t = "#{mouse_any_flag}" "select-pane -t=; send-keys -M" "select-pane -t="
bind-key    -T root         MouseDrag1Pane    if-shell -F -t = "#{mouse_any_flag}" "if -Ft= \"#{pane_in_mode}\" \"copy-mode -M\" \"send-keys -M\"" "copy-mode -M"
bind-key    -T root         MouseDrag1Border  resize-pane -M
bind-key    -T root         WheelUpPane       if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= \"#{pane_in_mode}\" \"send-keys -M\" \"copy-mode -et=\""
bind-key    -T root         WheelUpStatus     previous-window
bind-key    -T root         WheelDownStatus   next-window
bind-key    -T root         M-Up              select-pane -U
bind-key    -T root         M-Down            select-pane -D
bind-key    -T root         M-Left            select-pane -L
bind-key    -T root         M-Right           select-pane -R
# Zsh Vim Normal Mode keybindings (bindkey -M vicmd -L)
bindkey -a "^D" list-choices
bindkey -a "^G" list-expand
bindkey -a "^H" vi-backward-char
bindkey -a "^J" accept-line
bindkey -a "^L" clear-screen
bindkey -a "^M" accept-line
bindkey -a "^N" down-history
bindkey -a "^P" up-history
bindkey -a "^R" redo
bindkey -a "^[" beep
bindkey -a "^[OA" up-line-or-history
bindkey -a "^[OB" down-line-or-history
bindkey -a "^[OC" vi-forward-char
bindkey -a "^[OD" vi-backward-char
bindkey -a "^[[200~" bracketed-paste
bindkey -a "^[[A" up-line-or-history
bindkey -a "^[[B" down-line-or-history
bindkey -a "^[[C" vi-forward-char
bindkey -a "^[[D" vi-backward-char
bindkey -a " " vi-forward-char
bindkey -a "\"" vi-set-buffer
bindkey -a "#" pound-insert
bindkey -a "\$" vi-end-of-line
bindkey -a "%" vi-match-bracket
bindkey -a "'" vi-goto-mark-line
bindkey -a "+" vi-down-line-or-history
bindkey -a "," vi-rev-repeat-find
bindkey -a -- "-" vi-up-line-or-history
bindkey -a "." vi-repeat-change
bindkey -a "/" vi-history-search-backward
bindkey -a "0" vi-digit-or-beginning-of-line
bindkey -R -a "1"-"9" digit-argument
bindkey -a ":" execute-named-cmd
bindkey -a ";" vi-repeat-find
bindkey -a "<" vi-unindent
bindkey -a "=" list-choices
bindkey -a ">" vi-indent
bindkey -a "?" vi-history-search-forward
bindkey -a "A" vi-add-eol
bindkey -a "B" vi-backward-blank-word
bindkey -a "C" vi-change-eol
bindkey -a "D" vi-kill-eol
bindkey -a "E" vi-forward-blank-word-end
bindkey -a "F" vi-find-prev-char
bindkey -a "G" vi-fetch-history
bindkey -a "I" vi-insert-bol
bindkey -a "J" vi-join
bindkey -a "N" vi-rev-repeat-search
bindkey -a "O" vi-open-line-above
bindkey -a "P" vi-put-before
bindkey -a "R" vi-replace
bindkey -a "S" vi-change-whole-line
bindkey -a "T" vi-find-prev-char-skip
bindkey -a "V" visual-line-mode
bindkey -a "W" vi-forward-blank-word
bindkey -a "X" vi-backward-delete-char
bindkey -a "Y" vi-yank-whole-line
bindkey -a "\^" vi-first-non-blank
bindkey -a "\`" vi-goto-mark
bindkey -a "a" vi-add-next
bindkey -a "b" vi-backward-word
bindkey -a "c" vi-change
bindkey -a "d" vi-delete
bindkey -a "e" vi-forward-word-end
bindkey -a "f" vi-find-next-char
bindkey -a "gE" vi-backward-blank-word-end
bindkey -a "gU" vi-up-case
bindkey -s -a "gUU" "gUgU"
bindkey -a "ga" what-cursor-position
bindkey -a "ge" vi-backward-word-end
bindkey -a "gg" beginning-of-buffer-or-history
bindkey -a "gu" vi-down-case
bindkey -s -a "guu" "gugu"
bindkey -a "g~" vi-oper-swap-case
bindkey -s -a "g~~" "g~g~"
bindkey -a "h" vi-backward-char
bindkey -a "i" vi-insert
bindkey -a "j" down-line-or-history
bindkey -a "k" up-line-or-history
bindkey -a "l" vi-forward-char
bindkey -a "m" vi-set-mark
bindkey -a "n" vi-repeat-search
bindkey -a "o" vi-open-line-below
bindkey -a "p" vi-put-after
bindkey -a "r" vi-replace-chars
bindkey -a "s" vi-substitute
bindkey -a "t" vi-find-next-char-skip
bindkey -a "u" undo
bindkey -a "v" visual-mode
bindkey -a "w" vi-forward-word
bindkey -a "x" vi-delete-char
bindkey -a "y" vi-yank
bindkey -a "|" vi-goto-column
bindkey -a "~" vi-swap-case
bindkey -a "^?" vi-backward-char
# Zsh Vim Insert Mode keybindings (bindkey -M viins -L)
bindkey -R -M viins "^A"-"^C" self-insert
bindkey -M viins "^D" list-choices
bindkey -R -M viins "^E"-"^F" self-insert
bindkey -M viins "^G" list-expand
bindkey -M viins "^H" vi-backward-delete-char
bindkey -M viins "^I" expand-or-complete
bindkey -M viins "^J" accept-line
bindkey -M viins "^K" self-insert
bindkey -M viins "^L" clear-screen
bindkey -M viins "^M" accept-line
bindkey -R -M viins "^N"-"^P" self-insert
bindkey -M viins "^Q" vi-quoted-insert
bindkey -M viins "^R" redisplay
bindkey -R -M viins "^S"-"^T" self-insert
bindkey -M viins "^U" vi-kill-line
bindkey -M viins "^V" vi-quoted-insert
bindkey -M viins "^W" vi-backward-kill-word
bindkey -R -M viins "^Y"-"^Z" self-insert
bindkey -M viins "^[" vi-cmd-mode
bindkey -M viins "^[OA" up-line-or-history
bindkey -M viins "^[OB" down-line-or-history
bindkey -M viins "^[OC" vi-forward-char
bindkey -M viins "^[OD" vi-backward-char
bindkey -M viins "^[[200~" bracketed-paste
bindkey -M viins "^[[A" up-line-or-history
bindkey -M viins "^[[B" down-line-or-history
bindkey -M viins "^[[C" vi-forward-char
bindkey -M viins "^[[D" vi-backward-char
bindkey -R -M viins "^\\\\"-"~" self-insert
bindkey -M viins "^?" vi-backward-delete-char
bindkey -R -M viins "\M-^@"-"\M-^?" self-insert
# Vim Keybindings Insert Mode
i  <S-BS>       @<Plug>delimitMateS-BS
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 339
i  <Plug>delimitMateJumpMany *@<SNR>25_TriggerAbb()."\<C-R>=delimitMate#JumpMany()\<CR>"
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 357
i  <C-G>g       @<Plug>delimitMateJumpMany
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 359
i  "            @<Plug>delimitMate"
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 313
i  '            @<Plug>delimitMate'
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 313
i  (            @<Plug>delimitMate(
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 291
i  )            @<Plug>delimitMate)
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 301
i  [            @<Plug>delimitMate[
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 291
i  ]            @<Plug>delimitMate]
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 301
i  `            @<Plug>delimitMate`
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 313
i  {            @<Plug>delimitMate{
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 291
i  }            @<Plug>delimitMate}
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 301
i  <BS>        * <SNR>138_OnDeleteChar( "\<BS>" )
	Last set from ~/.vim/bundle/YouCompleteMe/autoload/youcompleteme.vim line 324
i  <Nul>         <C-Space>
	Last set from ~/.vim/bundle/YouCompleteMe/autoload/youcompleteme.vim line 308
i  <C-Space>   * <C-O>$<CR>
	Last set from ~/.vimrc line 751
i  <Plug>ISurround * <C-R>=<SNR>107_insert(1)<CR>
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 588
i  <Plug>Isurround * <C-R>=<SNR>107_insert()<CR>
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 587
i  <Plug>(sexp_insert_backspace) * sexp#backspace_insertion()
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 434
i  <Plug>(sexp_insert_double_quote) * sexp#quote_insertion('"')
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 431
i  <Plug>(sexp_insert_closing_curly) * sexp#closing_insertion('}')
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 428
i  <Plug>(sexp_insert_closing_square) * sexp#closing_insertion(']')
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 427
i  <Plug>(sexp_insert_closing_round) * sexp#closing_insertion(')')
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 426
i  <Plug>(sexp_insert_opening_curly) * sexp#opening_insertion('{')
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 423
i  <Plug>(sexp_insert_opening_square) * sexp#opening_insertion('[')
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 422
i  <Plug>(sexp_insert_opening_round) * sexp#opening_insertion('(')
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 421
!  <F35>         <M-BS>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 78
!  <F34>         <M-BS>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 77
!  <F33>         ð
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 76
!  <F32>         î
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 75
!  <F31>         ä
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 74
!  <M-BS>      * <C-W>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 61
i  <S-Tab>       <Plug>SuperTabBackward
	Last set from ~/.vim/bundle/supertab/plugin/supertab.vim line 1012
i  <Plug>SuperTabBackward & <C-R>=SuperTab('p')<CR>
	Last set from ~/.vim/bundle/supertab/plugin/supertab.vim line 977
i  <Plug>SuperTabForward & <C-R>=SuperTab('n')<CR>
	Last set from ~/.vim/bundle/supertab/plugin/supertab.vim line 976
i  <C-Tab>     * <C-R>=UltiSnips#ListSnippets()<CR>
	Last set from ~/.vim/bundle/ultisnips/autoload/UltiSnips/map_keys.vim line 65
i  <Plug>NERDCommenterInsert * <Space><BS><Esc>:call NERDComment('i', "insert")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3066
i  <Plug>(fzf-maps-i) * <C-O>:call fzf#vim#maps('i', 0)<CR>
	Last set from ~/.vim/bundle/fzf.vim/plugin/fzf.vim line 143
i  <Plug>(fzf-complete-buffer-line) * fzf#vim#complete#buffer_line()
	Last set from ~/.vim/bundle/fzf.vim/plugin/fzf.vim line 140
i  <Plug>(fzf-complete-line) * fzf#vim#complete#line()
	Last set from ~/.vim/bundle/fzf.vim/plugin/fzf.vim line 139
i  <Plug>(fzf-complete-file-ag) * fzf#vim#complete#path('ag -l -g ""')
	Last set from ~/.vim/bundle/fzf.vim/plugin/fzf.vim line 138
i  <Plug>(fzf-complete-file) * fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
	Last set from ~/.vim/bundle/fzf.vim/plugin/fzf.vim line 136
i  <Plug>(fzf-complete-path) * fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
	Last set from ~/.vim/bundle/fzf.vim/plugin/fzf.vim line 135
i  <Plug>(fzf-complete-word) * fzf#vim#complete#word()
	Last set from ~/.vim/bundle/fzf.vim/plugin/fzf.vim line 130
i  <Plug>(emmet-anchorize-summary) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#anchorizeURL(1)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-anchorize-url) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#anchorizeURL(0)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-remove-tag) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#removeTag()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-split-join-tag) * <Esc>:call emmet#splitJoinTag()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-toggle-comment) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#toggleComment()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-image-size) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#imageSize()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-move-prev-item) * <Esc>:call emmet#moveNextPrevItem(1)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-move-next-item) * <Esc>:call emmet#moveNextPrevItem(0)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-move-prev) * <Esc>:call emmet#moveNextPrev(1)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-move-next) * <Esc>:call emmet#moveNextPrev(0)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-balance-tag-outword) * <Esc>:call emmet#balanceTag(-1)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-balance-tag-inward) * <Esc>:call emmet#balanceTag(1)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-update-tag) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#updateTag()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-expand-word) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#expandAbbr(1,"")<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>(emmet-expand-abbr) * <C-R>=emmet#util#closePopup()<CR><C-R>=emmet#expandAbbr(0,"")<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
i  <Plug>delimitMateS-Tab * <SNR>25_TriggerAbb()."\<C-R>=delimitMate#JumpAny()\<CR>"
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 352
i  <Plug>delimitMateSpace * <SNR>25_TriggerAbb()."\<C-R>=delimitMate#ExpandSpace()\<CR>"
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 347
i  <Plug>delimitMateCR * <SNR>25_TriggerAbb()."\<C-R>=delimitMate#ExpandReturn()\<CR>"
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 342
i  <Plug>delimitMateS-BS * delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 337
i  <Plug>delimitMateBS * <C-R>=delimitMate#BS()<CR>
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 327
i  <Plug>delimitMate` * <SNR>25_TriggerAbb()."<C-R>=delimitMate#QuoteDelim(\"\\\`\")<CR>"
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 311
i  <Plug>delimitMate' * <SNR>25_TriggerAbb()."<C-R>=delimitMate#QuoteDelim(\"\\\'\")<CR>"
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 311
i  <Plug>delimitMate" * <SNR>25_TriggerAbb()."<C-R>=delimitMate#QuoteDelim(\"\\\"\")<CR>"
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 311
i  <Plug>delimitMate] * <SNR>25_TriggerAbb().delimitMate#JumpOut("\]")
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 299
i  <Plug>delimitMate} * <SNR>25_TriggerAbb().delimitMate#JumpOut("\}")
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 299
i  <Plug>delimitMate) * <SNR>25_TriggerAbb().delimitMate#JumpOut("\)")
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 299
i  <Plug>delimitMate[ * <SNR>25_TriggerAbb().delimitMate#ParenDelim("]")
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 289
i  <Plug>delimitMate{ * <SNR>25_TriggerAbb().delimitMate#ParenDelim("}")
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 289
i  <Plug>delimitMate( * <SNR>25_TriggerAbb().delimitMate#ParenDelim(")")
	Last set from ~/.vim/bundle/delimitmate/plugin/delimitMate.vim line 289
i  <Plug>(ale_complete) * <C-\><C-O>:ALEComplete<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 258
i  <F11>       * <C-X><C-T>
	Last set from ~/.vimrc line 996
i  <F10>       * <C-X><C-K>
	Last set from ~/.vimrc line 994
i  <F7>        * <Esc>:TTags<CR>
	Last set from ~/.vimrc line 680
i  <F6>        * <Esc>:SyntasticToggleMode<CR>
	Last set from ~/.vimrc line 677
i  <F5>        * <Esc>:LOTRToggle<CR>
	Last set from ~/.vimrc line 675
i  <F4>        * <Esc>:MinimapToggle<CR>
	Last set from ~/.vimrc line 673
i  <F3>        * <Esc>:TlistAddFiles *<CR>:TlistToggle<CR>
	Last set from ~/.vimrc line 671
i  <F2>        * <Esc>:UndotreeToggle<CR>
	Last set from ~/.vimrc line 669
i  <F1>        * <Esc>:NERDTreeToggle<CR>
	Last set from ~/.vimrc line 667
i  <F8>        * <Esc>:%s@@@g<Left><Left><Left>
	Last set from ~/.vimrc line 664
i  <C-Up>      * <Esc>:<C-U>call GoToNextMarker("{{{",1)<CR>i
	Last set from ~/.vimrc line 362
i  <C-Down>    * <Esc>:<C-U>call GoToNextMarker("{{{",0)<CR>i
	Last set from ~/.vimrc line 361
i  <End>       * <Esc>Gi
	Last set from ~/.vimrc line 287
i  <Home>      * <Esc>ggi
	Last set from ~/.vimrc line 286
!  ð           * <Up>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 64
!  î           * <Down>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 63
!  æ           * <S-Right>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 62
i  ä           * <C-O>dw
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 59
!  â           * <S-Left>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 58
i  <C-A>       * <C-O>^
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 16
i  <C-B><C-N>  * <Esc>^2xji
	Last set from ~/.vimrc line 293
i  <C-B>       * getline('.')=~'^\s*$'&&col('.')>strlen(getline('.'))?"0\<C-D>\<Esc>kJs":"\<Left>"
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 21
i  <C-C>       * <Esc>:wq!<CR>:qa!<CR>
	Last set from ~/.vimrc line 274
i  <C-D>       * col('.')>strlen(getline('.'))?"\<C-D>":"\<Del>"
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 24
i  <C-D>p      * <C-O>:call GetRef()<CR>
	Last set from ~/.vimrc line 852
i  <C-D>s      * <C-O>:History/<CR>
	Last set from ~/.vimrc line 851
i  <C-D>h      * <C-O>:History:<CR>
	Last set from ~/.vimrc line 850
i  <C-D>n      * <C-O>:Snippets<CR>
	Last set from ~/.vimrc line 849
i  <C-D>w      * <C-O>:Windows<CR>
	Last set from ~/.vimrc line 848
i  <C-D>m      * <C-O>:Marks<CR>
	Last set from ~/.vimrc line 847
i  <C-D>l      * <C-O>:Lines<CR>
	Last set from ~/.vimrc line 846
i  <C-D>a      * <C-O>:Ag<CR>
	Last set from ~/.vimrc line 845
i  <C-D>b      * <C-O>:Buffers<CR>
	Last set from ~/.vimrc line 844
i  <C-D>g      * <C-O>:Commits<CR>
	Last set from ~/.vimrc line 843
i  <C-D>c      * <C-O>:Colors<CR>
	Last set from ~/.vimrc line 842
i  <C-D>f      * <C-O>:Files<CR>
	Last set from ~/.vimrc line 841
i  <C-D>y      * <Esc>:update<CR>:SyntasticCheck<CR>a
	Last set from ~/.vimrc line 838
i  <C-D>r      * <Esc>:silent !open -t %:p:h<CR>:redraw!<CR>a
	Last set from ~/.vimrc line 833
i  <C-D>v      * <Esc>:w!<CR>:call TmuxRepeatGeneric()<CR>a
	Last set from ~/.vimrc line 832
i  <C-D>d      * <Esc>:update<CR>a
	Last set from ~/.vimrc line 829
i  <C-D><C-T>  * <C-O>:call TransposeWords()<CR>
	Last set from ~/.vimrc line 263
i  <C-E>       * col('.')>strlen(getline('.'))||pumvisible()?"\<C-E>":"\<End>"
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 27
i  <C-F>       * <Esc>:q!<CR>
	Last set from ~/.vimrc line 279
i  <C-G>S        <Plug>ISurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 606
i  <C-G>s        <Plug>Isurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 605
i  <C-H>       * <SNR>138_OnDeleteChar( "\<C-H>" )
	Last set from ~/.vim/bundle/YouCompleteMe/autoload/youcompleteme.vim line 324
i  <Tab>       * <C-R>=UltiSnips#ExpandSnippetOrJump()<CR>
	Last set from ~/.vim/bundle/ultisnips/autoload/UltiSnips/map_keys.vim line 58
i  <C-L>       * <Esc>mbgg=G`bzza
	Last set from ~/.vimrc line 239
i  <C-N>       * pumvisible() ? "\<C-N>" : "\<C-N>"
	Last set from ~/.vim/bundle/YouCompleteMe/autoload/youcompleteme.vim line 286
i  <C-P>       * pumvisible() ? "\<C-P>" : "\<C-P>"
	Last set from ~/.vim/bundle/YouCompleteMe/autoload/youcompleteme.vim line 292
i  <C-S>         <Plug>Isurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 603
i  <C-T>       * i<BS><C-O>:silent! undojoin | normal! xp<CR>
	Last set from ~/.vimrc line 255
i  <C-V>       * <Esc>:w!<CR>:call TmuxRepeat()<CR>a
	Last set from ~/.vimrc line 800
i  <C-X><C-A>  * <C-A>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 17
i  <C-X>       * <C-R>=<SNR>53_ManualCompletionEnter()<CR>
	Last set from ~/.vim/bundle/supertab/plugin/supertab.vim line 974
i  <C-Y>       * <SNR>138_StopCompletion( "\<C-Y>" )
	Last set from ~/.vim/bundle/YouCompleteMe/autoload/youcompleteme.vim line 300
i  <C-Y>A        <Plug>(emmet-anchorize-summary)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>a        <Plug>(emmet-anchorize-url)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>k        <Plug>(emmet-remove-tag)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>j        <Plug>(emmet-split-join-tag)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>/        <Plug>(emmet-toggle-comment)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>i        <Plug>(emmet-image-size)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>N        <Plug>(emmet-move-prev)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>n        <Plug>(emmet-move-next)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>D        <Plug>(emmet-balance-tag-outword)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>d        <Plug>(emmet-balance-tag-inward)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>u        <Plug>(emmet-update-tag)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>;        <Plug>(emmet-expand-word)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Y>,        <Plug>(emmet-expand-abbr)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
i  <C-Z>       * <Esc>:suspend<CR>
	Last set from ~/.vimrc line 283
i  <C-\>       * <Esc>+
	Last set from ~/.vimrc line 752

# Vim Keybindings Normal Mode
n  m           *@:call <SNR>84__m_key_override()<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 89
   m*          *@:MarkologyLineHighlightToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 85
   m^          *@:MarkologyQuickFix<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 84
   m?          *@:MarkologyLocationList<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 83
   m}          *@:MarkologyPrevLocalMarkByAlpha<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 82
   m{          *@:MarkologyNextLocalMarkByAlpha<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 81
   m[          *@:MarkologyPrevLocalMarkPos<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 80
   m]          *@:MarkologyNextLocalMarkPos<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 75
   m_          *@:MarkologyClearAll<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 73
   m-          *@:MarkologyClearMark<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 72
   m+          *@:MarkologyPlaceMark<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 71
   m<Space>    *@:MarkologyPlaceMarkToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 69
   m,          *@:MarkologyPlaceMarkToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 68
   m!          *@:MarkologyToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 66
   m0          *@:MarkologyDisable<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 65
   m1          *@:MarkologyEnable<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 64
n  y<C-G>      &@:<C-U>call setreg(v:register, fugitive#Object(@%))<CR>
	Last set from ~/.vim/bundle/vim-fugitive/autoload/fugitive.vim line 152
   í           *@:MarkologyNextLocalMarkPos<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 77
n  <C-C>       * :wq!<CR>:qa!<CR>
	Last set from ~/.vimrc line 272
n  <C-D>p      * :call GetRef()<CR>
	Last set from ~/.vimrc line 866
n  <C-D>s      * :History/<CR>
	Last set from ~/.vimrc line 865
n  <C-D>h      * :History:<CR>
	Last set from ~/.vimrc line 864
n  <C-D>n      * :Snippets<CR>
	Last set from ~/.vimrc line 863
n  <C-D>w      * :Windows<CR>
	Last set from ~/.vimrc line 862
n  <C-D>m      * :Marks<CR>
	Last set from ~/.vimrc line 861
n  <C-D>b      * :Buffers<CR>
	Last set from ~/.vimrc line 860
n  <C-D>l      * :Lines<CR>
	Last set from ~/.vimrc line 859
n  <C-D>a      * :Ag<CR>
	Last set from ~/.vimrc line 858
n  <C-D>c      * :Colors<CR>
	Last set from ~/.vimrc line 856
n  <C-D>f      * :Files<CR>
	Last set from ~/.vimrc line 855
n  <C-D>y      * :update<CR>:SyntasticCheck<CR>
	Last set from ~/.vimrc line 836
n  <C-D>g      * :Commits<CR>
	Last set from ~/.vimrc line 857
n  <C-D>v      * :w!<CR>:call TmuxRepeatGeneric()<CR>
	Last set from ~/.vimrc line 831
n  <C-D>d      * :update<CR>
	Last set from ~/.vimrc line 827
n  <C-D>/      * :call NERDComment("x","Toggle")<CR>`>
	Last set from ~/.vimrc line 825
n  <C-F>       * :q!<CR>
	Last set from ~/.vimrc line 276
n  <C-G>       * :call multiple_cursors#new("n", 1)<CR>
	Last set from ~/.vim/bundle/vim-multiple-cursors/plugin/multiple_cursors.vim line 77
nox<C-H>       * 4h
	Last set from ~/.vimrc line 226
   <NL>        * 4j
	Last set from ~/.vimrc line 224
   <C-K>       * 4k
	Last set from ~/.vimrc line 225
   <C-L>       * 4l
	Last set from ~/.vimrc line 227
   <CR>          <Plug>(wildfire-fuel)
	Last set from ~/.vim/bundle/wildfire.vim/plugin/wildfire.vim line 59
   <C-P>         <Plug>(ctrlp)
	Last set from ~/.vim/bundle/ctrlp.vim/plugin/ctrlp.vim line 39
n  <C-R>         <Plug>(RepeatRedo)
	Last set from ~/.vim/bundle/vim-repeat/autoload/repeat.vim line 136
n  <C-T>       * xp
	Last set from ~/.vimrc line 254
n  <C-V>       * :w!<CR>:call TmuxRepeat()<CR>
	Last set from ~/.vimrc line 803
n  <C-X>s        <Plug>RefactorExtractSetter
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 152
n  <C-X>g        <Plug>RefactorExtractGetter
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 148
n  <C-X>p        <Plug>RefactorPutLastDown
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 143
n  <C-X>P        <Plug>RefactorPutLastUp
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 139
n  <C-Y>A        <Plug>(emmet-anchorize-summary)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>a        <Plug>(emmet-anchorize-url)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>k        <Plug>(emmet-remove-tag)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>j        <Plug>(emmet-split-join-tag)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>/        <Plug>(emmet-toggle-comment)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>i        <Plug>(emmet-image-size)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>N        <Plug>(emmet-move-prev)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>n        <Plug>(emmet-move-next)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>D        <Plug>(emmet-balance-tag-outword)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>d        <Plug>(emmet-balance-tag-inward)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>u        <Plug>(emmet-update-tag)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>;        <Plug>(emmet-expand-word)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
n  <C-Y>,        <Plug>(emmet-expand-abbr)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
   <Esc>[1;5D    <C-Left>
	Last set from ~/.vimrc line 933
   <Esc>[1;5C    <C-Right>
	Last set from ~/.vimrc line 932
   <Esc>[1;5B    <C-Down>
	Last set from ~/.vimrc line 931
   <Esc>[1;5A    <C-Up>
	Last set from ~/.vimrc line 930
n  <Esc><C-C>  * wvU
	Last set from ~/.vimrc line 266
n  <Esc><C-T>  * :call TransposeWords()<CR>
	Last set from ~/.vimrc line 262
n  <C-\>       * +
	Last set from ~/.vimrc line 753
n  <Space>d    * :YcmShowDetailedDiagnostic<CR>
	Last set from ~/.vim/bundle/YouCompleteMe/autoload/youcompleteme.vim line 316
n  <Space>mt   * :MinimapToggle<CR>
	Last set from ~/.vim/bundle/vim-minimap/plugin/minimap.vim line 28
n  <Space>mc   * :MinimapClose<CR>
	Last set from ~/.vim/bundle/vim-minimap/plugin/minimap.vim line 26
n  <Space>mu   * :MinimapUpdate<CR>
	Last set from ~/.vim/bundle/vim-minimap/plugin/minimap.vim line 24
n  <Space>mm   * :Minimap<CR>
	Last set from ~/.vim/bundle/vim-minimap/plugin/minimap.vim line 22
n  <Space>cr     <Plug>LOTRToggle
	Last set from ~/.vim/bundle/vim-lotr/plugin/lotr.vim line 381
   <Space><Space>   <Plug>(easymotion-prefix)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 244
n  <Space>ca     <Plug>NERDCommenterAltDelims
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>cu     <Plug>NERDCommenterUncomment
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>cb     <Plug>NERDCommenterAlignBoth
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>cl     <Plug>NERDCommenterAlignLeft
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>cA     <Plug>NERDCommenterAppend
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>cy     <Plug>NERDCommenterYank
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>cs     <Plug>NERDCommenterSexy
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>ci     <Plug>NERDCommenterInvert
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>c$     <Plug>NERDCommenterToEOL
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>cn     <Plug>NERDCommenterNested
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>cm     <Plug>NERDCommenterMinimal
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>c<Space>   <Plug>NERDCommenterToggle
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
n  <Space>cc     <Plug>NERDCommenterComment
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
   <Space><Space>e   <Plug>(easymotion-bd-e)
	Last set from ~/.vimrc line 683
   <Space><Space>w   <Plug>(easymotion-bd-w)
	Last set from ~/.vimrc line 682
n  <Space>n    * :n<CR>
	Last set from ~/.vimrc line 663
n  <Space>[    * :call Quoter("bracket")<CR>
	Last set from ~/.vimrc line 650
n  <Space>`    * :call Quoter("back")<CR>
	Last set from ~/.vimrc line 649
n  <Space>'    * :call Quoter("single")<CR>
	Last set from ~/.vimrc line 648
n  <Space>"    * :call Quoter("double")<CR>
	Last set from ~/.vimrc line 647
n  <Space>z    * :call IndentSqueeze()<CR>
	Last set from ~/.vimrc line 359
n  <Space>t    * :tabnew<CR>
	Last set from ~/.vimrc line 307
n  <Space>h    * :sp<CR>
	Last set from ~/.vimrc line 306
n  <Space>s    * :vs<CR>
	Last set from ~/.vimrc line 304
n  <Space>w    * :w!<CR>
	Last set from ~/.vimrc line 302
n  <Space>e    * :q!<CR>
	Last set from ~/.vimrc line 301
n  <Space>c    * :wq!<CR>
	Last set from ~/.vimrc line 300
n  <Space>q    * :qa!<CR>
	Last set from ~/.vimrc line 299
   <Space>=    * 4+
	Last set from ~/.vimrc line 229
   <Space>-    * 4-
	Last set from ~/.vimrc line 228
nox(           * repmo#SelfKey('(', ')')
	Last set from ~/.vimrc line 721
nox)           * repmo#SelfKey(')', '(')
	Last set from ~/.vimrc line 722
nox+           * repmo#SelfKey('+', '-')
	Last set from ~/.vimrc line 717
n  ,e            <Plug>CamelCaseMotion_e
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 165
nox,             repmo#LastRevKey('<Plug>Sneak_,')
	Last set from ~/.vimrc line 694
nox-           * repmo#SelfKey('-', '+')
	Last set from ~/.vimrc line 718
n  .             <Plug>(RepeatDot)
	Last set from ~/.vim/bundle/vim-repeat/autoload/repeat.vim line 127
nox;             repmo#LastKey('<Plug>Sneak_;')
	Last set from ~/.vimrc line 693
n  <p          & :call <SNR>108_putline(']p', 'Below')<CR><']
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  <P          & :call <SNR>108_putline('[p', 'Above')<CR><']
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  =p          & :call <SNR>108_putline(']p', 'Below')<CR>=']
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  =P          & :call <SNR>108_putline('[p', 'Above')<CR>=']
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  =op         * <Nop>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 298
n  =o            <SNR>108_legacy_option_map(nr2char(getchar()))
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 297
n  >p          & :call <SNR>108_putline(']p', 'Below')<CR>>']
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  >P          & :call <SNR>108_putline('[p', 'Above')<CR>>']
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  @:            <Plug>RepeatEx
	Last set from ~/.vimrc line 259
   B           * repmo#SelfKey('b', 'w')
	Last set from ~/.vimrc line 714
noxE           * repmo#SelfKey('E', 'gE')
	Last set from ~/.vimrc line 711
noxF             repmo#ZapKey('<Plug>Sneak_F')
	Last set from ~/.vimrc line 700
noxT             repmo#ZapKey('<Plug>Sneak_T')
	Last set from ~/.vimrc line 702
n  U             <Plug>(RepeatUndoLine)
	Last set from ~/.vim/bundle/vim-repeat/autoload/repeat.vim line 133
   W           * repmo#SelfKey('w', 'b')
	Last set from ~/.vimrc line 713
n  Y           * yy`>
	Last set from ~/.vimrc line 808
n  [xx           <Plug>unimpaired_line_xml_encode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [x            <Plug>unimpaired_xml_encode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [uu           <Plug>unimpaired_line_url_encode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [u            <Plug>unimpaired_url_encode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [yy           <Plug>unimpaired_line_string_encode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [y            <Plug>unimpaired_string_encode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [P            <Plug>unimpairedPutAbove
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [p            <Plug>unimpairedPutAbove
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [op         & :call <SNR>108_setup_paste()<CR>O
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [o+         & :set cursorline cursorcolumn<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [ox         & :set cursorline cursorcolumn<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [ov         & :set virtualedit+=all<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [ow         & :setlocal wrap<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [os         & :setlocal spell<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [or         & :setlocal relativenumber<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [on         & :setlocal number<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [ol         & :setlocal list<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [oi         & :set ignorecase<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [oh         & :set hlsearch<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [od         & :diffthis<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [o|         & :setlocal cursorcolumn<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [ou         & :setlocal cursorcolumn<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [o_         & :setlocal cursorline<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [o-         & :setlocal cursorline<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [oc         & :setlocal cursorline<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [ob         & :set background=light<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [e            <Plug>unimpairedMoveUp
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [<Space>      <Plug>unimpairedBlankUp
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [n            <Plug>unimpairedContextPrevious
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [f            <Plug>unimpairedDirectoryPrevious
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [<C-T>        <Plug>unimpairedTPPrevious
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [T            <Plug>unimpairedTFirst
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [t            <Plug>unimpairedTPrevious
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [<C-Q>        <Plug>unimpairedQPFile
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [Q            <Plug>unimpairedQFirst
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [q            <Plug>unimpairedQPrevious
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [<C-L>        <Plug>unimpairedLPFile
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [L            <Plug>unimpairedLFirst
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [l            <Plug>unimpairedLPrevious
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [B            <Plug>unimpairedBFirst
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [b            <Plug>unimpairedBPrevious
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [A            <Plug>unimpairedAFirst
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  [a            <Plug>unimpairedAPrevious
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  []            k$][%?}<CR>]}]]}]]
	Last set from ~/.vimrc line 871
n  [[            ?{<CR>w99[{
	Last set from ~/.vimrc line 868
nox[m          * repmo#SelfKey('[m', ']m')
	Last set from ~/.vimrc line 728
n  \K          * :OnlineThesaurusCurrentWord<CR>
	Last set from ~/.vim/bundle/vim-online-thesaurus/plugin/online-thesaurus.vim line 79
n  ]xx           <Plug>unimpaired_line_xml_decode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]x            <Plug>unimpaired_xml_decode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]uu           <Plug>unimpaired_line_url_decode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]u            <Plug>unimpaired_url_decode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]yy           <Plug>unimpaired_line_string_decode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]y            <Plug>unimpaired_string_decode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]P            <Plug>unimpairedPutBelow
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]p            <Plug>unimpairedPutBelow
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]op         & :call <SNR>108_setup_paste()<CR>o
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]o+         & :set nocursorline nocursorcolumn<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]ox         & :set nocursorline nocursorcolumn<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]ov         & :set virtualedit-=all<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]ow         & :setlocal nowrap<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]os         & :setlocal nospell<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]or         & :setlocal norelativenumber<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]on         & :setlocal nonumber<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]ol         & :setlocal nolist<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]oi         & :set noignorecase<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]oh         & :set nohlsearch<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]od         & :diffoff<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]o|         & :setlocal nocursorcolumn<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]ou         & :setlocal nocursorcolumn<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]o_         & :setlocal nocursorline<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]o-         & :setlocal nocursorline<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]oc         & :setlocal nocursorline<C-R>=<SNR>108_statusbump()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]ob         & :set background=dark<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]e            <Plug>unimpairedMoveDown
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]<Space>      <Plug>unimpairedBlankDown
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]n            <Plug>unimpairedContextNext
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]f            <Plug>unimpairedDirectoryNext
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]<C-T>        <Plug>unimpairedTPNext
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]T            <Plug>unimpairedTLast
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]t            <Plug>unimpairedTNext
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]<C-Q>        <Plug>unimpairedQNFile
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]Q            <Plug>unimpairedQLast
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]q            <Plug>unimpairedQNext
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]<C-L>        <Plug>unimpairedLNFile
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]L            <Plug>unimpairedLLast
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]l            <Plug>unimpairedLNext
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]B            <Plug>unimpairedBLast
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]b            <Plug>unimpairedBNext
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]A            <Plug>unimpairedALast
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]a            <Plug>unimpairedANext
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ]]            j0[[%/{<CR>
	Last set from ~/.vimrc line 870
n  ][            /}<CR>b99]}
	Last set from ~/.vimrc line 869
nox]m          * repmo#SelfKey(']m', '[m')
	Last set from ~/.vimrc line 727
noxb             <Plug>CamelCaseMotion_b
	Last set from ~/.vimrc line 707
n  cop         * <Nop>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 294
n  co            <SNR>108_legacy_option_map(nr2char(getchar()))
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 293
n  cS            <Plug>CSurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 593
n  cs            <Plug>Csurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 592
n  ds            <Plug>Dsurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 591
noxe           * repmo#SelfKey('e', 'ge')
	Last set from ~/.vimrc line 715
noxf             repmo#ZapKey('<Plug>Sneak_f')
	Last set from ~/.vimrc line 699
n  gx            <Plug>NetrwBrowseX
	Last set from /Applications/MacVim.app/Contents/Resources/vim/runtime/plugin/netrwPlugin.vim line 82
noxge          * repmo#SelfKey('ge', 'e')
	Last set from ~/.vimrc line 716
noxgE          * repmo#SelfKey('gE', 'E')
	Last set from ~/.vimrc line 712
noxh           * repmo#SelfKey('h', 'l')
	Last set from ~/.vimrc line 732
noxj             repmo#Key('gj', 'gk')
	Last set from ~/.vimrc line 735
noxk             repmo#Key('gk', 'gj')
	Last set from ~/.vimrc line 736
noxl           * repmo#SelfKey('l', 'h')
	Last set from ~/.vimrc line 733
n  mg            <Plug>BookmarkMoveToLine
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 546
n  mjj           <Plug>BookmarkMoveDown
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 546
n  mkk           <Plug>BookmarkMoveUp
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 546
n  mx            <Plug>BookmarkClearAll
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 546
n  mc            <Plug>BookmarkClear
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 546
n  mp            <Plug>BookmarkPrev
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 546
n  mn            <Plug>BookmarkNext
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 546
n  mi            <Plug>BookmarkAnnotate
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 546
n  mm            <Plug>BookmarkToggle
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 546
n  ma            <Plug>BookmarkShowAll
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 546
nx s             repmo#ZapKey('<Plug>Sneak_s')
	Last set from ~/.vimrc line 696
noxt             repmo#ZapKey('<Plug>Sneak_t')
	Last set from ~/.vimrc line 701
n  u             <Plug>(RepeatUndo)
	Last set from ~/.vim/bundle/vim-repeat/autoload/repeat.vim line 130
noxw             <Plug>CamelCaseMotion_w
	Last set from ~/.vimrc line 706
n  yop         & :call <SNR>108_setup_paste()<CR>0C
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yo+         & :set <C-R>=<SNR>108_cursor_options()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yox         & :set <C-R>=<SNR>108_cursor_options()<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yov         & :set <C-R>=(&virtualedit =~# "all") ? "virtualedit-=all" : "virtualedit+=all"<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yow         & :setlocal <C-R>=<SNR>108_toggle("wrap")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yos         & :setlocal <C-R>=<SNR>108_toggle("spell")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yor         & :setlocal <C-R>=<SNR>108_toggle("relativenumber")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yon         & :setlocal <C-R>=<SNR>108_toggle("number")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yol         & :setlocal <C-R>=<SNR>108_toggle("list")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yoi         & :set <C-R>=<SNR>108_toggle("ignorecase")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yoh         & :set <C-R>=<SNR>108_toggle("hlsearch")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yod         & :<C-R>=&diff ? "diffoff" : "diffthis"<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yo|         & :setlocal <C-R>=<SNR>108_toggle("cursorcolumn")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  you         & :setlocal <C-R>=<SNR>108_toggle("cursorcolumn")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yo_         & :setlocal <C-R>=<SNR>108_toggle("cursorline")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yo-         & :setlocal <C-R>=<SNR>108_toggle("cursorline")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yoc         & :setlocal <C-R>=<SNR>108_toggle("cursorline")<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  yob         & :set background=<C-R>=&background == "dark" ? "light" : "dark"<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
n  ySS           <Plug>YSsurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 598
n  ySs           <Plug>YSsurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 597
n  yss           <Plug>Yssurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 596
n  yS            <Plug>YSurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 595
n  ys            <Plug>Ysurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 594
nox{           * repmo#SelfKey('{', '}')
	Last set from ~/.vimrc line 719
nox}           * repmo#SelfKey('}', '{')
	Last set from ~/.vimrc line 720
n  <SNR>131_:  * :<C-U><C-R>=v:count ? v:count : ''<CR>
	Last set from ~/.vim/bundle/vim-fugitive/autoload/fugitive.vim line 3985
n  <Plug>NetrwBrowseX * :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<CR>
	Last set from /Applications/MacVim.app/Contents/Resources/vim/runtime/plugin/netrwPlugin.vim line 84
n  <Plug>(wildfire-quick-select) * :<C-U>call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR>
	Last set from ~/.vim/bundle/wildfire.vim/autoload/wildfire/triggers.vim line 17
n  <Plug>(wildfire-fuel) * :<C-U>call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR>
	Last set from ~/.vim/bundle/wildfire.vim/autoload/wildfire/triggers.vim line 10
n  <Plug>unimpaired_line_xml_decode * <SNR>108_TransformSetup("xml_decode")."_"
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 510
n  <Plug>unimpaired_xml_decode * <SNR>108_TransformSetup("xml_decode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 508
n  <Plug>unimpaired_line_xml_encode * <SNR>108_TransformSetup("xml_encode")."_"
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 510
n  <Plug>unimpaired_xml_encode * <SNR>108_TransformSetup("xml_encode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 508
n  <Plug>unimpaired_line_url_decode * <SNR>108_TransformSetup("url_decode")."_"
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 510
n  <Plug>unimpaired_url_decode * <SNR>108_TransformSetup("url_decode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 508
n  <Plug>unimpaired_line_url_encode * <SNR>108_TransformSetup("url_encode")."_"
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 510
n  <Plug>unimpaired_url_encode * <SNR>108_TransformSetup("url_encode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 508
n  <Plug>unimpaired_line_string_decode * <SNR>108_TransformSetup("string_decode")."_"
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 510
n  <Plug>unimpaired_string_decode * <SNR>108_TransformSetup("string_decode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 508
n  <Plug>unimpaired_line_string_encode * <SNR>108_TransformSetup("string_encode")."_"
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 510
n  <Plug>unimpaired_string_encode * <SNR>108_TransformSetup("string_encode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 508
n  <Plug>unimpairedPutBelow * :call <SNR>108_putline(']p', 'Below')<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 340
n  <Plug>unimpairedPutAbove * :call <SNR>108_putline('[p', 'Above')<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 339
n  <Plug>unimpairedPaste * :call <SNR>108_setup_paste()<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 319
   <Plug>unimpairedMoveSelectionDown * :<C-U>call <SNR>108_MoveSelectionDown(v:count1)<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 230
   <Plug>unimpairedMoveSelectionUp * :<C-U>call <SNR>108_MoveSelectionUp(v:count1)<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 229
n  <Plug>unimpairedMoveDown * :<C-U>call <SNR>108_Move('+',v:count1,'Down')<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 228
n  <Plug>unimpairedMoveUp * :<C-U>call <SNR>108_Move('--',v:count1,'Up')<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 227
n  <Plug>unimpairedBlankDown * :<C-U>call <SNR>108_BlankDown(v:count1)<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 194
n  <Plug>unimpairedBlankUp * :<C-U>call <SNR>108_BlankUp(v:count1)<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 193
n  <Plug>unimpairedContextNext * :call <SNR>108_Context(0)<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 141
n  <Plug>unimpairedContextPrevious * :call <SNR>108_Context(1)<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 140
n  <Plug>unimpairedDirectoryPrevious * :<C-U>edit <C-R>=<SNR>108_fnameescape(fnamemodify(<SNR>108_FileByOffset(-v:count1), ':.'))<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 129
n  <Plug>unimpairedDirectoryNext * :<C-U>edit <C-R>=<SNR>108_fnameescape(fnamemodify(<SNR>108_FileByOffset(v:count1), ':.'))<CR><CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 128
n  <Plug>unimpairedTPNext * :<C-U>exe "p".(v:count ? v:count : "")."tnext"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 62
n  <Plug>unimpairedTPPrevious * :<C-U>exe "p".(v:count ? v:count : "")."tprevious"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 61
n  <Plug>unimpairedTLast * :<C-U>exe "".(v:count ? v:count : "")."tlast"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 50
n  <Plug>unimpairedTFirst * :<C-U>exe "".(v:count ? v:count : "")."tfirst"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 49
n  <Plug>unimpairedTNext * :<C-U>exe "".(v:count ? v:count : "")."tnext"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 48
n  <Plug>unimpairedTPrevious * :<C-U>exe "".(v:count ? v:count : "")."tprevious"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 47
n  <Plug>unimpairedQNFile * :<C-U>exe "".(v:count ? v:count : "")."cnfile"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 57
n  <Plug>unimpairedQPFile * :<C-U>exe "".(v:count ? v:count : "")."cpfile"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 56
n  <Plug>unimpairedQLast * :<C-U>exe "".(v:count ? v:count : "")."clast"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 50
n  <Plug>unimpairedQFirst * :<C-U>exe "".(v:count ? v:count : "")."cfirst"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 49
n  <Plug>unimpairedQNext * :<C-U>exe "".(v:count ? v:count : "")."cnext"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 48
n  <Plug>unimpairedQPrevious * :<C-U>exe "".(v:count ? v:count : "")."cprevious"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 47
n  <Plug>unimpairedLNFile * :<C-U>exe "".(v:count ? v:count : "")."lnfile"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 57
n  <Plug>unimpairedLPFile * :<C-U>exe "".(v:count ? v:count : "")."lpfile"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 56
n  <Plug>unimpairedLLast * :<C-U>exe "".(v:count ? v:count : "")."llast"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 50
n  <Plug>unimpairedLFirst * :<C-U>exe "".(v:count ? v:count : "")."lfirst"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 49
n  <Plug>unimpairedLNext * :<C-U>exe "".(v:count ? v:count : "")."lnext"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 48
n  <Plug>unimpairedLPrevious * :<C-U>exe "".(v:count ? v:count : "")."lprevious"<CR>zv
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 47
n  <Plug>unimpairedBLast * :<C-U>exe "".(v:count ? v:count : "")."blast"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 50
n  <Plug>unimpairedBFirst * :<C-U>exe "".(v:count ? v:count : "")."bfirst"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 49
n  <Plug>unimpairedBNext * :<C-U>exe "".(v:count ? v:count : "")."bnext"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 48
n  <Plug>unimpairedBPrevious * :<C-U>exe "".(v:count ? v:count : "")."bprevious"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 47
n  <Plug>unimpairedALast * :<C-U>exe "".(v:count ? v:count : "")."last"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 50
n  <Plug>unimpairedAFirst * :<C-U>exe "".(v:count ? v:count : "")."first"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 49
n  <Plug>unimpairedANext * :<C-U>exe "".(v:count ? v:count : "")."next"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 48
n  <Plug>unimpairedAPrevious * :<C-U>exe "".(v:count ? v:count : "")."previous"<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 47
n  <Plug>YSurround * <SNR>107_opfunc2('setup')
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 584
n  <Plug>Ysurround * <SNR>107_opfunc('setup')
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 583
n  <Plug>YSsurround * <SNR>107_opfunc2('setup').'_'
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 582
n  <Plug>Yssurround * '^'.v:count1.<SNR>107_opfunc('setup').'g_'
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 581
n  <Plug>CSurround * :<C-U>call <SNR>107_changesurround(1)<CR>
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 580
n  <Plug>Csurround * :<C-U>call <SNR>107_changesurround()<CR>
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 579
n  <Plug>Dsurround * :<C-U>call <SNR>107_dosurround(<SNR>107_inputtarget())<CR>
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 578
n  <Plug>SurroundRepeat * .
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 577
n  <Plug>(startify-open-buffers) * :<C-U>call startify#open_buffers()<CR>
	Last set from ~/.vim/bundle/vim-startify/plugin/startify.vim line 66
n  <Plug>SneakPrevious   <Plug>Sneak_,
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 417
n  <Plug>SneakNext   <Plug>Sneak_;
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 416
n  <Plug>(SneakStreakBackward)   <Plug>SneakLabel_S
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 411
n  <Plug>(SneakStreak)   <Plug>SneakLabel_s
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 410
n  <Plug>SneakBackward   <Plug>Sneak_S
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 405
n  <Plug>SneakForward   <Plug>Sneak_s
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 404
n  <Plug>SneakLabel_S * :<C-U>call sneak#wrap('', 2, 1, 2, 2)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 360
n  <Plug>SneakLabel_s * :<C-U>call sneak#wrap('', 2, 0, 2, 2)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 359
n  <Plug>Sneak_T * :<C-U>call sneak#wrap('', 1, 1, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 353
n  <Plug>Sneak_t * :<C-U>call sneak#wrap('', 1, 0, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 352
n  <Plug>Sneak_F * :<C-U>call sneak#wrap('', 1, 1, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 345
n  <Plug>Sneak_f * :<C-U>call sneak#wrap('', 1, 0, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 344
n  <Plug>Sneak_, * :<C-U>call <SNR>104_rpt('', 1)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 337
n  <Plug>Sneak_; * :<C-U>call <SNR>104_rpt('', 0)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 336
n  <Plug>Sneak_S * :<C-U>call sneak#wrap('', 2, 1, 2, 1)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 327
n  <Plug>Sneak_s * :<C-U>call sneak#wrap('', 2, 0, 2, 1)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 326
n  <Plug>(sexp_capture_next_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 1, 1) | call <SNR>101_repeat_set("\<Plug>(sexp_capture_next_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_capture_prev_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 0, 1) | call <SNR>101_repeat_set("\<Plug>(sexp_capture_prev_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_emit_tail_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 1, 0) | call <SNR>101_repeat_set("\<Plug>(sexp_emit_tail_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_emit_head_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'n', 0, 0) | call <SNR>101_repeat_set("\<Plug>(sexp_emit_head_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_swap_element_forward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 1, 0) | call <SNR>101_repeat_set("\<Plug>(sexp_swap_element_forward)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_swap_element_backward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 0, 0) | call <SNR>101_repeat_set("\<Plug>(sexp_swap_element_backward)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_swap_list_forward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 1, 1) | call <SNR>101_repeat_set("\<Plug>(sexp_swap_list_forward)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_swap_list_backward) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#swap_element', 'n', 0, 1) | call <SNR>101_repeat_set("\<Plug>(sexp_swap_list_backward)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_splice_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#splice_list(b:sexp_count) | call <SNR>101_repeat_set("\<Plug>(sexp_splice_list)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_convolute) * :<C-U>let b:sexp_count = v:count | call sexp#convolute(b:sexp_count, 'n') | call <SNR>101_repeat_set("\<Plug>(sexp_convolute)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_raise_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#raise', 'n', 'sexp#select_current_element', 'n', 1) | call <SNR>101_repeat_set("\<Plug>(sexp_raise_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_raise_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#raise', 'n', 'sexp#select_current_list', 'n', 0, 0) | call <SNR>101_repeat_set("\<Plug>(sexp_raise_list)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_insert_at_list_tail) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#insert_at_list_terminal(1) | call <SNR>101_repeat_set("\<Plug>(sexp_insert_at_list_tail)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_insert_at_list_head) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#insert_at_list_terminal(0) | call <SNR>101_repeat_set("\<Plug>(sexp_insert_at_list_head)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_curly_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '{', '}', 1, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_curly_tail_wrap_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_curly_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '{', '}', 0, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_curly_head_wrap_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_square_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '[', ']', 1, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_square_tail_wrap_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_square_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '[', ']', 0, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_square_head_wrap_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_round_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '(', ')', 1, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_round_tail_wrap_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_round_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('e', '(', ')', 0, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_round_head_wrap_element)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_curly_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '{', '}', 1, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_curly_tail_wrap_list)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_curly_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '{', '}', 0, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_curly_head_wrap_list)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_square_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '[', ']', 1, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_square_tail_wrap_list)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_square_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '[', ']', 0, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_square_head_wrap_list)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_round_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '(', ')', 1, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_round_tail_wrap_list)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_round_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('f', '(', ')', 0, g:sexp_insert_after_wrap) | call <SNR>101_repeat_set("\<Plug>(sexp_round_head_wrap_list)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_indent_top) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#indent(1, b:sexp_count) | call <SNR>101_repeat_set("\<Plug>(sexp_indent_top)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_indent) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#indent(0, b:sexp_count) | call <SNR>101_repeat_set("\<Plug>(sexp_indent)", b:sexp_count)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 162
n  <Plug>(sexp_select_next_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_adjacent_element', 'n', 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_select_prev_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_adjacent_element', 'n', 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_move_to_next_top_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#move_to_adjacent_element('n', b:sexp_count, 1, 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_move_to_prev_top_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#move_to_adjacent_element('n', b:sexp_count, 0, 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_flow_to_next_leaf_tail) * :<C-U>let b:sexp_count = v:count | call sexp#leaf_flow('n', b:sexp_count, 1, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_flow_to_prev_leaf_tail) * :<C-U>let b:sexp_count = v:count | call sexp#leaf_flow('n', b:sexp_count, 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_flow_to_next_leaf_head) * :<C-U>let b:sexp_count = v:count | call sexp#leaf_flow('n', b:sexp_count, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_flow_to_prev_leaf_head) * :<C-U>let b:sexp_count = v:count | call sexp#leaf_flow('n', b:sexp_count, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_flow_to_next_close) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#list_flow('n', b:sexp_count, 1, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_flow_to_next_open) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#list_flow('n', b:sexp_count, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_flow_to_prev_open) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#list_flow('n', b:sexp_count, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_flow_to_prev_close) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#list_flow('n', b:sexp_count, 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_move_to_next_element_tail) * :<C-U>let b:sexp_count = v:count | call sexp#move_to_adjacent_element('n', b:sexp_count, 1, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_move_to_prev_element_tail) * :<C-U>let b:sexp_count = v:count | call sexp#move_to_adjacent_element('n', b:sexp_count, 0, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_move_to_next_element_head) * :<C-U>let b:sexp_count = v:count | call sexp#move_to_adjacent_element('n', b:sexp_count, 1, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_move_to_prev_element_head) * :<C-U>let b:sexp_count = v:count | call sexp#move_to_adjacent_element('n', b:sexp_count, 0, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_move_to_next_bracket) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#move_to_nearest_bracket', 'n', 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(sexp_move_to_prev_bracket) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#move_to_nearest_bracket', 'n', 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
n  <Plug>(RepeatRedo) * :<C-U>call repeat#wrap("\<C-R>",v:count)<CR>
	Last set from ~/.vim/bundle/vim-repeat/autoload/repeat.vim line 124
n  <Plug>(RepeatUndoLine) * :<C-U>call repeat#wrap('U',v:count)<CR>
	Last set from ~/.vim/bundle/vim-repeat/autoload/repeat.vim line 123
n  <Plug>(RepeatUndo) * :<C-U>call repeat#wrap('u',v:count)<CR>
	Last set from ~/.vim/bundle/vim-repeat/autoload/repeat.vim line 122
n  <Plug>(RepeatDot) * :<C-U>exe repeat#run(v:count)<CR>
	Last set from ~/.vim/bundle/vim-repeat/autoload/repeat.vim line 121
   <F35>         <M-BS>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 83
   <F34>         <M-BS>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 82
   <F33>         ð
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 81
   <F32>         î
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 80
   <F31>         ä
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 79
n  <Plug>RefactorExtractSetter * <C-\><C-N>:call lh#refactor#extract_setter()<CR>
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 150
n  <Plug>RefactorExtractGetter * <C-\><C-N>:call lh#refactor#extract_getter()<CR>
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 146
n  <Plug>RefactorPutLastDown * <C-\><C-N>:call lh#refactor#put_extracted_last('')<CR>
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 141
n  <Plug>RefactorPutLastUp * <C-\><C-N>:call lh#refactor#put_extracted_last('!')<CR>
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 137
n  <Plug>MarkologyLineHighlightToggle * :MarkologyLineHighlightToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 133
n  <Plug>MarkologyQuickFix * :MarkologyQuickFix<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 132
n  <Plug>MarkologyLocationList * :MarkologyLocationList<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 131
n  <Plug>MarkologyPrevLocalMarkByAlpha * :MarkologyPrevLocalMarkByAlpha<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 130
n  <Plug>MarkologyNextLocalMarkByAlpha * :MarkologyNextLocalMarkByAlpha<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 129
n  <Plug>MarkologyPrevLocalMarkPos * :MarkologyPrevLocalMarkPos<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 128
n  <Plug>MarkologyNextLocalMarkPos * :MarkologyNextLocalMarkPos<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 127
n  <Plug>MarkologyClearAll * :MarkologyClearAll<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 126
n  <Plug>MarkologyClearMark * :MarkologyClearMark<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 125
n  <Plug>MarkologyPlaceMark * :MarkologyPlaceMark<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 124
n  <Plug>MarkologyPlaceMarkToggle * :MarkologyPlaceMarkToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 123
n  <Plug>MarkologyToggle * :MarkologyToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 122
n  <Plug>MarkologyDisable * :MarkologyDisable<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 121
n  <Plug>MarkologyEnable * :MarkologyEnable<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 120
n  <Plug>LOTRToggle * :LOTRToggle<CR>
	Last set from ~/.vim/bundle/vim-lotr/plugin/lotr.vim line 378
   <Plug>(easymotion-prefix)N   <Plug>(easymotion-N)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)n   <Plug>(easymotion-n)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)k   <Plug>(easymotion-k)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)j   <Plug>(easymotion-j)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)gE   <Plug>(easymotion-gE)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)ge   <Plug>(easymotion-ge)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)E   <Plug>(easymotion-E)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)e   <Plug>(easymotion-e)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)B   <Plug>(easymotion-B)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)b   <Plug>(easymotion-b)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)W   <Plug>(easymotion-W)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)w   <Plug>(easymotion-w)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)T   <Plug>(easymotion-T)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)t   <Plug>(easymotion-t)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)s   <Plug>(easymotion-s)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)F   <Plug>(easymotion-F)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)f   <Plug>(easymotion-f)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
nos<Plug>(easymotion-activate) * :<C-U>call EasyMotion#activate(0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 233
   <Plug>(easymotion-dotrepeat) * :<C-U>call EasyMotion#DotRepeat()<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 230
nos<Plug>(easymotion-repeat) * :<C-U>call EasyMotion#Repeat(0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 225
nos<Plug>(easymotion-prev) * :<C-U>call EasyMotion#NextPrevious(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 218
nos<Plug>(easymotion-next) * :<C-U>call EasyMotion#NextPrevious(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 213
nos<Plug>(easymotion-wl) * :<C-U>call EasyMotion#WBL(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-lineforward) * :<C-U>call EasyMotion#LineAnywhere(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-lineanywhere) * :<C-U>call EasyMotion#LineAnywhere(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-wl) * :<C-U>call EasyMotion#WBL(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-linebackward) * :<C-U>call EasyMotion#LineAnywhere(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bl) * :<C-U>call EasyMotion#WBL(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-el) * :<C-U>call EasyMotion#EL(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-gel) * :<C-U>call EasyMotion#EL(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-el) * :<C-U>call EasyMotion#EL(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-jumptoanywhere) * :<C-U>call EasyMotion#JumpToAnywhere(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-vim-n) * :<C-U>call EasyMotion#Search(0,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-n) * :<C-U>call EasyMotion#Search(0,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-n) * :<C-U>call EasyMotion#Search(0,2,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-vim-N) * :<C-U>call EasyMotion#Search(0,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-N) * :<C-U>call EasyMotion#Search(0,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-eol-j) * :<C-U>call EasyMotion#Eol(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-sol-k) * :<C-U>call EasyMotion#Sol(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-sol-j) * :<C-U>call EasyMotion#Sol(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-k) * :<C-U>call EasyMotion#JK(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-j) * :<C-U>call EasyMotion#JK(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-jk) * :<C-U>call EasyMotion#JK(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-eol-bd-jk) * :<C-U>call EasyMotion#Eol(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-sol-bd-jk) * :<C-U>call EasyMotion#Sol(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-eol-k) * :<C-U>call EasyMotion#Eol(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-iskeyword-ge) * :<C-U>call EasyMotion#EK(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-w) * :<C-U>call EasyMotion#WB(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-W) * :<C-U>call EasyMotion#WBW(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-iskeyword-w) * :<C-U>call EasyMotion#WBK(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-gE) * :<C-U>call EasyMotion#EW(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-e) * :<C-U>call EasyMotion#E(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-E) * :<C-U>call EasyMotion#EW(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-iskeyword-e) * :<C-U>call EasyMotion#EK(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-b) * :<C-U>call EasyMotion#WB(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-iskeyword-b) * :<C-U>call EasyMotion#WBK(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-iskeyword-bd-w) * :<C-U>call EasyMotion#WBK(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-W) * :<C-U>call EasyMotion#WBW(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-w) * :<C-U>call EasyMotion#WB(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-iskeyword-bd-e) * :<C-U>call EasyMotion#EK(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-ge) * :<C-U>call EasyMotion#E(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-E) * :<C-U>call EasyMotion#EW(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-e) * :<C-U>call EasyMotion#E(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-B) * :<C-U>call EasyMotion#WBW(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
n  <Plug>(easymotion-overwin-w) * :<C-U>call EasyMotion#overwin#w()<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 139
n  <Plug>(easymotion-overwin-line) * :<C-U>call EasyMotion#overwin#line()<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 138
n  <Plug>(easymotion-overwin-f2) * :<C-U>call EasyMotion#OverwinF(2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 137
n  <Plug>(easymotion-overwin-f) * :<C-U>call EasyMotion#OverwinF(1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 136
nos<Plug>(easymotion-Tln) * :<C-U>call EasyMotion#TL(-1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-t2) * :<C-U>call EasyMotion#T(2,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-t) * :<C-U>call EasyMotion#T(1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-s) * :<C-U>call EasyMotion#S(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-tn) * :<C-U>call EasyMotion#T(-1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-t2) * :<C-U>call EasyMotion#T(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-tl) * :<C-U>call EasyMotion#TL(1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-tn) * :<C-U>call EasyMotion#T(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-fn) * :<C-U>call EasyMotion#S(-1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-tl) * :<C-U>call EasyMotion#TL(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-fl) * :<C-U>call EasyMotion#SL(1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-tl2) * :<C-U>call EasyMotion#TL(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-fn) * :<C-U>call EasyMotion#S(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-f) * :<C-U>call EasyMotion#S(1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-fl) * :<C-U>call EasyMotion#SL(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-Fl2) * :<C-U>call EasyMotion#SL(2,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-tl2) * :<C-U>call EasyMotion#TL(2,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-f2) * :<C-U>call EasyMotion#S(2,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-Fln) * :<C-U>call EasyMotion#SL(-1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-sln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-tln) * :<C-U>call EasyMotion#TL(-1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-fl2) * :<C-U>call EasyMotion#SL(2,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-fl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-T2) * :<C-U>call EasyMotion#T(2,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-tln) * :<C-U>call EasyMotion#TL(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-T) * :<C-U>call EasyMotion#T(1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-t) * :<C-U>call EasyMotion#T(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-Tn) * :<C-U>call EasyMotion#T(-1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-s2) * :<C-U>call EasyMotion#S(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-Tl) * :<C-U>call EasyMotion#TL(1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-sn) * :<C-U>call EasyMotion#S(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-Fn) * :<C-U>call EasyMotion#S(-1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-sl) * :<C-U>call EasyMotion#SL(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-Fl) * :<C-U>call EasyMotion#SL(1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-sl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-fln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-F) * :<C-U>call EasyMotion#S(1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-f) * :<C-U>call EasyMotion#S(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-F2) * :<C-U>call EasyMotion#S(2,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-bd-f2) * :<C-U>call EasyMotion#S(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-Tl2) * :<C-U>call EasyMotion#TL(2,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
nos<Plug>(easymotion-fln) * :<C-U>call EasyMotion#SL(-1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
n  <Plug>BookmarkMoveToLine * :<C-U>BookmarkMoveToLine v:count<CR>
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 539
n  <Plug>BookmarkMoveDown * :<C-U>BookmarkMoveDown v:count<CR>
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 539
n  <Plug>BookmarkMoveUp * :<C-U>BookmarkMoveUp v:count<CR>
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 539
n  <Plug>BookmarkClearAll * :BookmarkClearAll<CR>
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 541
n  <Plug>BookmarkClear * :BookmarkClear<CR>
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 541
n  <Plug>BookmarkPrev * :BookmarkPrev<CR>
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 541
n  <Plug>BookmarkNext * :BookmarkNext<CR>
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 541
n  <Plug>BookmarkAnnotate * :BookmarkAnnotate<CR>
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 541
n  <Plug>BookmarkToggle * :BookmarkToggle<CR>
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 541
n  <Plug>BookmarkShowAll * :BookmarkShowAll<CR>
	Last set from ~/.vim/bundle/vim-bookmarks/plugin/bookmark.vim line 541
   <Plug>(asterisk-gz#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 0})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 48
   <Plug>(asterisk-z#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 1})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 47
   <Plug>(asterisk-g#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 0})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 46
   <Plug>(asterisk-#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 1})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 45
   <Plug>(asterisk-gz*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 0})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 44
   <Plug>(asterisk-z*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 1})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 43
   <Plug>(asterisk-g*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 0})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 42
   <Plug>(asterisk-*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 1})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 41
n  <Plug>NERDCommenterAltDelims * :call <SNR>30_SwitchToAlternativeDelimiters(1)<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3069
n  <Plug>NERDCommenterUncomment * :call NERDComment("n", "Uncomment")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterAlignBoth * :call NERDComment("n", "AlignBoth")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterAlignLeft * :call NERDComment("n", "AlignLeft")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterAppend * :call NERDComment("n", "Append")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterYank * :call NERDComment("n", "Yank")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterSexy * :call NERDComment("n", "Sexy")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterInvert * :call NERDComment("n", "Invert")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterToEOL * :call NERDComment("n", "ToEOL")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterNested * :call NERDComment("n", "Nested")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterMinimal * :call NERDComment("n", "Minimal")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterToggle * :call NERDComment("n", "Toggle")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>NERDCommenterComment * :call NERDComment("n", "Comment")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
n  <Plug>(fzf-maps-n) * :<C-U>call fzf#vim#maps('n', 0)<CR>
	Last set from ~/.vim/bundle/fzf.vim/plugin/fzf.vim line 142
n  <Plug>(emmet-anchorize-summary) * :call emmet#anchorizeURL(1)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-anchorize-url) * :call emmet#anchorizeURL(0)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-remove-tag) * :call emmet#removeTag()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-split-join-tag) * :call emmet#splitJoinTag()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-toggle-comment) * :call emmet#toggleComment()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-image-size) * :call emmet#imageSize()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-move-prev-item) * :call emmet#moveNextPrevItem(1)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-move-next-item) * :call emmet#moveNextPrevItem(0)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-move-prev) * :call emmet#moveNextPrev(1)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-move-next) * :call emmet#moveNextPrev(0)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-balance-tag-outword) * :call emmet#balanceTag(-1)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-balance-tag-inward) * :call emmet#balanceTag(1)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-update-tag) * :call emmet#updateTag()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-expand-word) * :call emmet#expandAbbr(1,"")<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(emmet-expand-abbr) * :call emmet#expandAbbr(3,"")<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
n  <Plug>(ctrlp) * :<C-U>CtrlP<CR>
	Last set from ~/.vim/bundle/ctrlp.vim/plugin/ctrlp.vim line 36
n  <F11>       * :call conque_term#exec_file()<CR>
	Last set from ~/.vim/bundle/Conque-Shell/plugin/conque_term.vim line 208
n  <Plug>CamelCaseMotion_e * :<C-U>call camelcasemotion#Motion('e',v:count1,'n')<CR>
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 163
n  <Plug>CamelCaseMotion_b * :<C-U>call camelcasemotion#Motion('b',v:count1,'n')<CR>
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 163
n  <Plug>CamelCaseMotion_w * :<C-U>call camelcasemotion#Motion('w',v:count1,'n')<CR>
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 163
n  <Plug>(ale_documentation) * :ALEDocumentation<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 257
n  <Plug>(ale_hover) * :ALEHover<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 256
n  <Plug>(ale_find_references) * :ALEFindReferences<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 255
n  <Plug>(ale_go_to_type_definition_in_vsplit) * :ALEGoToTypeDefinitionInVSplit<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 254
n  <Plug>(ale_go_to_type_definition_in_split) * :ALEGoToTypeDefinitionInSplit<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 253
n  <Plug>(ale_go_to_type_definition_in_tab) * :ALEGoToTypeDefinitionInTab<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 252
n  <Plug>(ale_go_to_type_definition) * :ALEGoToTypeDefinition<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 251
n  <Plug>(ale_go_to_definition_in_vsplit) * :ALEGoToDefinitionInVSplit<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 250
n  <Plug>(ale_go_to_definition_in_split) * :ALEGoToDefinitionInSplit<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 249
n  <Plug>(ale_go_to_definition_in_tab) * :ALEGoToDefinitionInTab<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 248
n  <Plug>(ale_go_to_definition) * :ALEGoToDefinition<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 247
n  <Plug>(ale_fix) * :ALEFix<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 246
n  <Plug>(ale_detail) * :ALEDetail<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 245
n  <Plug>(ale_lint) * :ALELint<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 244
n  <Plug>(ale_reset_buffer) * :ALEResetBuffer<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 243
n  <Plug>(ale_disable_buffer) * :ALEDisableBuffer<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 242
n  <Plug>(ale_enable_buffer) * :ALEEnableBuffer<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 241
n  <Plug>(ale_toggle_buffer) * :ALEToggleBuffer<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 240
n  <Plug>(ale_reset) * :ALEReset<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 239
n  <Plug>(ale_disable) * :ALEDisable<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 238
n  <Plug>(ale_enable) * :ALEEnable<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 237
n  <Plug>(ale_toggle) * :ALEToggle<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 236
n  <Plug>(ale_last) * :ALELast<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 235
n  <Plug>(ale_first) * :ALEFirst<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 234
n  <Plug>(ale_next_wrap_warning) * :ALENext -wrap -warning<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 233
n  <Plug>(ale_next_warning) * :ALENext -warning<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 232
n  <Plug>(ale_next_wrap_error) * :ALENext -wrap -error<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 231
n  <Plug>(ale_next_error) * :ALENext -error<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 230
n  <Plug>(ale_next_wrap) * :ALENextWrap<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 229
n  <Plug>(ale_next) * :ALENext<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 228
n  <Plug>(ale_previous_wrap_warning) * :ALEPrevious -wrap -warning<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 227
n  <Plug>(ale_previous_warning) * :ALEPrevious -warning<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 226
n  <Plug>(ale_previous_wrap_error) * :ALEPrevious -wrap -error<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 225
n  <Plug>(ale_previous_error) * :ALEPrevious -error<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 224
n  <Plug>(ale_previous_wrap) * :ALEPreviousWrap<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 223
n  <Plug>(ale_previous) * :ALEPrevious<CR>
	Last set from ~/.vim/bundle/ale/plugin/ale.vim line 222
n  <F7>        * :TTags<CR>
	Last set from ~/.vimrc line 679
n  <F6>        * :SyntasticToggleMode<CR>
	Last set from ~/.vimrc line 676
n  <F5>        * :LOTRToggle<CR>
	Last set from ~/.vimrc line 674
n  <F4>        * :MinimapToggle<CR>
	Last set from ~/.vimrc line 672
n  <F3>        * :TlistAddFiles *<CR>:TlistToggle<CR>
	Last set from ~/.vimrc line 670
n  <F2>        * :UndotreeToggle<CR>
	Last set from ~/.vimrc line 668
n  <F1>        * :NERDTreeToggle<CR>
	Last set from ~/.vimrc line 666
n  <F8>        * :%s@@@g<Left><Left><Left>
	Last set from ~/.vimrc line 665
n  <C-Up>      * :<C-U>call GoToNextMarker("{{{",1)<CR>
	Last set from ~/.vimrc line 364
n  <C-Down>    * :<C-U>call GoToNextMarker("{{{",0)<CR>
	Last set from ~/.vimrc line 363
n  <End>       * G
	Last set from ~/.vimrc line 289
n  <Home>      * gg
	Last set from ~/.vimrc line 288
n  <Plug>RepeatEx * @: :call repeat#set("\<Plug>RepeatEx")<CR>
	Last set from ~/.vimrc line 258


   m*          *@:MarkologyLineHighlightToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 85
   m^          *@:MarkologyQuickFix<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 84
   m?          *@:MarkologyLocationList<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 83
   m}          *@:MarkologyPrevLocalMarkByAlpha<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 82
   m{          *@:MarkologyNextLocalMarkByAlpha<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 81
   m[          *@:MarkologyPrevLocalMarkPos<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 80
   m]          *@:MarkologyNextLocalMarkPos<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 75
   m_          *@:MarkologyClearAll<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 73
   m-          *@:MarkologyClearMark<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 72
   m+          *@:MarkologyPlaceMark<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 71
   m<Space>    *@:MarkologyPlaceMarkToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 69
   m,          *@:MarkologyPlaceMarkToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 68
   m!          *@:MarkologyToggle<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 66
   m0          *@:MarkologyDisable<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 65
   m1          *@:MarkologyEnable<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 64
   í           *@:MarkologyNextLocalMarkPos<CR>
	Last set from ~/.vim/bundle/vim-markology/plugin/markology.vim line 77
# Vim Keybindings Visual Mode
v  <C-B>       * "*y`>
	Last set from ~/.vimrc line 236
v  <C-D>y      * :<C-C>:update<CR>:SyntasticCheck<CR>
	Last set from ~/.vimrc line 837
v  <C-D>d      * :<C-C>:update<CR>
	Last set from ~/.vimrc line 828
v  <C-D>/      * :call NERDComment("x","Toggle")<CR>`>
	Last set from ~/.vimrc line 824
v  <C-F>       * :<C-C>:q!<CR>
	Last set from ~/.vimrc line 277
x  <C-G>       * :<C-U>call multiple_cursors#new("v", 0)<CR>
	Last set from ~/.vim/bundle/vim-multiple-cursors/plugin/multiple_cursors.vim line 80
s  <C-H>       * <C-G>c
	Last set from ~/.vim/bundle/ultisnips/autoload/UltiSnips/map_keys.vim line 70
nox<C-H>       * 4h
	Last set from ~/.vimrc line 226
x  <Tab>       * :call UltiSnips#SaveLastVisualSelection()<CR>gvs
	Last set from ~/.vim/bundle/ultisnips/autoload/UltiSnips/map_keys.vim line 64
s  <Tab>       * <Esc>:call UltiSnips#ExpandSnippetOrJump()<CR>
	Last set from ~/.vim/bundle/ultisnips/autoload/UltiSnips/map_keys.vim line 59
   <NL>        * 4j
	Last set from ~/.vimrc line 224
   <C-K>       * 4k
	Last set from ~/.vimrc line 225
   <C-L>       * 4l
	Last set from ~/.vimrc line 227
   <CR>          <Plug>(wildfire-fuel)
	Last set from ~/.vim/bundle/wildfire.vim/plugin/wildfire.vim line 59
   <C-P>         <Plug>(ctrlp)
	Last set from ~/.vim/bundle/ctrlp.vim/plugin/ctrlp.vim line 39
s  <C-R>       * <C-G>"_c<C-R>
	Last set from ~/.vim/bundle/ultisnips/autoload/UltiSnips/map_keys.vim line 71
v  <C-X>t        <Plug>RefactorExtractType
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 135
v  <C-X>v        <Plug>RefactorExtractVariable
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 130
v  <C-X>f      * :call lh#refactor#extract_function(1,lh#ui#input("Name for the function to extract: "))<CR>
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 125
v  <C-Y>c        <Plug>(emmet-code-pretty)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
v  <C-Y>m        <Plug>(emmet-merge-lines)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
v  <C-Y>D        <Plug>(emmet-balance-tag-outword)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
v  <C-Y>d        <Plug>(emmet-balance-tag-inward)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
v  <C-Y>,        <Plug>(emmet-expand-abbr)
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 150
   <Esc>[1;5D    <C-Left>
	Last set from ~/.vimrc line 933
   <Esc>[1;5C    <C-Right>
	Last set from ~/.vimrc line 932
   <Esc>[1;5B    <C-Down>
	Last set from ~/.vimrc line 931
   <Esc>[1;5A    <C-Up>
	Last set from ~/.vimrc line 930
   <Space><Space>   <Plug>(easymotion-prefix)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 244
x  <Space>cu     <Plug>NERDCommenterUncomment
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
x  <Space>cb     <Plug>NERDCommenterAlignBoth
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
x  <Space>cl     <Plug>NERDCommenterAlignLeft
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
x  <Space>cy     <Plug>NERDCommenterYank
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
x  <Space>cs     <Plug>NERDCommenterSexy
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
x  <Space>ci     <Plug>NERDCommenterInvert
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
x  <Space>cn     <Plug>NERDCommenterNested
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
x  <Space>cm     <Plug>NERDCommenterMinimal
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
x  <Space>c<Space>   <Plug>NERDCommenterToggle
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
x  <Space>cc     <Plug>NERDCommenterComment
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3038
   <Space><Space>e   <Plug>(easymotion-bd-e)
	Last set from ~/.vimrc line 683
   <Space><Space>w   <Plug>(easymotion-bd-w)
	Last set from ~/.vimrc line 682
v  <Space>(    * :call InsertQuoteVisualMode("paren")<CR>
	Last set from ~/.vimrc line 657
v  <Space>{    * :call InsertQuoteVisualMode("curlybracket")<CR>
	Last set from ~/.vimrc line 656
v  <Space>[    * :call InsertQuoteVisualMode("bracket")<CR>
	Last set from ~/.vimrc line 655
v  <Space>`    * :call InsertQuoteVisualMode("back")<CR>
	Last set from ~/.vimrc line 654
v  <Space>'    * :call InsertQuoteVisualMode("single")<CR<CR>
	Last set from ~/.vimrc line 653
v  <Space>"    * :call InsertQuoteVisualMode("double")<CR>
	Last set from ~/.vimrc line 652
   <Space>=    * 4+
	Last set from ~/.vimrc line 229
   <Space>-    * 4-
	Last set from ~/.vimrc line 228
nox(           * repmo#SelfKey('(', ')')
	Last set from ~/.vimrc line 721
nox)           * repmo#SelfKey(')', '(')
	Last set from ~/.vimrc line 722
nox+           * repmo#SelfKey('+', '-')
	Last set from ~/.vimrc line 717
x  ,e            <Plug>CamelCaseMotion_e
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 165
nox,             repmo#LastRevKey('<Plug>Sneak_,')
	Last set from ~/.vimrc line 694
nox-           * repmo#SelfKey('-', '+')
	Last set from ~/.vimrc line 718
nox;             repmo#LastKey('<Plug>Sneak_;')
	Last set from ~/.vimrc line 693
v  <           * <gv
	Last set from ~/.vimrc line 232
v  >           * >gv
	Last set from ~/.vimrc line 233
   B           * repmo#SelfKey('b', 'w')
	Last set from ~/.vimrc line 714
noxE           * repmo#SelfKey('E', 'gE')
	Last set from ~/.vimrc line 711
noxF             repmo#ZapKey('<Plug>Sneak_F')
	Last set from ~/.vimrc line 700
x  S             <Plug>VSurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 599
noxT             repmo#ZapKey('<Plug>Sneak_T')
	Last set from ~/.vimrc line 702
   W           * repmo#SelfKey('w', 'b')
	Last set from ~/.vimrc line 713
v  Y           * y`>j
	Last set from ~/.vimrc line 807
x  Z             <Plug>Sneak_S
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 400
x  [x            <Plug>unimpaired_xml_encode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
x  [u            <Plug>unimpaired_url_encode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
x  [y            <Plug>unimpaired_string_encode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
x  [e            <Plug>unimpairedMoveSelectionUp
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
nox[m          * repmo#SelfKey('[m', ']m')
	Last set from ~/.vimrc line 728
ox [[          * repmo#SelfKey('[[', ']]')
	Last set from ~/.vimrc line 724
v  \K          * y:Thesaurus <C-R>"<CR>
	Last set from ~/.vim/bundle/vim-online-thesaurus/plugin/online-thesaurus.vim line 80
x  ]x            <Plug>unimpaired_xml_decode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
x  ]u            <Plug>unimpaired_url_decode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
x  ]y            <Plug>unimpaired_string_decode
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
x  ]e            <Plug>unimpairedMoveSelectionDown
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 36
nox]m          * repmo#SelfKey(']m', '[m')
	Last set from ~/.vimrc line 727
ox ]]          * repmo#SelfKey(']]', '[[')
	Last set from ~/.vimrc line 725
noxb             <Plug>CamelCaseMotion_b
	Last set from ~/.vimrc line 707
noxe           * repmo#SelfKey('e', 'ge')
	Last set from ~/.vimrc line 715
noxf             repmo#ZapKey('<Plug>Sneak_f')
	Last set from ~/.vimrc line 699
v  gx            <Plug>NetrwBrowseXVis
	Last set from /Applications/MacVim.app/Contents/Resources/vim/runtime/plugin/netrwPlugin.vim line 88
x  gS            <Plug>VgSurround
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 600
noxge          * repmo#SelfKey('ge', 'e')
	Last set from ~/.vimrc line 716
noxgE          * repmo#SelfKey('gE', 'E')
	Last set from ~/.vimrc line 712
noxh           * repmo#SelfKey('h', 'l')
	Last set from ~/.vimrc line 732
x  i,e           <Plug>CamelCaseMotion_ie
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 195
x  i,b           <Plug>CamelCaseMotion_ib
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 195
x  i,w           <Plug>CamelCaseMotion_iw
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 195
noxj             repmo#Key('gj', 'gk')
	Last set from ~/.vimrc line 735
noxk             repmo#Key('gk', 'gj')
	Last set from ~/.vimrc line 736
noxl           * repmo#SelfKey('l', 'h')
	Last set from ~/.vimrc line 733
nx s             repmo#ZapKey('<Plug>Sneak_s')
	Last set from ~/.vimrc line 696
noxt             repmo#ZapKey('<Plug>Sneak_t')
	Last set from ~/.vimrc line 701
noxw             <Plug>CamelCaseMotion_w
	Last set from ~/.vimrc line 706
nox{           * repmo#SelfKey('{', '}')
	Last set from ~/.vimrc line 719
nox}           * repmo#SelfKey('}', '{')
	Last set from ~/.vimrc line 720
s  <BS>        * <C-G>c
	Last set from ~/.vim/bundle/ultisnips/autoload/UltiSnips/map_keys.vim line 68
v  <Plug>NetrwBrowseXVis * :<C-U>call netrw#BrowseXVis()<CR>
	Last set from /Applications/MacVim.app/Contents/Resources/vim/runtime/plugin/netrwPlugin.vim line 90
v  <Plug>(wildfire-fuel) * :<C-U>call wildfire#Fuel(v:count1)<CR>
	Last set from ~/.vim/bundle/wildfire.vim/autoload/wildfire/triggers.vim line 12
v  <Plug>(wildfire-water) * :<C-U>call wildfire#Water(v:count1)<CR>
	Last set from ~/.vim/bundle/wildfire.vim/plugin/wildfire.vim line 52
x  <Plug>unimpaired_xml_decode * <SNR>108_TransformSetup("xml_decode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 509
x  <Plug>unimpaired_xml_encode * <SNR>108_TransformSetup("xml_encode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 509
x  <Plug>unimpaired_url_decode * <SNR>108_TransformSetup("url_decode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 509
x  <Plug>unimpaired_url_encode * <SNR>108_TransformSetup("url_encode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 509
x  <Plug>unimpaired_string_decode * <SNR>108_TransformSetup("string_decode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 509
x  <Plug>unimpaired_string_encode * <SNR>108_TransformSetup("string_encode")
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 509
   <Plug>unimpairedMoveSelectionDown * :<C-U>call <SNR>108_MoveSelectionDown(v:count1)<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 230
   <Plug>unimpairedMoveSelectionUp * :<C-U>call <SNR>108_MoveSelectionUp(v:count1)<CR>
	Last set from ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim line 229
v  <Plug>VgSurround * :<C-U>call <SNR>107_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR>
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 586
v  <Plug>VSurround * :<C-U>call <SNR>107_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR>
	Last set from ~/.vim/bundle/vim-surround/plugin/surround.vim line 585
x  <Plug>SneakPrevious   <Plug>Sneak_,
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 419
x  <Plug>SneakNext   <Plug>Sneak_;
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 418
x  <Plug>(SneakStreakBackward)   <Plug>SneakLabel_S
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 413
x  <Plug>(SneakStreak)   <Plug>SneakLabel_s
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 412
x  <Plug>VSneakPrevious   <Plug>Sneak_,
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 409
x  <Plug>VSneakNext   <Plug>Sneak_;
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 408
x  <Plug>VSneakBackward   <Plug>Sneak_S
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 407
x  <Plug>VSneakForward   <Plug>Sneak_s
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 406
x  <Plug>SneakLabel_S * :<C-U>call sneak#wrap(visualmode(), 2, 1, 2, 2)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 362
x  <Plug>SneakLabel_s * :<C-U>call sneak#wrap(visualmode(), 2, 0, 2, 2)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 361
x  <Plug>Sneak_T * :<C-U>call sneak#wrap(visualmode(), 1, 1, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 355
x  <Plug>Sneak_t * :<C-U>call sneak#wrap(visualmode(), 1, 0, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 354
x  <Plug>Sneak_F * :<C-U>call sneak#wrap(visualmode(), 1, 1, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 347
x  <Plug>Sneak_f * :<C-U>call sneak#wrap(visualmode(), 1, 0, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 346
x  <Plug>Sneak_, * :<C-U>call <SNR>104_rpt(visualmode(), 1)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 339
x  <Plug>Sneak_; * :<C-U>call <SNR>104_rpt(visualmode(), 0)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 338
x  <Plug>Sneak_S * :<C-U>call sneak#wrap(visualmode(), 2, 1, 2, 1)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 329
x  <Plug>Sneak_s * :<C-U>call sneak#wrap(visualmode(), 2, 0, 2, 1)<CR>
	Last set from ~/.vim/bundle/vim-sneak/plugin/sneak.vim line 328
x  <Plug>(sexp_capture_next_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'v', 1, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_capture_prev_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'v', 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_emit_tail_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'v', 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_emit_head_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#stackop', 'v', 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_swap_element_forward) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#swap_element', 'v', 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_swap_element_backward) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#swap_element', 'v', 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_swap_list_forward) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#swap_element', 'v', 1, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_swap_list_backward) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#swap_element', 'v', 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_raise_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#raise', 'v', '')<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_raise_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#raise', 'v', '')<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_curly_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '{', '}', 1, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_curly_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '{', '}', 0, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_square_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '[', ']', 1, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_square_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '[', ']', 0, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_round_tail_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '(', ')', 1, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_round_head_wrap_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '(', ')', 0, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_curly_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '{', '}', 1, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_curly_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '{', '}', 0, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_square_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '[', ']', 1, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_square_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '[', ']', 0, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_round_tail_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '(', ')', 1, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_round_head_wrap_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#wrap('v', '(', ')', 0, g:sexp_insert_after_wrap)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_select_next_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_adjacent_element', 'v', 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_select_prev_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_adjacent_element', 'v', 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_move_to_next_top_element) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 1, 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_move_to_prev_top_element) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 0, 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_flow_to_next_leaf_tail) * <Esc>:<C-U>call sexp#leaf_flow('v', v:prevcount, 1, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_flow_to_prev_leaf_tail) * <Esc>:<C-U>call sexp#leaf_flow('v', v:prevcount, 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_flow_to_next_leaf_head) * <Esc>:<C-U>call sexp#leaf_flow('v', v:prevcount, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_flow_to_prev_leaf_head) * <Esc>:<C-U>call sexp#leaf_flow('v', v:prevcount, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_flow_to_next_close) * <Esc>:<C-U>call sexp#list_flow('v', v:prevcount, 1, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_flow_to_next_open) * <Esc>:<C-U>call sexp#list_flow('v', v:prevcount, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_flow_to_prev_open) * <Esc>:<C-U>call sexp#list_flow('v', v:prevcount, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_flow_to_prev_close) * <Esc>:<C-U>call sexp#list_flow('v', v:prevcount, 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_move_to_next_element_tail) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 1, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_move_to_prev_element_tail) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 0, 1, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_move_to_next_element_head) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 1, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_move_to_prev_element_head) * <Esc>:<C-U>call sexp#move_to_adjacent_element('v', v:prevcount, 0, 0, 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_move_to_next_bracket) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#move_to_nearest_bracket', 'v', 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_move_to_prev_bracket) * <Esc>:<C-U>call sexp#docount(v:prevcount, 'sexp#move_to_nearest_bracket', 'v', 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 134
x  <Plug>(sexp_inner_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_element('v', 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_outer_element) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_element('v', 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_inner_string) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_string('v', 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_outer_string) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_string('v', 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_inner_top_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_top_list('v', 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_outer_top_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#select_current_top_list('v', 0)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_inner_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_current_list', 'v', 1, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
x  <Plug>(sexp_outer_list) * :<C-U>let b:sexp_count = v:count | execute "normal! m`" | call sexp#docount(b:sexp_count, 'sexp#select_current_list', 'v', 0, 1)<CR>
	Last set from ~/.vim/bundle/vim-sexp/plugin/sexp.vim line 151
   <F35>         <M-BS>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 83
   <F34>         <M-BS>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 82
   <F33>         ð
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 81
   <F32>         î
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 80
   <F31>         ä
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 79
v  <Plug>RefactorExtractType * :call lh#refactor#extract_type(1,lh#ui#input("Name for the type to extract: "))<CR>
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 133
v  <Plug>RefactorExtractVariable * :call lh#refactor#extract_variable(1,lh#ui#input("Name for the variable to extract: ", lh#refactor#default_varname()))<CR>
	Last set from ~/.vim/bundle/vim-refactor/plugin/refactor.vim line 128
   <Plug>(easymotion-prefix)N   <Plug>(easymotion-N)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)n   <Plug>(easymotion-n)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)k   <Plug>(easymotion-k)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)j   <Plug>(easymotion-j)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)gE   <Plug>(easymotion-gE)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)ge   <Plug>(easymotion-ge)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)E   <Plug>(easymotion-E)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)e   <Plug>(easymotion-e)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)B   <Plug>(easymotion-B)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)b   <Plug>(easymotion-b)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)W   <Plug>(easymotion-W)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)w   <Plug>(easymotion-w)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)T   <Plug>(easymotion-T)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)t   <Plug>(easymotion-t)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)s   <Plug>(easymotion-s)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)F   <Plug>(easymotion-F)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
   <Plug>(easymotion-prefix)f   <Plug>(easymotion-f)
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 261
x  <Plug>(easymotion-activate) * :<C-U>call EasyMotion#activate(1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 234
nos<Plug>(easymotion-activate) * :<C-U>call EasyMotion#activate(0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 233
   <Plug>(easymotion-dotrepeat) * :<C-U>call EasyMotion#DotRepeat()<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 230
x  <Plug>(easymotion-repeat) * <Esc>:<C-U>call EasyMotion#Repeat(1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 227
nos<Plug>(easymotion-repeat) * :<C-U>call EasyMotion#Repeat(0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 225
x  <Plug>(easymotion-prev) * :<C-U>call EasyMotion#NextPrevious(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 220
nos<Plug>(easymotion-prev) * :<C-U>call EasyMotion#NextPrevious(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 218
x  <Plug>(easymotion-next) * :<C-U>call EasyMotion#NextPrevious(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 215
nos<Plug>(easymotion-next) * :<C-U>call EasyMotion#NextPrevious(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 213
x  <Plug>(easymotion-wl) * <Esc>:<C-U>call EasyMotion#WBL(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-wl) * :<C-U>call EasyMotion#WBL(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-lineforward) * <Esc>:<C-U>call EasyMotion#LineAnywhere(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-lineforward) * :<C-U>call EasyMotion#LineAnywhere(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-lineanywhere) * <Esc>:<C-U>call EasyMotion#LineAnywhere(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-lineanywhere) * :<C-U>call EasyMotion#LineAnywhere(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-wl) * <Esc>:<C-U>call EasyMotion#WBL(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-wl) * :<C-U>call EasyMotion#WBL(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-linebackward) * <Esc>:<C-U>call EasyMotion#LineAnywhere(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-linebackward) * :<C-U>call EasyMotion#LineAnywhere(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bl) * <Esc>:<C-U>call EasyMotion#WBL(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bl) * :<C-U>call EasyMotion#WBL(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-el) * <Esc>:<C-U>call EasyMotion#EL(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-el) * :<C-U>call EasyMotion#EL(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-gel) * <Esc>:<C-U>call EasyMotion#EL(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-gel) * :<C-U>call EasyMotion#EL(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-el) * <Esc>:<C-U>call EasyMotion#EL(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-el) * :<C-U>call EasyMotion#EL(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-jumptoanywhere) * <Esc>:<C-U>call EasyMotion#JumpToAnywhere(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-jumptoanywhere) * :<C-U>call EasyMotion#JumpToAnywhere(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-vim-n) * <Esc>:<C-U>call EasyMotion#Search(1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-vim-n) * :<C-U>call EasyMotion#Search(0,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-n) * <Esc>:<C-U>call EasyMotion#Search(1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-n) * :<C-U>call EasyMotion#Search(0,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-n) * <Esc>:<C-U>call EasyMotion#Search(1,2,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-n) * :<C-U>call EasyMotion#Search(0,2,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-vim-N) * <Esc>:<C-U>call EasyMotion#Search(1,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-vim-N) * :<C-U>call EasyMotion#Search(0,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-N) * <Esc>:<C-U>call EasyMotion#Search(1,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-N) * :<C-U>call EasyMotion#Search(0,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-eol-j) * <Esc>:<C-U>call EasyMotion#Eol(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-eol-j) * :<C-U>call EasyMotion#Eol(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-sol-k) * <Esc>:<C-U>call EasyMotion#Sol(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-sol-k) * :<C-U>call EasyMotion#Sol(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-sol-j) * <Esc>:<C-U>call EasyMotion#Sol(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-sol-j) * :<C-U>call EasyMotion#Sol(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-k) * <Esc>:<C-U>call EasyMotion#JK(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-k) * :<C-U>call EasyMotion#JK(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-j) * <Esc>:<C-U>call EasyMotion#JK(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-j) * :<C-U>call EasyMotion#JK(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-jk) * <Esc>:<C-U>call EasyMotion#JK(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-jk) * :<C-U>call EasyMotion#JK(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-eol-bd-jk) * <Esc>:<C-U>call EasyMotion#Eol(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-eol-bd-jk) * :<C-U>call EasyMotion#Eol(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-sol-bd-jk) * <Esc>:<C-U>call EasyMotion#Sol(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-sol-bd-jk) * :<C-U>call EasyMotion#Sol(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-eol-k) * <Esc>:<C-U>call EasyMotion#Eol(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-eol-k) * :<C-U>call EasyMotion#Eol(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-iskeyword-ge) * <Esc>:<C-U>call EasyMotion#EK(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-iskeyword-ge) * :<C-U>call EasyMotion#EK(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-w) * <Esc>:<C-U>call EasyMotion#WB(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-w) * :<C-U>call EasyMotion#WB(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-W) * <Esc>:<C-U>call EasyMotion#WBW(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-W) * :<C-U>call EasyMotion#WBW(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-iskeyword-w) * <Esc>:<C-U>call EasyMotion#WBK(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-iskeyword-w) * :<C-U>call EasyMotion#WBK(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-gE) * <Esc>:<C-U>call EasyMotion#EW(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-gE) * :<C-U>call EasyMotion#EW(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-e) * <Esc>:<C-U>call EasyMotion#E(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-e) * :<C-U>call EasyMotion#E(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-E) * <Esc>:<C-U>call EasyMotion#EW(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-E) * :<C-U>call EasyMotion#EW(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-iskeyword-e) * <Esc>:<C-U>call EasyMotion#EK(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-iskeyword-e) * :<C-U>call EasyMotion#EK(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-b) * <Esc>:<C-U>call EasyMotion#WB(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-b) * :<C-U>call EasyMotion#WB(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-iskeyword-b) * <Esc>:<C-U>call EasyMotion#WBK(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-iskeyword-b) * :<C-U>call EasyMotion#WBK(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-iskeyword-bd-w) * <Esc>:<C-U>call EasyMotion#WBK(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-iskeyword-bd-w) * :<C-U>call EasyMotion#WBK(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-W) * <Esc>:<C-U>call EasyMotion#WBW(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-W) * :<C-U>call EasyMotion#WBW(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-w) * <Esc>:<C-U>call EasyMotion#WB(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-w) * :<C-U>call EasyMotion#WB(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-iskeyword-bd-e) * <Esc>:<C-U>call EasyMotion#EK(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-iskeyword-bd-e) * :<C-U>call EasyMotion#EK(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-ge) * <Esc>:<C-U>call EasyMotion#E(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-ge) * :<C-U>call EasyMotion#E(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-E) * <Esc>:<C-U>call EasyMotion#EW(1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-E) * :<C-U>call EasyMotion#EW(0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-e) * <Esc>:<C-U>call EasyMotion#E(1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-e) * :<C-U>call EasyMotion#E(0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-B) * <Esc>:<C-U>call EasyMotion#WBW(1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-B) * :<C-U>call EasyMotion#WBW(0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-Tln) * <Esc>:<C-U>call EasyMotion#TL(-1,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-Tln) * :<C-U>call EasyMotion#TL(-1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-t2) * <Esc>:<C-U>call EasyMotion#T(2,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-t2) * :<C-U>call EasyMotion#T(2,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-t) * <Esc>:<C-U>call EasyMotion#T(1,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-t) * :<C-U>call EasyMotion#T(1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-s) * <Esc>:<C-U>call EasyMotion#S(1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-s) * :<C-U>call EasyMotion#S(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-tn) * <Esc>:<C-U>call EasyMotion#T(-1,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-tn) * :<C-U>call EasyMotion#T(-1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-t2) * <Esc>:<C-U>call EasyMotion#T(2,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-t2) * :<C-U>call EasyMotion#T(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-tl) * <Esc>:<C-U>call EasyMotion#TL(1,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-tl) * :<C-U>call EasyMotion#TL(1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-tn) * <Esc>:<C-U>call EasyMotion#T(-1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-tn) * :<C-U>call EasyMotion#T(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-fn) * <Esc>:<C-U>call EasyMotion#S(-1,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-fn) * :<C-U>call EasyMotion#S(-1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-tl) * <Esc>:<C-U>call EasyMotion#TL(1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-tl) * :<C-U>call EasyMotion#TL(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-fl) * <Esc>:<C-U>call EasyMotion#SL(1,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-fl) * :<C-U>call EasyMotion#SL(1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-tl2) * <Esc>:<C-U>call EasyMotion#TL(2,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-tl2) * :<C-U>call EasyMotion#TL(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-fn) * <Esc>:<C-U>call EasyMotion#S(-1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-fn) * :<C-U>call EasyMotion#S(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-f) * <Esc>:<C-U>call EasyMotion#S(1,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-f) * :<C-U>call EasyMotion#S(1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-fl) * <Esc>:<C-U>call EasyMotion#SL(1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-fl) * :<C-U>call EasyMotion#SL(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-Fl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-Fl2) * :<C-U>call EasyMotion#SL(2,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-tl2) * <Esc>:<C-U>call EasyMotion#TL(2,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-tl2) * :<C-U>call EasyMotion#TL(2,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-f2) * <Esc>:<C-U>call EasyMotion#S(2,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-f2) * :<C-U>call EasyMotion#S(2,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-Fln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-Fln) * :<C-U>call EasyMotion#SL(-1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-sln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-sln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-tln) * <Esc>:<C-U>call EasyMotion#TL(-1,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-tln) * :<C-U>call EasyMotion#TL(-1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-fl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-fl2) * :<C-U>call EasyMotion#SL(2,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-fl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-fl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-T2) * <Esc>:<C-U>call EasyMotion#T(2,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-T2) * :<C-U>call EasyMotion#T(2,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-tln) * <Esc>:<C-U>call EasyMotion#TL(-1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-tln) * :<C-U>call EasyMotion#TL(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-T) * <Esc>:<C-U>call EasyMotion#T(1,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-T) * :<C-U>call EasyMotion#T(1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-t) * <Esc>:<C-U>call EasyMotion#T(1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-t) * :<C-U>call EasyMotion#T(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-Tn) * <Esc>:<C-U>call EasyMotion#T(-1,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-Tn) * :<C-U>call EasyMotion#T(-1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-s2) * <Esc>:<C-U>call EasyMotion#S(2,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-s2) * :<C-U>call EasyMotion#S(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-Tl) * <Esc>:<C-U>call EasyMotion#TL(1,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-Tl) * :<C-U>call EasyMotion#TL(1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-sn) * <Esc>:<C-U>call EasyMotion#S(-1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-sn) * :<C-U>call EasyMotion#S(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-Fn) * <Esc>:<C-U>call EasyMotion#S(-1,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-Fn) * :<C-U>call EasyMotion#S(-1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-sl) * <Esc>:<C-U>call EasyMotion#SL(1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-sl) * :<C-U>call EasyMotion#SL(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-Fl) * <Esc>:<C-U>call EasyMotion#SL(1,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-Fl) * :<C-U>call EasyMotion#SL(1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-sl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-sl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-fln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-fln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-F) * <Esc>:<C-U>call EasyMotion#S(1,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-F) * :<C-U>call EasyMotion#S(1,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-f) * <Esc>:<C-U>call EasyMotion#S(1,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-f) * :<C-U>call EasyMotion#S(1,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-F2) * <Esc>:<C-U>call EasyMotion#S(2,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-F2) * :<C-U>call EasyMotion#S(2,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-bd-f2) * <Esc>:<C-U>call EasyMotion#S(2,1,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-bd-f2) * :<C-U>call EasyMotion#S(2,0,2)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-Tl2) * <Esc>:<C-U>call EasyMotion#TL(2,1,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-Tl2) * :<C-U>call EasyMotion#TL(2,0,1)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
x  <Plug>(easymotion-fln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 80
nos<Plug>(easymotion-fln) * :<C-U>call EasyMotion#SL(-1,0,0)<CR>
	Last set from ~/.vim/bundle/vim-easymotion/plugin/EasyMotion.vim line 78
   <Plug>(asterisk-gz#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 0})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 48
   <Plug>(asterisk-z#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 1})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 47
   <Plug>(asterisk-g#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 0})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 46
   <Plug>(asterisk-#) * asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 1})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 45
   <Plug>(asterisk-gz*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 0})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 44
   <Plug>(asterisk-z*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 1})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 43
   <Plug>(asterisk-g*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 0})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 42
   <Plug>(asterisk-*) * asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 1})
	Last set from ~/.vim/bundle/vim-asterisk/plugin/asterisk.vim line 41
s  <Del>       * <C-G>c
	Last set from ~/.vim/bundle/ultisnips/autoload/UltiSnips/map_keys.vim line 69
x  <BS>          <Plug>(wildfire-water)
	Last set from ~/.vim/bundle/wildfire.vim/plugin/wildfire.vim line 63
s  <C-Tab>     * <Esc>:call UltiSnips#ListSnippets()<CR>
	Last set from ~/.vim/bundle/ultisnips/autoload/UltiSnips/map_keys.vim line 66
x  <Plug>NERDCommenterUncomment * :call NERDComment("x", "Uncomment")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
x  <Plug>NERDCommenterAlignBoth * :call NERDComment("x", "AlignBoth")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
x  <Plug>NERDCommenterAlignLeft * :call NERDComment("x", "AlignLeft")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
x  <Plug>NERDCommenterYank * :call NERDComment("x", "Yank")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
x  <Plug>NERDCommenterSexy * :call NERDComment("x", "Sexy")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
x  <Plug>NERDCommenterInvert * :call NERDComment("x", "Invert")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
x  <Plug>NERDCommenterNested * :call NERDComment("x", "Nested")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
x  <Plug>NERDCommenterMinimal * :call NERDComment("x", "Minimal")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
x  <Plug>NERDCommenterToggle * :call NERDComment("x", "Toggle")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
x  <Plug>NERDCommenterComment * :call NERDComment("x", "Comment")<CR>
	Last set from ~/.vim/bundle/nerdcommenter/plugin/NERD_commenter.vim line 3036
x  <Plug>(fzf-maps-x) * :<C-U>call fzf#vim#maps('x', 0)<CR>
	Last set from ~/.vim/bundle/fzf.vim/plugin/fzf.vim line 144
v  <Plug>(emmet-code-pretty) * :call emmet#codePretty()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
v  <Plug>(emmet-merge-lines) * :call emmet#mergeLines()<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
v  <Plug>(emmet-balance-tag-outword) * :call emmet#balanceTag(-2)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
v  <Plug>(emmet-balance-tag-inward) * :call emmet#balanceTag(2)<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
v  <Plug>(emmet-expand-abbr) * :call emmet#expandAbbr(2,"")<CR>
	Last set from ~/.vim/bundle/emmet-vim/plugin/emmet.vim line 142
v  <Plug>CamelCaseMotion_ie * :<C-U>call camelcasemotion#InnerMotion('e',v:count1)<CR>
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 193
v  <Plug>CamelCaseMotion_ib * :<C-U>call camelcasemotion#InnerMotion('b',v:count1)<CR>
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 193
v  <Plug>CamelCaseMotion_iw * :<C-U>call camelcasemotion#InnerMotion('w',v:count1)<CR>
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 193
v  <Plug>CamelCaseMotion_e * :<C-U>call camelcasemotion#Motion('e',v:count1,'v')<CR>
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 163
v  <Plug>CamelCaseMotion_b * :<C-U>call camelcasemotion#Motion('b',v:count1,'v')<CR>
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 163
v  <Plug>CamelCaseMotion_w * :<C-U>call camelcasemotion#Motion('w',v:count1,'v')<CR>
	Last set from ~/.vim/bundle/camelcasemotion/plugin/camelcasemotion.vim line 163
v  <C-Up>      * :m '< -- <CR> gv
	Last set from ~/.vimrc line 691
v  <C-Down>    * :m '> + <CR> gv
	Last set from ~/.vimrc line 690
v  <C-Left>    * <gv
	Last set from ~/.vimrc line 688
v  <C-Right>   * >gv
	Last set from ~/.vimrc line 687
v  <RightMouse> * "*y`>
	Last set from ~/.vimrc line 285
# Vim Keybindings Command Colon Mode
c  <C-R><C-G>  &@<SNR>131_fnameescape(fugitive#Object(@%))
	Last set from ~/.vim/bundle/vim-fugitive/autoload/fugitive.vim line 152
!  <F35>         <M-BS>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 78
!  <F34>         <M-BS>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 77
!  <F33>         ð
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 76
!  <F32>         î
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 75
!  <F31>         ä
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 74
!  <M-BS>      * <C-W>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 61
!  ð           * <Up>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 64
!  î           * <Down>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 63
!  æ           * <S-Right>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 62
c  ä           * <S-Right><C-W>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 60
!  â           * <S-Left>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.vim line 58
c  <C-A>       * <Home>
	Last set from ~/.vim/bundle/vim-rsi/plugin/rsi.

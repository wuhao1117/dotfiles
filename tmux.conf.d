# change key binding from C-b
set-option -g prefix C-a
unbind-key C-b
bind-key C-a send-prefix

# interface
#------------
# pane
#------------
set -g pane-border-fg black
set -g pane-active-border-fg blue

#------------
# tabs
#------------
setw -g window-status-format "#[fg=white]#[bg=blue] #I #[bg=blue]#[fg=white] #W "
setw -g window-status-current-format "#[bg=brightmagenta]#[fg=white] *#I #[fg=white,bold]#[bg=cyan] [#W] "
setw -g window-status-content-attr bold,blink,reverse

#------------
# status bar
#------------
set-option -g status-position bottom
set -g status-fg white
set -g status-bg blue
set -g status-left ''
set -g status-right-length 60
set -g status-right '%a %m-%d %H:%M'

set-window-option -g mode-keys vi

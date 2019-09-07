#!/usr/bin/env bash

CURRENT_DIR="$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)"
source "$CURRENT_DIR/scripts/helpers.sh"

# Colorscheme
colorscheme=$(get_tmux_option '@lifeline_colorscheme' 'default')
colorscheme_path="$CURRENT_DIR/colorscheme/$colorscheme.tmux"
if [ -e $colorscheme_path ]; then
    source $colorscheme_path
else
    printf "$colorscheme_path is not exsits."
fi

# Colors
black=$(get_tmux_option '@black' 'black')
red=$(get_tmux_option '@red' 'red')
green=$(get_tmux_option '@green' 'green')
yellow=$(get_tmux_option '@yellow' 'yellow')
blue=$(get_tmux_option '@blue' 'blue')
magenta=$(get_tmux_option '@magenta' 'magenta')
cyan=$(get_tmux_option '@cyan' 'cyan')
white=$(get_tmux_option '@white' 'white')

# Status line
## update interval
set_tmux_option 'status-interval' '1'
## auto rename
set_tmux_option 'automatic-rename' 'off'
## position
set_tmux_option 'status-position' 'top'
set_tmux_option 'status-justify' 'left'
## length
set_tmux_option 'status-left-length' '8'
set_tmux_option 'status-right-length' '50'
## color
set_tmux_option 'status-style' "bg=$black,fg=$white"
## status-left
set_tmux_option 'status-left' '#{mode}'
## status-right
set_tmux_option 'status-right' "#(whoami)@#H #[fg=$black,bg=$magenta] %a %d-%b-%Y #[fg=$magenta,bg=$black] %H:%M:%S "
set_tmux_option 'status-right-style' "bg=$black,fg=$yellow"
## window status
set_tmux_option 'window-status-format' ' #I:#W '
set_tmux_option 'window-status-style' "bg=$black,fg=$white"
set_tmux_option 'window-status-current-format' ' #I:#W '
set_tmux_option 'window-status-current-style' "bg=$black,fg=$yellow"
set_tmux_option 'window-status-separator' '|'
## command line
set_tmux_option 'message-style' "bg=$yellow,fg=$black"

# Pane
## border
set_tmux_option 'pane-border-style' "bg=$black,fg=$white"
set_tmux_option 'pane-active-border-style' "bg=$black,fg=$yellow"
## number
set_tmux_option 'display-panes-colour' "$white"
set_tmux_option 'display-panes-active-colour' "$yellow"


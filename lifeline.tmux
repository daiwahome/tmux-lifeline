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
set_tmux_option 'status-bg' "$black"
set_tmux_option 'status-fg' "$white"
## status-left
set_tmux_option 'status-left' '#{mode}'
## status-right
set_tmux_option 'status-right-bg' "$black"
set_tmux_option 'status-right-fg' "$yellow"
set_tmux_option 'status-right' "#(whoami)@#H #[fg=$black,bg=$magenta] %a %d-%b-%Y #[fg=$magenta,bg=$black] %H:%M:%S "
## window status
set_tmux_option 'window-status-bg' "$black"
set_tmux_option 'window-status-fg' "$white"
set_tmux_option 'window-status-format' ' #I:#W '
set_tmux_option 'window-status-current-bg' "$black"
set_tmux_option 'window-status-current-fg' "$yellow"
set_tmux_option 'window-status-current-format' ' #I:#W '
set_tmux_option 'window-status-separator' '|'
## command line
set_tmux_option 'message-bg' "$yellow"
set_tmux_option 'message-fg' "$black"

# Pane
## border
set_tmux_option 'pane-border-bg' "$black"
set_tmux_option 'pane-border-fg' "$white"
set_tmux_option 'pane-active-border-bg' "$black"
set_tmux_option 'pane-active-border-fg' "$yellow"
## number
set_tmux_option 'display-panes-colour' "$white"
set_tmux_option 'display-panes-active-colour' "$yellow"


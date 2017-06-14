# lifeline

A simple statusline for tmux.

## Install
With [Tmux Plugin manager][tpm]

Add plugin to the list of TPM plugins in `.tmux.conf`:
```
set -g @plugin 'daiwahome/tmux-lifeline'
set -g @plugin 'daiwahome/tmux-mode'
```
and hit `prefix + I`.

## Usage
Set colorscheme in `.tmux.conf`:
```
set -g @lifeline_solorscheme 'molokai'
```

[tpm]: https://github.com/tmux-plugins/tpm

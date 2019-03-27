#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='bg=grey,fg=black'

## load my custom aliases and functions
if [ -f ~/.shell-custom ]; then
    source ~/.shell-custom
fi
export EDITOR=/usr/bin/vim.gtk
export VISUAL=/usr/bin/vim.gtk

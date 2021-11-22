#!/bin/bash

session_name="sesh"

# 1. check if a tmux session exists with a given name.
tmux has-session -t=$session_name 2> /dev/null

# 2. create the session if it doesn't exists.
if [[ $? -ne 0 ]]; then
  TMUX='' tmux new-session -d -s "$session_name"
fi

# 3. attach if outside of tmux, switch if you're in tmux.
if [[ -z "$TMUX" ]]; then
  tmux attach -t "$session_name"
else
  tmux switch-client -t "$session_name"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/jonmoore/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# User configuration
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Applications/kitty.app/Contents/MacOS/kitty"
export PATH="$PATH:/$HOME/Courses/nand2tetris/tools"

# Import aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# VI-style keybindings in terminal
set -o vi

# Go Environment Variables
export GOPATH="/Users/jonmoore/workspace/go-workspace"
export CONFIG_DIR="$HOME/.config"
export GOBIN=$(go env GOPATH)/bin
export PATH=$PATH:$GOBIN
export KITTY_CONFIG="$HOME/.config/kitty/kitty.conf"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="half-life"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export DOTFILES="$HOME/dotfiles"

# Load aliases
[ -f "$DOTFILES/.aliasrc" ] && source "$DOTFILES/.aliasrc"

# Editor
if [[ -n SSH_CONNECTION ]]; then
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi

# Set Vim-style keybindings
set -o vi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Set JDK and add to PATH
export JAVA_HOME="$HOME/.sdkman/candidates/java/current/bin"
export PATH="$PATH:/$JAVA_HOME"

export GOPATH="/usr/local/go/bin"
export PATH="$PATH:/$GOPATH"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# bun completions
[ -s "/Users/jrm/.bun/_bun" ] && source "/Users/jrm/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Load Angular CLI autocompletion.
source <(ng completion script)

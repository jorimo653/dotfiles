export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jonathan"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Load aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

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

# JDKs
export JDK_DIRS="/Library/Java/JavaVirtualMachines"
export JDK_8="$JDK_DIRS/openlogic-openjdk-8.jdk"
export JDK_11="$JDK_DIRS/microsoft-11.jdk"
export JDK_17="$JDK_DIRS/microsoft-17.jdk"

# Set JDK and add to PATH
export JAVA_HOME=$JDK_17
export PATH="$PATH/JAVA_HOME"


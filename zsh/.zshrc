# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases
# Run 'alias' to see a full list
alias ls="eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions"
alias cd="z"
alias pixel="$ANDROID_HOME/emulator/emulator @Pixel_7_Pro"
alias zed="open -a Zed.app"

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# History setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zoxide
eval "$(zoxide init zsh)"

# pyenv
export PATH="$(pyenv root)/shims:${PATH}"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

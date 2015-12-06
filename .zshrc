# Setup ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=exeto
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
plugins=(git docker brew npm pip gem zsh-syntax-highlighting)

# Aliases
alias dm="docker-machine"
alias hfile="defaults write com.apple.finder AppleShowAllFiles false"
alias sfile="defaults write com.apple.finder AppleShowAllFiles true"

export EDITOR=mcedit
export DOTFILES=$HOME/.dotfiles

# Path
export PATH=/usr/local/sbin:$PATH
export PATH=$DOTFILES/bin:$PATH

# Node
export NODE_ENV=development

source $ZSH/oh-my-zsh.sh

# Setup ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=pure
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
plugins=(git docker brew npm pip gem zsh-syntax-highlighting)

# Aliases
alias npm-exec='PATH=$(npm bin):$PATH'
alias dm="docker-machine"
alias hfile="defaults write com.apple.finder AppleShowAllFiles false"
alias sfile="defaults write com.apple.finder AppleShowAllFiles true"

export EDITOR="subl -n -w"
export DOTFILES=$HOME/.dotfiles
export GOPATH=$HOME/.golang
export GOROOT=/usr/local/opt/go/libexec

# Path
export PATH=/usr/local/sbin:$PATH
export PATH=$DOTFILES/bin:$PATH
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Node
export NODE_ENV=development

source $ZSH/oh-my-zsh.sh

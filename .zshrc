# Setup ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=pure
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
plugins=(git docker brew npm pip gem zsh-syntax-highlighting)

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/dotfiles/.{path,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

source $ZSH/oh-my-zsh.sh

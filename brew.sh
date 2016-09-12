#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Install more recent versions of some OS X tools.
brew install python
brew install python3
brew install ruby

# Install other useful binaries.
brew install homebrew/binary/ngrok2
brew install node
brew install go
brew install git
brew install mc
brew install httpie
brew install tree
brew install ssh-copy-id
brew install dos2unix
brew install recode
brew install caddy
brew install siege
brew install micro

# Remove outdated versions from the cellar.
brew cleanup

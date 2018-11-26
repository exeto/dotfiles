#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Install more recent versions of some OS X tools.
brew install python
brew install python3

# Install other useful binaries.
brew install node
brew install yarn
brew install go
brew install git
brew install mc
brew install httpie
brew install ssh-copy-id
brew install dos2unix
brew install recode
brew install caddy
brew install siege
brew install micro
brew install jq
brew install bat

# Remove outdated versions from the cellar.
brew cleanup

#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Install more recent versions of some OS X tools.
brew install python
brew install python3
brew install ruby

# Install other useful binaries.
brew install node
brew install git
brew install docker
brew install docker-machine
brew install docker-compose
brew install mc
brew install httpie
brew install ngrok
brew install tree
brew install ssh-copy-id
brew install dos2unix
brew install recode

# Remove outdated versions from the cellar.
brew cleanup

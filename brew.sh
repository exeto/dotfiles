#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Install more recent versions of some OS X tools.
brew install \
  python \
  python3 \
  ruby

# Install other useful binaries.
brew install \
  node \
  git \
  docker \
  docker-machine \
  docker-compose \
  mc \
  httpie \
  ngrok \
  tree \
  ssh-copy-id \
  dos2unix \
  recode \
  caddy

# Remove outdated versions from the cellar.
brew cleanup

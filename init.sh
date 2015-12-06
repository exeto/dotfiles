#!/usr/bin/env bash

# Install oh-my-zsh.
curl -fsSL https://goo.gl/k58RkX | sh

export DOTFILES=$HOME/.dotfiles

ln -s $DOTFILES/oh-my-zsh        $HOME/.oh-my-zsh/custom
ln -s $DOTFILES/.editorconfig    $HOME/.editorconfig
ln -s $DOTFILES/.gitconfig       $HOME/.gitconfig
ln -s $DOTFILES/.gitignore       $HOME/.gitignore
ln -s $DOTFILES/.npmrc           $HOME/.npmrc
ln -s $DOTFILES/.zshrc           $HOME/.zshrc

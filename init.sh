#!/usr/bin/env bash

# Install oh-my-zsh.
curl -fsSL https://goo.gl/k58RkX | sh

DOTFILES=$HOME/dotfiles

ln -sin $DOTFILES/oh-my-zsh        $HOME/.oh-my-zsh/custom
ln -si  $DOTFILES/.editorconfig    $HOME/.editorconfig
ln -si  $DOTFILES/.gitconfig       $HOME/.gitconfig
ln -si  $DOTFILES/.gitignore       $HOME/.gitignore
ln -si  $DOTFILES/.npmrc           $HOME/.npmrc
ln -si  $DOTFILES/.zshrc           $HOME/.zshrc
ln -si  $DOTFILES/.hushlogin       $HOME/.hushlogin

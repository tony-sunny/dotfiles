#!/usr/bin/env bash

brew install \
        bruno \
        fnm \
        startship \
        vim \
        zsh-autosuggestions \
        zsh-syntax-highlighting
brew install --cask \
        ghostty \
        localsend

cp macos/vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
vim +PlugInstall +qall 2>&1 /dev/null

cp macos/zshrc ~/.zshrc

cp macos/starship.toml ~/.config/starship.toml

#!/usr/bin/env bash

brew install \
        fnm \
        font-fira-code-nerd-font \
        kitty \
        startship \
        vim \
        zsh-autosuggestions \
        zsh-syntax-highlighting

cp macos/vimrc ~/.vimrc
curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall 2>&1 /dev/null

cp macos/zshrc ~/.zshrc

cp macos/kitty.conf ~/.config/kitty/kitty.conf

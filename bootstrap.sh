#!/bin/bash

# Set up ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

ln -sfn ~/.dotfiles/zshrc ~/.zshrc
ln -sfn ~/.dotfiles/vimrc ~/.vimrc
ln -sfn ~/.dotfiles/p10k.zsh ~/.p10k.zsh
ln -sfn ~/.dotfiles/gitconfig ~/.gitconfig

# Install fonts
git clone --branch=20160623-Stable https://github.com/antijingoist/open-dyslexic.git ~/opendyslexic


# Set up iterm
wget -O ~/.dotfiles/iterm2/3024_Night.itermcolors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/3024%20Night.itermcolors

#!/bin/bash

# Symbolink files
ln -sf ~/.dotfiles/.vimrc ~/
ln -sf ~/.dotfiles/.tmux.conf ~/
ln -sf ~/.dotfiles/.emacs ~/
ln -sf ~/.dotfiles/.gitconfig ~/
ln -sfr ~/.dotfiles/nvim ~/.config/
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.taskrc ~/.taskrc

# Promt
echo "Congratulations!! Setup is Successful."

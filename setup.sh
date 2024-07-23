#!/bin/bash

# Create .config directory if not there
mkdir -p "$HOME/.config"

# Symbolink files
ln -sf ~/.dotfiles/.vimrc ~/
ln -sf ~/.dotfiles/.tmux.conf ~/
ln -sf ~/.dotfiles/.emacs ~/
ln -sf ~/.dotfiles/.gitconfig ~/
ln -sfr ~/.dotfiles/nvim ~/.config/
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.taskrc ~/.taskrc
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.Xresources ~/.Xresources
ln -sfr ~/.dotfiles/.i3 ~/
ln -sfr ~/.dotfiles/alacritty ~/.config/

# Promt
echo "Congratulations!! Setup is Successful."

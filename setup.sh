#!/bin/bash

# Create .config directory if not there
mkdir -p "$HOME/.config"

# Symbolink files
ln -sf ~/.dotfiles/.vimrc ~/
ln -sf ~/.dotfiles/.tmux.conf ~/
# ln -sf ~/.dotfiles/.emacs ~/
ln -sf ~/.dotfiles/.gitconfig ~/
ln -sf ~/.dotfiles/nvim ~/.config/
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.taskrc ~/.taskrc
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.Xresources ~/.Xresources
ln -sf ~/.dotfiles/.i3 ~/
ln -sf ~/.dotfiles/alacritty ~/.config/
ln -sf ~/.dotfiles/yazi/ ~/.config/
#ln -sf ~/.dotfiles/.emacs.d ~/
ln -sf ~/.dotfiles/.doom.d ~/

#cd .emacs.d/bin/ && ./doom install

# Promt
echo "Congratulations!! Setup is Successful."

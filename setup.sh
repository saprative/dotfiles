#!/bin/bash

# Symbolink files
ln -sf ~/.dotfiles/.vimrc ~/
ln -sf ~/.dotfiles/.tmux.conf ~/
ln -sf ~/.dotfiles/.emacs ~/
ln -sf ~/.dotfiles/.gitconfig ~/
ln -sfr ~/.dotfiles/nvim ~/.config/
ln -sf ~/.dotfiles/.zshrc ~/.zshrc

# Promt
echo "Congratulations!! 
    1. Vim
    2. NeoVim
    3. Git
    4. Emacs
    5. Tmux
    6. Oh My Zsh 
Setup is Successful."

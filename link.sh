#!/bin/sh

set -e

DOT=~/.dotfiles

mkdir -p ~/.config
mkdir -p ~/.local/share

# Git
ln -sfn $DOT/.gitconfig ~/.gitconfig

# ZSH
ln -sfn $DOT/.zshrc     ~/.zshrc
ln -sfn $DOT/.zprofile  ~/.zprofile
ln -sfn $DOT/.p10k.zsh  ~/.p10k.zsh
ln -sfn $DOT/.aliases   ~/.aliases

# Tmux
ln -sfn $DOT/.tmux.conf ~/.tmux.conf
ln -sfn $DOT/.tmux      ~/.tmux

# Vim
ln -sfn $DOT/.vimrc     ~/.vimrc
ln -sfn $DOT/.vim       ~/.vim

# Neovim
ln -sfn $DOT/nvim       ~/.config/nvim

# Editorconfig
ln -sfn $DOT/.editorconfig ~/.editorconfig

# Config apps
ln -sfn $DOT/.config/rofi    ~/.config/rofi
ln -sfn $DOT/.config/sway    ~/.config/sway
ln -sfn $DOT/.config/waybar  ~/.config/waybar
ln -sfn $DOT/.config/ranger  ~/.config/ranger
ln -sfn $DOT/.config/dunst   ~/.config/dunst

# Alacritty
ln -sfn $DOT/.alacritty.toml ~/.alacritty.toml

# Newsboat
ln -sfn $DOT/.newsboat ~/.newsboat

# Fonts
ln -sfn $DOT/.fonts ~/.local/share/fonts

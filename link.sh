#!/bin/sh

# Git
ln -sfi ~/.dotfiles/.gitconfig        ~/.gitconfig

# ZSH
ln -sfi ~/.dotfiles/.zshrc            ~/.zshrc
ln -sfi ~/.dotfiles/.zprofile         ~/.zprofile
ln -sfi ~/.dotfiles/.p10k.zsh         ~/.p10k.zsh
ln -sfi ~/.dotfiles/.aliases          ~/.aliases

# Tmux
ln -sfi ~/.dotfiles/.tmux.conf        ~/.tmux.conf
ln -sfi ~/.dotfiles/.tmux             ~/

# Vim
ln -sfi ~/.dotfiles/.vimrc            ~/.vimrc
ln -sfi ~/.dotfiles/.vim              ~/

# Neovim
ln -sfi ~/.dotfiles/nvim              ~/.config

# Editorconfig
ln -sfi ~/.dotfiles/.editorconfig     ~/.editorconfig

# Rofi
ln -sfi ~/.dotfiles/.config/rofi      ~/.config/rofi

# Sway
ln -sfi ~/.dotfiles/.config/sway      ~/.config/sway

# Waybar
ln -sfi ~/.dotfiles/.config/waybar    ~/.config/waybar

# Alacritty
ln -sfi ~/.dotfiles/.alacritty.toml   ~/.alacritty.toml

# Ranger
ln -sfi ~/.dotfiles/.config/ranger    ~/.config/ranger

# Dunst
ln -sfi ~/.dotfiles/.config/dunst     ~/.config/dunst

# Newsboat
ln -sfi ~/.dotfiles/.newsboat         ~/

# My custom fonts
ln -sfi ~/.dotfiles/.fonts            ~/

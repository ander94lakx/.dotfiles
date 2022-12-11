#!/bin/bash

# Installation scripts for tools

# Oh-my-ZSH
if command -v zsh &> /dev/null
then
    echo "ZSH not found, Oh-my-ZSH will NOT be installed!!!"
else
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi

# NVM
sh -c "$(wget https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh -O -)"

# Manual installation only if dotfiles repo exists
if [[ -d ~/.dotfiles ]]
then
    # Install vim-plug as plugin manager for vim
    mkdir -p ~/.dotfiles/.vim/autoload
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    # Install tpm as plugin manager for tmux
    mkdir -p ~/.dotfiles/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm ~/.dotfiles/.tmux/plugins/tpm
fi

#!/bin/bash
declare -A osInfo;
osInfo[/etc/debian_version]="apt install"
osInfo[/etc/alpine-release]="apk --update add"
osInfo[/etc/centos-release]="yum install"
osInfo[/etc/fedora-release]="dnf install"
osInfo[/etc/arch-release]="pacman -S install"

for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
        package_manager=${osInfo[$f]}
    fi
done

packages=(curl git go make perl zsh alacritty playerctl feh lxappearance rofi maim xclip exa ranger)

for package in ${myArray[@]}; do
    ${package_manager} $package
done

# Installation scritps for tools
# Oh-my-ZSH
if command -v zsh &> /dev/null
then
    echo "ZSH not found, Oh-my-ZSH will NOT be installed!!!"
else
    wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O
fi
# NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh

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

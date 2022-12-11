#!/bin/bash
declare -A osInfo;
osInfo[/etc/debian_version]="apt-get install -y"
osInfo[/etc/alpine-release]="apk --update add"
osInfo[/etc/centos-release]="yum install -y"
osInfo[/etc/fedora-release]="dnf install -y"

for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
        package_manager=${osInfo[$f]}
    fi
done

package="git"

${package_manager} go git make perl i3 alacritty zsh playerctl feh lxappearance rofi ranger maim xclip exa

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

#!/bin/bash

# Installation script for packages

declare -A osInfo;
osInfo[/etc/debian_version]="apt install"
osInfo[/etc/alpine-release]="apk --update add"
osInfo[/etc/centos-release]="yum install"
osInfo[/etc/fedora-release]="dnf install"
osInfo[/etc/arch-release]="pacman -S install"

for f in ${!osInfo[@]}
do
    if [[ -f $f ]]
    then
        package_manager=${osInfo[$f]}
    fi
done

packages=(curl git go make perl zsh alacritty playerctl feh lxappearance rofi maim xclip exa ranger blueman newsboat)

for package in ${myArray[@]}
do
    ${package_manager} $package
done

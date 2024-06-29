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

input="packages.txt"
while IFS= read -r line
do
    sudo ${package_manager} -y $line
done < "$input"

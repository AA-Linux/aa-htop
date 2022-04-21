#!/usr/bin/env bash

HTOPDIR="$HOME"/.config/htop

install_htop() {
    echo -e "\e[0;32m+---Backup your HTOP Conf---+\e[0m\n"
    if [[ `whereis htop` ]]; then
        if [[ `ls ~/.config/htop` ]]; then
            mv "$HTOPDIR"   ~/.config/HTOP.BAK
            mkdir ~/.config/htop
        fi
        echo -e "\e[0;32m Copy the files for your .config\e[0m"
        cp -r `pwd`/files/htoprc  "$HTOPDIR"
        echo -e "\n\e[0;32m+---------Finished!---------+\e[0m"
    else
        echo -e "\e[0;32m+---Install HTOP---+\e[0m"
        sudo pacman -S htop
        mkdir "$HTOPDIR"
        echo -e "\e[0;32m Copy the files for your .config\e[0m"
        cp -r `pwd`/files/htoprc  "$HTOPDIR"
        echo -e "\n\e[0;32m+----Finished!-----+\e[0m"
    fi
}
install_htop

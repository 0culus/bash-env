#!/usr/bin/env bash

# setup script for my bash env

DIR="$HOME/.dotfiles"

BP="$HOME/.bash_profile"
BRC="$HOME/.bashrc"
VIM="$HOME/.vim"
VRC="$HOME/.vimrc"

BPBAK="$HOME/.bash_profile_bak"
BRCBAK="$HOME/.bashrc_bak"
VIMBAK="$HOME/.vim_bak"
VRCBAK="$HOME/.vimrc_bak"

# get rid of existing dotfiles
function erase {
    echo "Erasing dotfiles..."

    rm -f $BP
    rm -f $BRC
    rm -f $VIM
    rm -f $VRC
}

# or alternatively, back them up via renaming
function backup {
    echo "Backing up dotfiles..."

    mv $BP $BP_BAK
    mv $BRC $BRCBAK
    mv $VIM $VIMBAK
    mv $VRC $VRCBAK
}

# create symlinks
function create_links {
    echo "Creating symlinks..."

    ln -s $DIR/bash/profile $BP
    ln -s $DIR/bash/profile $BRC
    ln -s $DIR/vim $VIM
    ln -s $DIR/vim $VRC
}

if [ -d $DIR ]; then
    echo "Replace dotfiles? [1 - replace; 2 - backup/replace; 3 - get me out"
    select RN in "Replace" "No"; do
        case $RN in 
            Replace )
                backup
                create_links
                exit 0
                ;;

            No )
                exit 0
                ;;
        esac
    done
fi

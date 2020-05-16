#!/bin/bash
set -u

DOTPATH="$HOME/dotfiles"
REPOSITORY="git@github.com:lmk0420/dotfiles.git"

init() {
    if [ ! -d $DOTPATH ]; then
        git clone "$REPOSITORY" "$DOTPATH"
    else
        git pull
    fi
}

load() {
    source "$DOTPATH/install.sh"
}

main() {
    init
    load

    install_brew
    brew_bundle
}

main
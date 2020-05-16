#!/bin/bashs

install_brew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

brew_bundle() {
    brew bundle --global --verbose
}
#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# install zellij
if ! brew list zellij &>/dev/null; then
    brew install zellij
fi

# setting
mkdir -p ~/.config/zellij
ln -sf "$SCRIPT_DIR/config.kdl" ~/.config/zellij/config.kdl

#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# install dependencies
brew install zsh eza bat autojump

# setting
ln -sf "$SCRIPT_DIR/zshrc" ~/.zshrc

mkdir -p ~/.config/zsh
for f in "$SCRIPT_DIR"/config/*.zsh; do
    ln -sf "$f" ~/.config/zsh/
done

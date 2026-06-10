#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v tmux &> /dev/null; then
  echo "tmux not found, installing via brew..."
  brew install tmux
fi

if ! command -v bun &> /dev/null; then
  echo "bun not found, installing..."
  curl -fsSL https://bun.sh/install | bash
fi

ln -sf "$SCRIPT_DIR/tmux.conf" ~/.tmux.conf

# Install TPM (Tmux Plugin Manager)
if [ ! -d ~/.tmux/plugins/tpm ]; then
  echo "Installing TPM..."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Install TPM plugins
echo "Installing tmux plugins..."
~/.tmux/plugins/tpm/bin/install_plugins

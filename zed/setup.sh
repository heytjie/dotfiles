#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config/zed"

mkdir -p "$CONFIG_DIR"

ln -sf "$SCRIPT_DIR/settings.json" "$CONFIG_DIR/settings.json"
ln -sf "$SCRIPT_DIR/keymap.json" "$CONFIG_DIR/keymap.json"

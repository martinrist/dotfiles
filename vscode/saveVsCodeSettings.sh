#!/bin/bash

source vscode_config.source

echo "Copying VSCode settings file"
cp "$VSCODE_SUPPORT_DIR/User/settings.json" .
echo

echo "Copying VSCode keybindings file"
cp "$VSCODE_SUPPORT_DIR/User/keybindings.json" .

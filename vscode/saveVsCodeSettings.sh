#!/bin/bash

echo "Copying vscode settings file"

source vscode_config.source
cp "$VSCODE_SUPPORT_DIR/User/settings.json" .

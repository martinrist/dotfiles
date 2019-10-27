#!/bin/bash

if ! [ -x "$(command -v code)" ]; then
  echo 'Error: `code` command line is not installed.  Please install it using ' >&2
  exit 1
fi

echo "Removing all existing extensions..."
echo

for ext in $(code --list-extensions)
do
    code --uninstall-extension $ext
done

echo
for ext in $(cat extensions)
do
    code --install-extension $ext
done

echo
echo "Copying settings & keybindings file..."
echo

source vscode_config.source
cp settings.json "$VSCODE_SUPPORT_DIR/User"
cp keybindings.json "$VSCODE_SUPPORT_DIR/User"
echo "Setup complete"
#!/bin/bash

source xcode_config.source

echo "Copying Xcode theme files"
mkdir -p FontAndColorThemes
cp $XCODE_USERDATA_DIR/FontAndColorThemes/* FontAndColorThemes
echo

echo "Copying Xcode keybindings"
mkdir -p KeyBindings
cp $XCODE_USERDATA_DIR/KeyBindings/* KeyBindings

#!/bin/bash

source xcode_config.source

echo "Copying Xcode theme files"
mkdir -p FontAndColorThemes
cp $XCODE_LIBRARY_DIR/UserData/FontAndColorThemes/* FontAndColorThemes
echo

echo "Copying Xcode keybindings"
mkdir -p KeyBindings
cp $XCODE_LIBRARY_DIR/UserData/KeyBindings/* KeyBindings

echo "Copying Templates"
mkdir -p Templates
cp -R $XCODE_LIBRARY_DIR/Templates/* Templates

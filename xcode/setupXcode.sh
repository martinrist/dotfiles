#!/bin/bash

source xcode_config.source

echo "Removing existing themes & key bindings"
rm $XCODE_LIBRARY_DIR/UserData/FontAndColorThemes/*
rm $XCODE_LIBRARY_DIR/UserData/KeyBindings/*

echo
echo "Copying themes & keybindings files..."
echo
cp -r FontAndColorThemes $XCODE_LIBRARY_DIR/UserData
cp -r KeyBindings $XCODE_LIBRARY_DIR/UserData
cp -r Templates $XCODE_LIBRARY_DIR/Templates

echo "Setup complete"
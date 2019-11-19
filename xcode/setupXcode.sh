#!/bin/bash

source xcode_config.source

echo "Removing existing themes & key bindings"
rm $XCODE_USERDATA_DIR/FontAndColorThemes/*
rm $XCODE_USERDATA_DIR/KeyBindings/*

echo
echo "Copying themes & keybindings files..."
echo
cp -r FontAndColorThemes $XCODE_USERDATA_DIR
cp -r KeyBindings $XCODE_USERDATA_DIR

echo "Setup complete"
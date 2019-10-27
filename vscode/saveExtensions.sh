#!/bin/bash

if ! [ -x "$(command -v code)" ]; then
  echo "Error: 'code' command line is not installed.  Please install it using VSCode's 'Install code command in PATH' command." >&2
  exit 1
fi

code --list-extensions > extensions
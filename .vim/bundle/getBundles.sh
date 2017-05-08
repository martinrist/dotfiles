#!/bin/bash

# Script to clone and install Vim bundles

# General Vim
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/scrooloose/nerdtree.git

# General programming
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/tpope/vim-commentary.git

# Haskell
git clone https://github.com/eagletmt/neco-ghc
git clone https://github.com/eagletmt/ghcmod-vim.git
git clone https://github.com/Shougo/neocomplete.vim.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/bitc/vim-hdevtools.git
git clone https://github.com/alx741/vim-hindent.git
git clone https://github.com/nbouscal/vim-stylish-haskell.git
git clone https://github.com/Shougo/vimproc.vim.git
pushd vimproc.vim
make
popd

#!/bin/bash

# Script to clone and install Vim bundles

git clone https://github.com/martinrist/darcula.git
git clone https://github.com/altercation/vim-colors-solarized.git

git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/nerdcommenter.git


# General programming
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/airblade/vim-gitgutter.git

# Haskell

git clone https://github.com/eagletmt/neco-ghc
git clone https://github.com/eagletmt/ghcmod-vim.git
git clone https://github.com/Shougo/neocomplete.vim.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/bitc/vim-hdevtools.git

git clone https://github.com/Shougo/vimproc.vim.git
pushd vimproc.vim
make
popd




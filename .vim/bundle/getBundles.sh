#!/bin/bash

# Script to clone and install Vim bundles
# TODO:
# - Nerdtree?
# - Other Haskell stuff from http://www.stephendiehl.com/posts/vim_2016.html


git clone https://github.com/martinrist/darcula.git

# General programming
git clone https://github.com/scrooloose/syntastic.git

# Haskell

git clone https://github.com/eagletmt/neco-ghc
git clone https://github.com/eagletmt/ghcmod-vim.git
git clone https://github.com/Shougo/neocomplete.vim.git
git clone https://github.com/ervandew/supertab.git

git clone https://github.com/Shougo/vimproc.vim.git
pushd vimproc.vim
make
popd




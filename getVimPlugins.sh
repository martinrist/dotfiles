#!/bin/bash

# Clean 'start' bundle
rm -rf ~/.vim/pack/bundle/start
mkdir -p ~/.vim/pack/bundle/start
pushd ~/.vim/pack/bundle/start

# Clone Plugins

## Color schemes
git clone https://github.com/altercation/vim-colors-solarized.git

## File managmeent
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/junegunn/fzf.vim.git

## Status line
git clone https://github.com/itchyny/lightline.vim.git
git clone https://github.com/itchyny/vim-gitbranch.git

## Programming - General Support Plugins
git clone https://github.com/airblade/vim-gitgutter
git clone https://github.com/tpope/vim-commentary.git

## Programming - Language-specific Plugins

### Haskell
git clone --branch v0.0.78 https://github.com/neoclide/coc.nvim.git

### Elm
git clone https://github.com/andys8/vim-elm-syntax.git

# Clean up
popd

#!/bin/bash

# Script to clone and install Vim bundles

# General Vim
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/junegunn/fzf.vim.git

# General programming
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/tpope/vim-commentary.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/autozimu/LanguageClient-neovim.git
pushd LanguageClient-neovim
./install.sh
popd

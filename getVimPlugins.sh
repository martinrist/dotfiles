#!/bin/bash

# Clean 'start' bundle
rm -rf ~/.vim/pack/bundle/start
mkdir -p ~/.vim/pack/bundle/start

pushd ~/.vim/pack/bundle/start

# General Vim
git clone https://github.com/tpope/vim-unimpaired.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/junegunn/fzf.vim.git
git clone https://github.com/itchyny/lightline.vim.git

# Wiki
# Use `dev` branch until https://github.com/vimwiki/vimwiki/pull/529 merged to `master`
git clone -b dev https://github.com/vimwiki/vimwiki.git

# General programming
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/tpope/vim-commentary.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/ervandew/supertab.git

git clone https://github.com/autozimu/LanguageClient-neovim.git
pushd LanguageClient-neovim
./install.sh
popd

# Swift
git clone https://github.com/apple/swift/ apple-swift
cp -r ./apple-swift/utils/vim ~/.vim/pack/bundle/start/swift
rm -rf ./apple-swift/

popd

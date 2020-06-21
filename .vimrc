" -----------------------------------
" Colour Schemes & Syntax Highligting
" -----------------------------------

" Set colour scheme and background
colorscheme solarized
set background=dark

" Enable syntax highlighting
syntax on

" Find out which syntax group is used by a selection
function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun




" Set update time for quicker UI updates
set updatetime=100

" Configure leader
let mapleader=","

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
" TODO: Investigate whether this is useful
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Don’t add empty newlines at the end of files
" TODO: Investigate whether this is useful
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Enable line numbers
set number

" Highlight current line
set cursorline

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Make tabs as wide as four spaces
" TODO: Investigate whether this is useful
set tabstop=4

" Enable indentation without hard tabs
" TODO: Investigate whether this is useful
set expandtab
set shiftwidth=4
set softtabstop=4

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" Highlight searches
set hlsearch

" Use <C-l> to mute search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line, even for the last / only file
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Don’t show the intro message when starting Vim
set shortmess=I

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Enable file type detection
filetype plugin indent on

" Set Markdown text width
autocmd BufNewFile,BufRead *.md setlocal textwidth=80

" Set indent for YAML files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Autoindent, so gqap works correctly for bulleted lists
" TODO: Investigate whether this is useful
set autoindent


" Plugin-specific configuration

source ~/.vimrc.d/.vimrc.fzf
source ~/.vimrc.d/.vimrc.lightline
source ~/.vimrc.d/.vimrc.nerdtree
source ~/.vimrc.d/.vimrc.coc

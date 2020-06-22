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



" ----------------
" Editor Interface
" ----------------

" Set update time for quicker UI updates
set updatetime=100

" Enable line numbers
set number

" Highlight current line
set cursorline

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Always show status line, even for the last / only file
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Don’t show the intro message when starting Vim
set shortmess=I

" Show the filename in the window titlebar
set title

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed



" ----------
" File Types
" ----------

" Enable file type detection & plugins
filetype on
filetype plugin on

" Set Markdown text width
autocmd BufNewFile,BufRead *.md setlocal textwidth=80

" Set indent for YAML files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab



" ------------
" Key Bindings
" ------------

" Configure leader
let mapleader=","



" ------------
" Command Line
" ------------

" Enhance command-line completion
set wildmenu

" Show the (partial) command as it’s being typed
set showcmd



" ---------------
" File Management
" ---------------

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo



" ------
" Search
" ------

" Highlight searches
set hlsearch

" Use <C-l> to mute search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch



" -----------------------
" Indentation & Whitespce
" -----------------------

" Enable indentation
filetype indent on

" Don’t add empty newlines at the end of files
set binary
set noeol

" Make tabs as wide as four spaces
set tabstop=4

" Enable indentation without hard tabs
set expandtab
set shiftwidth=4
set softtabstop=4

" Autoindent, so gqap works correctly for bulleted lists
set autoindent

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list



" -----------------------------
" Plugin-specific configuration
" -----------------------------

source ~/.vimrc.d/.vimrc.fzf
source ~/.vimrc.d/.vimrc.lightline
source ~/.vimrc.d/.vimrc.nerdtree
source ~/.vimrc.d/.vimrc.coc

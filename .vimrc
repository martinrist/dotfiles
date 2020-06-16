" Set colour scheme and background
colorscheme solarized
set background=dark

" Set update time for quicker UI updates
set updatetime=100

" Configure leader
let mapleader=","

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Allow backspace in insert mode
set backspace=indent,eol,start

" Add the g flag to search/replace by default
set gdefault

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Don’t add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Highlight current line
set cursorline

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Make tabs as wide as four spaces
set tabstop=4

" Enable indentation without hard tabs
set expandtab
set shiftwidth=4
set softtabstop=4

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype plugin indent on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
	" Set Markdown text width
	autocmd BufNewFile,BufRead *.md setlocal textwidth=80
endif

" Autoindent, so gqap works correctly for bulleted lists
set autoindent

" Set indent for YAML files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Look for tags files in parent folders
set tags=./tags;

" Find out which syntax group is used by a selection
function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun


" Plugin-specific configuration

source ~/.vimrc.d/.vimrc.fzf
source ~/.vimrc.d/.vimrc.lightline
source ~/.vimrc.d/.vimrc.nerdtree
source ~/.vimrc.d/.vimrc.coc

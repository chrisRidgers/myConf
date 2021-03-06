"compatibility limitations
set nocompatible "be ViMproved
set t_Co=256

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'craigemery/vim-autotag'
Plugin 'lepture/vim-jinja'
Plugin 'joonty/vim-phpqa.git'

call vundle#end()

filetype plugin indent on

" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Vundle setup

"filetype management
"filetype on
"filetype plugin on
"filetype indent on

"enable syntax highlighting
syntax enable

"set colorcolumn
set colorcolumn=80

"enable hidden buffers
"set hidden

"don't update display while executing macros
set lazyredraw

"display current mode
set showmode

"enable command line completion (requires compilation with +wildmenu)
set wildmenu

"mnemonic key sequence for 'e'dit 'v'imrc
nmap <silent> ,ev :e $MYVIMRC<cr>

"mnemonic key sequence for 's'ource 'v'imrc
nmap <silent> ,sv :so $MYVIMRC<cr>

"mnemonic key sequence for 's'ource 'v'imrc
nmap <silent> ,ee :20Explore! <cr>

"set search to wrap around the file
set wrapscan

"set the forward slash to be slash of note
set shellslash

"make command line two lines high
set ch=2

"set visual bell
"set vb

"allow backspacing over indent, eol and start of an insert
set backspace=2

"always put status line in
set laststatus=2

"hide mouse pointer while typing
set mousehide

"gui options
set guioptions=ac

"time out length on commands
set timeoutlen=500

"history
set history=100

"commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

"scroll off
set scrolloff=999

"allow cursor to go anywhere
set virtualedit=all

"incrementally match search
set incsearch

set t_Co=256
"colorcolumn and wrapping
set colorcolumn=80

"netrw_setup
let g:netrw_preview 		= 1
let g:netrw_liststyle 		= 4
let g:netrw_browse_split 	= 4
let g:netrw_altv		= 1
"let g:netrw_banner		= 0
let g:netrw_fastbrowse		= 2
let g:netrw_winsize 		= 80 
let g:netrw_keepdir 		= 1

"solarized colorscheme
set background=light
let g:solarized_colors = 256
let g:solarized_termtrans = 1
colorscheme solarized

autocmd BufNewFile,BufRead *.html.twig set syntax=jinja.html

"phpqa
let g:phpqa_codesniffer_args = "--standard=PSR2"

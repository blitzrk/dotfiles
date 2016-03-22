" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set shell=/bin/sh

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" languages
Plugin 'fatih/vim-go'
Plugin 'jimenezrick/vimerl'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattreduce/vim-mix'
Plugin 'pangloss/vim-javascript'
Plugin 'helino/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'udalov/kotlin-vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'mjakl/vim-asciidoc'
" shortcuts
Plugin 'tpope/vim-surround'
" syntax
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
" navigation
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
" look and feel
Plugin 'bling/vim-airline'
Plugin 'endel/vim-github-colorscheme'
Plugin 'artnez/vim-wipeout'
Plugin 'fatih/molokai'
Plugin 'xero/sourcerer.vim'
" session management
Plugin 'tpope/vim-obsession'
" git integration
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set shell=/bin/bash

" General
syntax enable
set history=700

" Colors
set background=dark
set t_Co=256
colorscheme molokai
let g:rehash256 = 1
hi StatusLine ctermfg=6 ctermbg=7
hi Comment ctermfg=green
hi Visual cterm=reverse
hi MatchParen ctermbg=none ctermfg=red

" Metdata
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undodir
set undofile
set undolevels=1000

" Indentation
set tabstop=4
set shiftwidth=4
set smarttab
set noexpandtab

" Search and locate
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic " for regex
set ruler
set number

" Buffers
set autoread
set encoding=utf8
set hid
" set lazyredraw

" Cursor
set so=7 " scroll offset
set showmatch
set backspace=indent,eol,start

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Custom mappings
map <space> /

" Elm config
au FileType elm setlocal ts=2 sts=2 sw=2 expandtab

" Javascript config
au FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Go config
let g:go_fmt_command = "goimports"
set completeopt-=preview

" Syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" YCM config
let g:ycm_python_binary_path = '/usr/bin/python'

" Ctrlp config
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git\|/deps/\|_build\|vendor'

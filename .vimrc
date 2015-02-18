set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required 
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/csapprox'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rails'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
colorscheme desert

set cindent
set smartindent
set autoindent

set expandtab
set smarttab

set tabstop=4
set softtabstop=4
set shiftwidth=4

set number
set t_Co=256

set incsearch
set showmatch

set mouse=a

" Don't lose selection when indenting
vnoremap < <gv
vnoremap > >gv

" Show both a status line and a command line
set laststatus=2 

" Special per filetype tab size overrides
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd BufNewFile,BufRead *.html.erb set filetype=html

" Open the quick fix window for greps
autocmd QuickFixCmdPost *grep* cwindow

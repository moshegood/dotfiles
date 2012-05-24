set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'godlygeek/csapprox'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" END OF VUNDLE SETUP

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

" Don't lose selection when indenting
vnoremap < <gv
vnoremap > >gv

" Show both a status line and a command line
set laststatus=2 

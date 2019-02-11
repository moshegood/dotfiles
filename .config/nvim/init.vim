filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/csapprox'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'fatih/vim-go'
Plugin 'Shougo/deoplete.nvim'
Plugin 'leafgarland/typescript-vim'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on  " allows auto-indenting depending on file type

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

set foldmethod=indent
set foldlevelstart=20

set number
set t_Co=256

set incsearch
set showmatch

set mouse=a
set backspace=2 " make backspace work like most other programs

" Don't lose selection when indenting
vnoremap < <gv
vnoremap > >gv

" Show both a status line and a command line
set laststatus=2 

" Special per filetype tab size overrides
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 expandtab
autocmd BufNewFile,BufRead *.erb set filetype=html

" Open the quick fix window for greps
autocmd QuickFixCmdPost *grep* cwindow

" Go up until you find my tags file
" This means that the tag file needs to have FULL PATH names
set tags=./tags;,tags;

" Ignore trailing whitespace in diffs
set diffopt+=iwhite

" Use the system clipboard for default copy/paste
set clipboard=unnamedplus

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'relativepath', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

let g:deoplete#enable_at_startup = 1

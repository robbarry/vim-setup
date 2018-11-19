set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
call vundle#end()

filetype plugin indent on

set nocompatible
set noswapfile
set hidden
set number
set autoindent
set smartindent
set backspace=2 " make backspace work like most other apps
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set background=dark
syntax on
colorscheme molokai
let g:molokai_original = 1

nmap ; :Buffers<CR>

" To load NERDTree automatically:
" autocmd vimenter * if !argc() | NERDTree | endif

" I prefer this behavior (CTRL + N to toggle NERDTree):
map <silent> <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:python_highlight_all = 1

" Brief help for Vundle:
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

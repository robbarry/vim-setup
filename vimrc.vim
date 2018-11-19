set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-scripts/indentpython.vim'
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
set encoding=utf-8

set background=dark
syntax on
colorscheme palenight

nmap ; :Buffers<CR>

" To load NERDTree automatically:
" autocmd vimenter * if !argc() | NERDTree | endif

" I prefer this behavior (CTRL + N to toggle NERDTree):
map <silent> <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:python_highlight_all = 1

" nmap <F3> O<C-R>=strftime("## %Y-%m-%d %a %I:%M %p")<CR><Esc>
" imap <F3> <C-R>=strftime("## %Y-%m-%d %a %I:%M %p")<CR>

" Add <Esc> to end of the next line to return to command mode:
nmap <F3> O<C-R>=strftime("## %c")<CR><ESC>o
imap <F3> <C-R>=strftime("## %c")<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Fix cutoff in NERDTree names:
let NERDTreeNodeDelimiter = "\t"

let g:better_whitespace_enabled=1

set tw=80 fo+=t colorcolumn=80

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown tw=80 fo+=t colorcolumn=80

au BufNewFile,BufRead *.py
    \ set tabstop=4 softtabstop=4 shiftwidth=4 |
    \ set textwidth=79 expandtab autoindent fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

let &t_SI = "\<Esc>[6 q"
" let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Brief help for Vundle:
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

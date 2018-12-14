syntax enable
filetype plugin indent on
set title
set relativenumber
set nowrap
set encoding=utf-8
set autoindent
set lazyredraw
set autoread
set scrolloff=5
set mouse=n
set backspace=2
set expandtab smarttab tabstop=2 softtabstop=2 shiftwidth=2
set incsearch hlsearch ignorecase smartcase
set wildmenu wildmode=list:longest wildignore=*/.git/*
set noshowmode

" statusline
set laststatus=2
set statusline=%f%=\ %y\ %c/%{strwidth(getline('.'))}\ %l/%L

" Key mappings
inoremap (<cr> (<cr>)<esc>O
inoremap {<cr> {<cr>}<esc>O

cnoremap help vert help
cabbrev h vert h

let mapleader=","
nmap <leader><cr> :nohlsearch<cr>
nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>r :NERDTreeFind<cr>
nmap <leader>w <c-w><c-w>
nmap <leader>t gT
nmap <leader>q :q<cr>

" colorscheme
colorscheme badwolf 

" Vim-plug plugin manager
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'leafgarland/typescript-vim'
  Plug 'ervandew/supertab'
  Plug 'w0rp/ale'
call plug#end()

let g:ale_linters = { 
      \'typescript': ['tslint', 'tsc', 'prettier'], 
      \'javascript': ['eslint', 'prettier']
\}

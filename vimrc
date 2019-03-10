syntax enable
filetype plugin indent on
set title
set number relativenumber
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
set background=dark
set ttimeoutlen=50
set splitbelow splitright
set laststatus=2

" Key mappings
inoremap (<cr> (<cr>)<esc>O
inoremap {<cr> {<cr>}<esc>O

cnoremap help vert help
cabbrev h vert h

nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

nnoremap yy "*yy"
vnoremap y "*y"

let mapleader=","
nmap <leader>q :qa<cr>
nmap <leader>w <c-w><c-w>
nmap <leader><cr> :nohlsearch<cr>

nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>r :NERDTreeFind<cr>

nmap <leader>f :GFiles<cr>
nmap <leader>F :Files<cr>
nmap <leader>b :Buffers<cr>

nmap <leader>g :Goyo<cr>

" colorscheme
" Pick a random colorscheme
let themes = ['molokai', 'gruvbox', 'badwolf']
execute 'colorscheme '.themes[localtime() % len(themes)]
unlet themes

" Vim-plug plugin manager
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
  Plug 'ervandew/supertab'
  Plug 'w0rp/ale'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'dag/vim-fish'
call plug#end()

let g:ale_linters = { 
      \'typescript': ['tslint', 'tsc', 'prettier'], 
      \'javascript': ['eslint', 'prettier']
\}

syntax enable
filetype plugin indent on
set title
set number
set nowrap
set autoindent
set lazyredraw
set autoread
set scrolloff=5
set mouse=n
set backspace=2
set expandtab smarttab tabstop=2 softtabstop=2 shiftwidth=2
set incsearch hlsearch ignorecase smartcase
set wildmenu wildmode=list:longest wildignore=.git

" statusline
set laststatus=2
set statusline=%f%=%l/%L

" Key mappings
let mapleader=","
nmap <leader><cr> :nohlsearch<cr>
nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>w <c-w><c-w>

inoremap (<cr> (<cr>)<esc>O
inoremap {<cr> {<cr>}<esc>O

" colorscheme
colorscheme badwolf

" Vim-plug plugin manager
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'leafgarland/typescript-vim'
  Plug 'ervandew/supertab'
  Plug 'noahfrederick/vim-skeleton'
call plug#end()

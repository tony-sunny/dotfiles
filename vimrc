syntax enable
filetype plugin indent on
set title
set number
set autoindent
set scrolloff=5
set mouse=a
set backspace=2
set lazyredraw
set autoread
set nowrap
set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set smarttab
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu wildmode=list:longest wildignore=.git

" Key mappings
let mapleader=","
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nmap <leader><cr> :nohlsearch<cr>
nmap <leader>n :NERDTree<cr>
nmap <leader>w <c-w><c-w>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap (<cr> (<cr>)<esc>O
inoremap {<cr> {<cr>}<esc>O

" colorscheme
colorscheme badwolf

" Vim-plug plugin manager
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'  
Plug 'leafgarland/typescript-vim'
Plug 'ervandew/supertab'
call plug#end()


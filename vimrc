syntax enable
filetype plugin indent on
set title
set number
set autoindent
set ruler
set showcmd
set scrolloff=5
set mouse=a
set wildmenu
set wildmode=list:longest
set wildignore=.git,*.o
set laststatus=2
set ttimeoutlen=10

" Formatting
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

" Search options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Key mappings
let mapleader=","
nmap <Leader><CR> :nohlsearch<cr>
nmap <Leader>n :NERDTree<cr>
nmap <Leader>w <C-w><C-w>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap (<CR> (<CR>)<ESC>O
inoremap {<CR> {<CR>}<ESC>O

" colorscheme
colorscheme molokai

" Vim-plug plugin manager
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'  
Plug 'leafgarland/typescript-vim'
Plug 'ervandew/supertab'

call plug#end()


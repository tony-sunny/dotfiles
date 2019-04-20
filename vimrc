set title
set nowrap
set nu rnu
set sb spr
set autoread
set autoindent
set noshowmode
set scrolloff=5
set backspace=2
set laststatus=2
set encoding=utf-8
set background=dark
set list listchars=trail:•
set incsearch hlsearch ignorecase smartcase
set wildmenu wildmode=list:longest wildignore=*/.git/*
set expandtab smarttab tabstop=2 softtabstop=2 shiftwidth=2

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

" Vim-plug plugin manager
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
  Plug 'w0rp/ale'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'dag/vim-fish'
  Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox

let g:ale_linters = {
      \'typescript': ['tslint', 'tsc', 'prettier'],
      \'javascript': ['eslint', 'prettier']
\}

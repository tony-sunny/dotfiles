let s:darwin = has('mac')

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

" statusline
set laststatus=2
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n
set statusline+=\ %#Visual#
set statusline+=%#CursorIM#
set statusline+=%R
set statusline+=%M
set statusline+=%#Cursor#
set statusline+=%#CursorLine#
set statusline+=\ %t
set statusline+=%=
set statusline+=%#CursorLine#
set statusline+=\ %Y
set statusline+=\ %#CursorIM#
set statusline+=\ %3l:%-2c
set statusline+=%#Cursor#
set statusline+=\ %3p%%\ 

" Key mappings
inoremap (<cr> (<cr>)<esc>O
inoremap {<cr> {<cr>}<esc>O

cnoremap help vert help
cabbrev h vert h

let mapleader=","
nmap <leader>q :qa<cr>
nmap <leader>w <c-w><c-w>
nmap <leader><cr> :nohlsearch<cr>

nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>r :NERDTreeFind<cr>

nmap <leader>f :GFiles<cr>
nmap <leader>F :Files<cr>
nmap <leader>b :Buffers<cr>

" colorscheme
let g:seoul256_background = 233
" colorscheme seoul256
" colorscheme molokai
colorscheme gruvbox
" colorscheme badwolf

" Vim-plug plugin manager
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'leafgarland/typescript-vim'
  Plug 'ervandew/supertab'
  Plug 'w0rp/ale'
  if s:darwin
    Plug '/usr/local/opt/fzf'
  else
    Plug '~/.fzf'
  endif
  Plug 'junegunn/fzf.vim'
call plug#end()

let g:ale_linters = { 
      \'typescript': ['tslint', 'tsc', 'prettier'], 
      \'javascript': ['eslint', 'prettier']
\}

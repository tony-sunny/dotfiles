" Focus on center in insert mode
autocmd InsertEnter * norm zz
" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

set nowrap
set autoread
set autoindent
set noshowmode
set backspace=2
set laststatus=2
set ttimeoutlen=50
set updatetime=250
set background=dark
set number relativenumber
set splitbelow splitright
set wildmode=longest,list,full
set hlsearch incsearch smartcase
set list listchars=tab:..,trail:★
set expandtab smarttab shiftround tabstop=2 softtabstop=2 shiftwidth=2

" Key mappings
inoremap (<cr> (<cr>)<esc>O<tab>
inoremap {<cr> {<cr>}<esc>O<tab>

cnoremap help vert help

nnoremap <C-j> :m .+1<cr>==
nnoremap <C-k> :m .-2<cr>==
vnoremap <C-j> :m '>+1<cr>gv=gv
vnoremap <C-k> :m '<-2<cr>gv=gv
inoremap <C-j> <esc>:m .+1<cr>==gi
inoremap <C-k> <esc>:m .-2<cr>==gi

let mapleader=","
nmap <leader>q :qa<cr>
nmap <leader>w <c-w><c-w>
nmap <leader>e :Lexplore<cr>
nmap <leader>t :below term<cr>
nmap <leader><leader> :nohlsearch<cr>

nmap <leader>f :GFiles<cr>
nmap <leader>F :Files<cr>
nmap <leader>b :Buffers<cr>

" Vim-plug plugin manager
call plug#begin('~/.vim/plugged')
  Plug 'dag/vim-fish', { 'for': 'fish' }
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'tomasiser/vim-code-dark'
call plug#end()

colorscheme codedark

" Netrw tweaks
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=20

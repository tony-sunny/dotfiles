set nowrap
set autoread
set autoindent
set noshowmode
set backspace=2
set laststatus=2
set ttimeoutlen=50
set updatetime=250
set number relativenumber
set splitbelow splitright
set hlsearch incsearch smartcase
set list listchars=tab:..,trail:★
set expandtab smarttab tabstop=2 softtabstop=2 shiftwidth=2

" Key mappings
inoremap (<cr> (<cr>)<esc>O<tab>
inoremap {<cr> {<cr>}<esc>O<tab>

cnoremap help vert help

nnoremap ∆ :m .+1<cr>==
nnoremap ˚ :m .-2<cr>==
vnoremap ∆ :m '>+1<cr>gv=gv
vnoremap ˚ :m '<-2<cr>gv=gv
inoremap ∆ <esc>:m .+1<cr>==gi
inoremap ˚ <esc>:m .-2<cr>==gi

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
  Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
  Plug 'dag/vim-fish', { 'for': 'fish' }
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox

" Netrw tweaks
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=20

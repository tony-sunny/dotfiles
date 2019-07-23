set nu rnu
set sb spr
set nowrap
set autoread
set autoindent
set noshowmode
set backspace=2
set laststatus=2
set ttimeoutlen=50
set updatetime=250
set list listchars=tab:..,trail:★
set expandtab smarttab tabstop=2 softtabstop=2 shiftwidth=2

" Key mappings
inoremap (<cr> (<cr>)<esc>O
inoremap {<cr> {<cr>}<esc>O

cnoremap help vert help

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
nmap <leader><leader> :nohlsearch<cr>
nmap <leader>t :below term<cr>

nmap <leader>f :GFiles<cr>
nmap <leader>F :Files<cr>
nmap <leader>b :Buffers<cr>

" Vim-plug plugin manager
call plug#begin('~/.vim/plugged')
  Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'dag/vim-fish'
  Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox

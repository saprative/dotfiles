" Author : Saprative Jana
" File : Plugin Free Vimrc

" General Setup
set number
"set relativenumber
set mouse=a
set ruler
"set noexpandtab
set clipboard=unnamedplus
set nocompatible
set smartcase
set expandtab
set ignorecase
set incsearch
"set hlsearch
set splitbelow
set splitright
set laststatus=2
set tw=80
set sw=4 " ShiftWidth
set ts=4 " TabStop
set sts=4 " SoftTabStop
set backspace=eol,start,indent
colorscheme default
set filetype=jsx.html
syntax enable
syntax on


" Vim Maping
let mapleader="," " Leader map
nmap <C-u> o<Esc>
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>t :e .<cr>
nmap <leader>tw :TW<cr>

" Filetype on
filetype on             	 
filetype plugin on
filetype plugin indent on    

" For Python 
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" For Javacript
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript :set makeprg=tsc
autocmd BufNewFile,BufRead *.ts set filetype=typescript

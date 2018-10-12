" Author : Saprative Jana
" File : Vimrc

"Basic Setup
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
"set guifont=Monaco:h16
"set t_Co=256
set tw=80
set sw=4 " ShiftWidth
set ts=4 " TabStop
set sts=4 " SoftTabStop
set backspace=eol,start,indent
colorscheme default

if has("gui_running")
  set enc=utf-8
  syntax on
  set hlsearch
  set gfn=Monaco:h18
  set background=dark
  colorscheme solarized
  set bs=2
  set ai
  set ruler
endif
"set whichwrap+=<,>,h,l
"set list lcs=tab:\|\
"set hidden
"set wildignore=*.o,*~,*.pyc
"set ai
"set si
"set autoindent
set filetype=jsx.html

"Syntax
syntax enable
syntax on

" Filetype on
filetype on             	 
filetype plugin on
filetype plugin indent on    

" Type specific setup
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript :set makeprg=tsc
autocmd BufNewFile,BufRead *.ts set filetype=typescript
" General Maps
let mapleader="," " Leader map
nmap <C-u> o<Esc>
"nmap <CR> o<Esc>

" Tab navigation like Firefox.
nnoremap <C-b> :tabp<CR>
nnoremap <C-w> :tabn<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-v> :vsplit<CR>
nnoremap <C-d> :split<CR>
"noremap <C-b> <Esc>:tabp<CR>i
"inoremap <C-t> 	<Esc>:tabnew<CR>
nnoremap <C-x> :tabonly<CR>

" Macvim bundle setup
if !exists("macvim_skip_colorscheme") && !exists("colors_name")
    colorscheme macvim
endif

"  Vundle initialize
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/syntax/django.vim

" Plugin Load
call vundle#begin()

" vundle starting
Plugin 'gmarik/Vundle'

" Utility
Plugin 'scrooloose/nerdcommenter' " Comment plugin
Plugin 'Valloric/YouCompleteMe' " Auto complete all in one
Plugin 'tpope/vim-fugitive' " GitHub repo plugin
Plugin 'scrooloose/nerdtree' " File browser
Plugin 'kien/ctrlp.vim' " fuzzy find
Plugin 'tpope/vim-surround' " parenthesizing made easy
Plugin 'Raimondi/delimitMate' " auto complete parenthesizing
Plugin 'ervandew/supertab' " Autocomplete using tab
Plugin 'christoomey/vim-tmux-navigator' " tmux navigator
Plugin 'wincent/command-t' " fuzzy finder
"Plugin 'SirVer/ultisnips' " Codes to ease your writing
Plugin 'KabbAmine/zeavim.vim' " Zeal plugin have to install zeal to use this plugin
Plugin 'vimwiki/vimwiki' " Wikipedia personal for vim
"Plugin 'vim-ctrlspace/vim-ctrlspace' " tab managemanet software
Plugin 'Shougo/neocomplete' " Autocomplete for vim
Plugin 'easymotion/vim-easymotion' "  Easy file traverser
"Plugin 'msanders/snipmate.vim' " A textmate snippets
"Plugin 'gorkunov/smartgf.vim' " gf on steroids
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
"Plugin 'scrooloose/syntastic' " Syntax checker
Plugin 'xolox/vim-misc'
Plugin 'airblade/vim-gitgutter'
"Plugin 'Yggdroot/indentLine'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate' " vim snipmate
Plugin 'honza/vim-snippets'  " vim snippets suplement
Plugin 'idanarye/vim-merginal' " vim for merginal
"Plugin 'farseer90718/vim-taskwarrior'
Plugin 'hienvd/vim-stackoverflow'

" colours
"Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'altercation/solarized'
"Plugin 'tomasr/molokai' " A powerfull testmate theme

" Status bar
Plugin 'vim-airline/vim-airline' " Status bar
Plugin 'vim-airline/vim-airline-themes' " Status bar theme

" language specific plugin
Plugin 'jmcomets/vim-pony' " Django specific plugin
Plugin 'sukima/xmledit' " Html fast
Plugin 'rstacruz/sparkup' " Html new syntax write
Plugin 'davidhalter/jedi-vim' " Python autocomplete
Plugin 'mjbrownie/vim-htmldjango_omnicomplete' " Django templates auto complete
"Plugin 'burnettk/vim-angular' " Angular autocomplete
Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'python-rope/ropevim' " Python autocomplete autoimport plugin
Plugin 'itspriddle/vim-jquery' " Jquery plugin
"Plugin 'klen/python-mode'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'artur-shaik/vim-javacomplete2'
"Plugin 'ahayman/vim-nodejs-complete'
"Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx' " Reactjs plugin
Plugin 'mklabs/vim-backbone' " Backbone plugin
Plugin 'derekwyatt/vim-scala' " Scala
Plugin 'gre/play2vim' " Play
Plugin 'mitsuhiko/vim-jinja'
Plugin 'chase/vim-ansible-yaml'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
"Plugin 'klen/python-mode'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
"Plugin 'Shougo/vimproc.vim'
Plugin 'akz92/vim-ionic2'

call vundle#end()

" -----  Configuration -------

 "YouCompleteMe
"let g:ycm_dentifiers_from_tags_files = 1  "Let YCM read tags from Ctags file
"let g:ycm_use_ultisnips_completer = 1  "Default 1, just ensure
"let g:ycm_seed_identifiers_with_syntax = 1  "Completion for programming language's keyword
"let g:ycm_complete_in_comments = 1  "Completion in comments
"let g:ycm_complete_in_strings = 1  "Completion in string
"let g:ycm_python_binary_path = '/usr/bin/python3'

" Map vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
nmap <leader>tw :TW<cr>
nmap <leader>dj :e ~/.virtualenvs/tns/lib/python3.5/site-packages/django<cr>
nmap <leader>py :e ~/.virtualenvs/tns/lib/python3.5/site-packages/<cr>

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'

" Python specific plugin
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" Solarised theme
"set background=dark
"colorscheme solarized
let g:solarized_termcolors=256

" Super tab setup
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" NeedTreee
map <leader>t :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Surround setting for python
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"


" Django template setting
"au FileType htmldjango set omnifunc=htmldjangocomplete#CompleteDjango
"let g:htmldjangocomplete_html_flavour = 'html401s'
"au FileType htmldjango inoremap {% {% %}<left><left><left>
"au FileType htmldjango inoremap {{ {{ }}<left><left><left>
"syn region  djangotagmarkers start="{{" end="}}"
" Django  syntax plugin
"syn region  djangovariablemarkers start="{%" end="%}"
"command! -nargs=+ HiLink hi def link <args>
"HiLink djangotagmarkers PreProc
"HiLink djangovariablemarkers PreProc
"delcommand HiLink

" Neocomplete
let g:neocomplete#enable_at_startup = 1

" Colours settings
let g:molokai_original = 1
let g:rehash256 = 1

" Indentline Plugin
let g:indentLine_char = 'c'
let g:indentLine_concealcursor = 'vc' "(default 'inc')
let g:indentLine_conceallevel = 0 "(default 2)" 

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- React js config -------
let g:jsx_ext_required = 0

" ----- Tagbar ------
nmap <leader>tg :TagbarToggle<CR>

" ----- ultisnips ------
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-p>"
"let g:UltiSnipsExpandTrigger       = "<c-j>"
"let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
"let g:UltiSnipsListSnippets        = "<c-k>" 
" ---- git ------
let g:gitgutter_sign_column_always = 1

"---- Syntastic Setting ----
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"map <leader>sc :SyntasticToggleMode<CR>
let g:syntastic_javascript_checkers = ['eslint']

" Python lang setup
"let g:pymode_python = 'python3'

" Git raper shortcut
map <leader>gt :MerginalToggle<CR>

" fugitive git bindings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
"nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>


let mapleader = ","

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

syntax on
set ttyfast
set ruler
set number
set nowrap
set list

" Indention
set tabstop=2
set shiftwidth=2
set cindent
set smartindent
set expandtab
set softtabstop=2
set encoding=utf-8
filetype plugin indent on

" Command-line
set history=1000
set wildmenu wildmode=longest,list:longest
set wildignore+=*/.git/*,*/.svn/*
set wildignore+=.DS_Store
set wildignore+=*/vendor/bundle/*,*/tmp/*,*/.*-cache/*

" Searching
set ignorecase smartcase
set incsearch
set hlsearch
set gdefault

set title " Set terminal title
set shortmess=atI " Less interruptive prompts
set vb t_vb= " No beep or flash
set fillchars= " No separator chars
set timeoutlen=300 " Faster mappings
set t_Co=256 " 256 colors
set laststatus=2 " Always show statusline
set list listchars=tab:→\ ,trail:•
set fileformats=unix,mac,dos

" Eyecandy
let g:airline_powerline_fonts=1
let g:molokai_original = 1
colorscheme molokai

" Close vim if NERDTree is the only buffer still open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Filetypes
au BufNewFile,BufRead *.ejs set filetype=js
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.slim set filetype=slim
au BufNewFile,BufRead *.hbs set filetype=handlebars
au BufNewFile,BufRead *.rabl set filetype=ruby


" Mappings
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<cr>
map <leader>m :CtrlPMRU<cr>

" Navigate between splits
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Shortcuts for vimrc editing
map <leader>v :e $MYVIMRC<CR><C-W>_
map <silent> <leader>V :so $MYVIMRC

Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'Syntastic'
Bundle 'rking/ag.vim'
Bundle 'nono/vim-handlebars'
Bundle 'tpope/vim-surround'
Bundle 'slim-template/vim-slim'
Bundle 'mhinz/vim-signify'
Bundle 'bling/vim-airline'
Bundle 'rking/ag.vim'

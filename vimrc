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

" Color
let g:Powerline_symbols = 'fancy'
let g:molokai_original = 1
colorscheme molokai

"Close vim if NERDTree is the only buffer still open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
au BufNewFile,BufRead *.ejs set filetype=js
au BufRead,BufNewFile *.coffee set ft=coffee

Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'Syntastic'

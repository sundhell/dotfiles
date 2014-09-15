"
" ============== INIT ==============
"
if $SHELL =~ 'fish'
  set shell=/bin/sh
endif


"
" ============== SETTINGS ==============
"
set clipboard=unnamed

" White space
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:→\ ,trail:•

" Searching
set ignorecase smartcase
set incsearch
set hlsearch
set gdefault

" File format/encoding
set encoding=utf-8
set fileformats=unix,mac,dos

" Indention
set cindent
set smartindent

" Command-line
set history=1000
set wildmenu wildmode=longest,list:longest
set wildignore+=*/.git/*,*/.svn/*
set wildignore+=.DS_Store
set wildignore+=*/vendor/bundle/*,*/tmp/*,*/.*-cache/*

set title             " Set terminal title
set shortmess=atI     " Less interruptive prompts
set vb t_vb=          " No beep or flash
set fillchars=        " No separator chars
set timeoutlen=300    " Faster mappings
set t_Co=256          " 256 colors
set laststatus=2      " Always show statusline
set scrolloff=10      " Center current line vertically

" Eyecandy
syntax on
set ttyfast
set ruler
set number
set nowrap
set list

" Close vim if NERDTree is the only buffer still open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"
" ============== PLUGINS ==============
"
if !isdirectory(expand('~/.vim/bundle/Vundle.vim'))
  !git clone git://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set runtimepath+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/syntastic'
Plugin 'nono/vim-handlebars'
Plugin 'tpope/vim-surround'
Plugin 'slim-template/vim-slim'
Plugin 'mhinz/vim-signify'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ngmy/vim-rubocop'
Plugin 'rizzatti/funcoo.vim'
Plugin 'dag/vim-fish'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-dispatch'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'solarnz/thrift.vim'
Plugin 'tpope/vim-markdown'
Plugin 'axiom/vim-memcolo'
Plugin 'CycleColor'

call vundle#end()
filetype indent plugin on


"
" ============== FILETYPES ==============
"
au BufNewFile,BufRead *.ejs         set filetype=js
au BufNewFile,BufRead *.coffee      set filetype=coffee
au BufNewFile,BufRead *.slim        set filetype=slim
au BufNewFile,BufRead *.hbs         set filetype=handlebars
au BufNewFile,BufRead *.rabl        set filetype=ruby
au BufNewFile,BufRead *.fish        set filetype=fish
au BufNewFile,BufRead Dockerfile*   set filetype=Dockerfile
au BufNewFile,BufRead *.dock        set filetype=Dockerfile
au BufNewFile,BufRead *.thrift      set filetype=thrift
au BufNewFile,BufRead *.md          set filetype=markdown


"
" ============== MAPPINGS ==============
"
let mapleader = ","
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <leader>f :CtrlP<cr>
map <leader>b :CtrlPBuffer<cr>
map <leader>m :CtrlPMRU<cr>
map <leader>t :CtrlPTag<cr>
map <leader>n :NERDTreeToggle<cr>
map <space> :noh<cr>

" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<cr>
map <Leader>s :call RunNearestSpec()<cr>
map <Leader>l :call RunLastSpec()<cr>
map <Leader>a :call RunAllSpecs()<cr>

" Navigate between splits
nmap <silent> <c-k> :wincmd k<cr>
nmap <silent> <c-j> :wincmd j<cr>
nmap <silent> <c-h> :wincmd h<cr>
nmap <silent> <c-l> :wincmd l<cr>

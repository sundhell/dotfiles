" Set shell to bash
set shell=/bin/bash
set clipboard=unnamed

" Vundle setting
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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
filetype plugin indent on

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
set scrolloff=1000    " Center current line vertically

" Eyecandy
syntax on
set ttyfast
set ruler
set number
set nowrap
set list
let g:molokai_original = 1
colorscheme molokai

" Run rspec in tmux pane
let g:rspec_command = 'Dispatch bundle exec rspec {spec}'

" Close vim if NERDTree is the only buffer still open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Filetypes
au BufNewFile,BufRead *.ejs     set filetype=js
au BufNewFile,BufRead *.coffee  set filetype=coffee
au BufNewFile,BufRead *.slim    set filetype=slim
au BufNewFile,BufRead *.hbs     set filetype=handlebars
au BufNewFile,BufRead *.rabl    set filetype=ruby
au BufNewFile,BufRead *.fish    set filetype=fish

" Mappings
let mapleader = ","
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<cr>
map <leader>m :CtrlPMRU<cr>
map <leader>t :CtrlPTag<cr>
map <leader>n :NERDTreeToggle<cr>
map <silent> <leader>l :TagbarToggle<CR>

" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Navigate between splits
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Shortcuts for vimrc editing
map <leader>ve :vsp $MYVIMRC
map <leader>se :source $MYVIMRC

Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-rails'
Bundle 'Syntastic'
Bundle 'nono/vim-handlebars'
Bundle 'tpope/vim-surround'
Bundle 'slim-template/vim-slim'
Bundle 'mhinz/vim-signify'
Bundle 'bling/vim-airline'
Bundle 'majutsushi/tagbar'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'ngmy/vim-rubocop'
Bundle 'rizzatti/funcoo.vim'
Bundle 'dag/vim-fish'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-dispatch'

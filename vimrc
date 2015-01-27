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
set noexpandtab
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
set wildignore+=*/.git/*,*/.svn/*,*/.vagrant/*,*/.bundle/*
set wildignore+=.DS_Store,*.swp,
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

" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
if &term == 'xterm-256color' || &term == 'screen-256color'
	let &t_SI = "\<Esc>[5 q"
	let &t_EI = "\<Esc>[1 q"
endif

if exists('$TMUX')
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
endif

" Close vim if NERDTree is the only buffer still open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Syntastic
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" Undo history
set backup
set undofile
set backupdir=~/.vim/.backup
set undodir=~/.vim/.undo

"
" ============== PLUGINS ==============
"
if !isdirectory(expand('~/.vim/bundle/Vundle.vim'))
	!git clone git://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set runtimepath+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ngmy/vim-rubocop'
Plugin 'rizzatti/funcoo.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/unite.vim'
Plugin 'benmills/vimux'

" File handling
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" Git plugins
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'

" Color scheme plugins
Plugin 'axiom/vim-memcolo'
Plugin 'CycleColor'

" File type plugins
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-rails'
Plugin 'nono/vim-handlebars'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'dag/vim-fish'
Plugin 'solarnz/thrift.vim'
Plugin 'tpope/vim-markdown'
Plugin 'slim-template/vim-slim'


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
map <leader>k :bd<cr>
map <space> :noh<cr>
map <leader>r :VimuxRunCommand("clear; bundle exec ruby " . bufname("%"))<cr>

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Navigate between splits
nmap <silent> <c-k> :wincmd k<cr>
nmap <silent> <c-j> :wincmd j<cr>
nmap <silent> <c-h> :wincmd h<cr>
nmap <silent> <c-l> :wincmd l<cr>

" Semantic highlighting
:nnoremap <Leader>s :SemanticHighlightToggle<cr>

"
" ============== PLUGINS ==============
"
call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ngmy/vim-rubocop'
Plug 'rizzatti/funcoo.vim'
Plug 'tpope/vim-dispatch'
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/unite.vim'
Plug 'benmills/vimux'
Plug 'gcmt/wildfire.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'

" File handling
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Rename'

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" Color scheme plugins
Plug 'axiom/vim-memcolo'
Plug 'CycleColor'

" File type plugins
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'tpope/vim-rails'
Plug 'nono/vim-handlebars', { 'for': 'handlebars' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'solarnz/thrift.vim', { 'for': 'thrift' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'vim-pandoc/vim-pandoc', { 'for': [ 'pandoc', 'markdown' ] }
Plug 'vim-pandoc/vim-pandoc-syntax', { 'for': [ 'pandoc', 'markdown' ] }
Plug 'rodjek/vim-puppet', { 'for': 'puppet' }
Plug 'markcornick/vim-vagrant', { 'for': 'vagrant' }

call plug#end()

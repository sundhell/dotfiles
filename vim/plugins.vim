"
" ============== PLUGINS ==============
"
call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ngmy/vim-rubocop'
Plug 'rizzatti/funcoo.vim'
Plug 'tpope/vim-dispatch'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'Shougo/unite.vim'
Plug 'benmills/vimux'
Plug 'gcmt/wildfire.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'rking/ag.vim'
Plug 'benekastah/neomake'
Plug 'fmoralesc/vim-pad'

" File handling
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Rename'

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" Color scheme plugins
Plug 'axiom/vim-memcolo'
Plug 'CycleColor'
Plug 'gilgigilgil/anderson.vim'
Plug 'morhetz/gruvbox'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'

" File type plugins
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'tpope/vim-rails'
Plug 'nono/vim-handlebars', { 'for': 'handlebars' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'solarnz/thrift.vim', { 'for': 'thrift' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'rodjek/vim-puppet', { 'for': 'puppet' }
Plug 'markcornick/vim-vagrant', { 'for': 'vagrant' }
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tobyS/pdv'
Plug 'kylef/apiblueprint.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

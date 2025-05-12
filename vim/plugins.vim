"
" ============== PLUGINS ==============
"
call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rizzatti/funcoo.vim'
Plug 'tpope/vim-dispatch'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'Shougo/unite.vim'
Plug 'benmills/vimux'
Plug 'gcmt/wildfire.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'mileszs/ack.vim'
Plug 'benekastah/neomake'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'alvan/vim-closetag'
Plug 'sbdchd/neoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'

" File handling
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'danro/rename.vim'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" Color scheme plugins
Plug 'axiom/vim-memcolo'
Plug 'vim-scripts/CycleColor'
Plug 'gilgigilgil/anderson.vim'
Plug 'morhetz/gruvbox'
Plug 'alessandroyorba/sierra'
Plug 'dylanaraps/wal.vim'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'phanviet/vim-monokai-pro'

" File type plugins
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'nono/vim-handlebars', { 'for': 'handlebars' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'solarnz/thrift.vim', { 'for': 'thrift' }
Plug 'tpope/vim-markdown'
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'shime/vim-livedown'
Plug 'rodjek/vim-puppet', { 'for': 'puppet' }
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'jwalton512/vim-blade'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tobyS/pdv'
Plug 'kylef/apiblueprint.vim'
Plug 'uarun/vim-protobuf'
Plug 'vim-scripts/SQLUtilities'
Plug 'vim-scripts/Align'
Plug 'vimperator/vimperator.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'hashivim/vim-terraform'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'tasn/vim-tsx'

call plug#end()

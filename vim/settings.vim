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
set wildignore+=*/.git/*,*/.svn/*,*/.vagrant/*,*/.bundle/*,*/vendor/*
set wildignore+=.DS_Store,*.swp,

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
let g:airline_powerline_fonts = 1

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

" Undo history
set backup
set undofile
set backupdir=~/.vim/.backup
set undodir=~/.vim/.undo


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
au BufNewFile,BufRead *.pp          set filetype=puppet
au BufNewFile,BufRead Vagrantfile*  set filetype=vagrant

"
" ============== SETTINGS ==============
"

" Use system clipboard
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
set wildmenu
set wildmode=longest,list:longest
set wildignore+=*/.git/*,*/.svn/*,*/.vagrant/*,*/.bundle/*,*/vendor/*,*/log/*,*/logs/*,*/plugged/*
set wildignore+=.DS_Store,*.swp,

set title             " Set terminal title
set shortmess=atI     " Less interruptive prompts
set vb t_vb=          " No beep or flash
set fillchars=        " No separator chars
set timeoutlen=300    " Faster mappings
set t_Co=256          " 256 colors
set laststatus=2      " Always show statusline
set scrolloff=10      " Center current line vertically
set modeline
set modelines=5

" Eyecandy
syntax on
set ttyfast
set ruler
set number
set nowrap
set list

if v:version > 703 || v:version == 703 && has('patch541')
	set formatoptions+=j
endif

" Lightline statusbar
let g:lightline = {
     \ 'colorscheme': 'jellybeans',
     \ 'component': {
     \   'filename': '%{@%}',
     \ }
     \ }

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
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Settings for netrw
let g:netrw_liststyle = 3

" Undo history
set backup
set undofile
set backupdir=~/.vim/.backup
set undodir=~/.vim/.undo

" Markdown settings
let g:markdown_fenced_languages = ['html', 'python', 'sh', 'php', 'ruby', 'json', 'javascript']


"
" ============== RELATIVE NUMBERS ==============
"
autocmd FocusLost * :set norelativenumber
autocmd FocusGained * :set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

"
" ============== SNIPPETS ==============
"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" PDV
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

"
" ============== NEOVIM ==============
"
set mouse= " Remove mouse support as Neovim automatically enables mouse support

"
" ============== NEOMAKE ==============
"
let g:neomake_php_enabled_makers = ['php', 'phpmd', 'phpcs']
let g:neomake_javascript_enabled_makers = ['jshint']
let g:neomake_json_enabled_makers = ['jsonlint']
let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_css_enabled_makers = ['stylelint']
let g:neomake_yaml_enabled_makers = ['yamllint']
autocmd! BufWritePost * Neomake

"
" ============== GOYO ==============
"
let g:goyo_width = '80'
let g:goyo_height = '80%'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

let g:html_indent_inctags = "html,body,head,tbody"

"
" ============== FZF ==============
"
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down': '~10%' }

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

"
" ============== ACK/AG ==============
"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

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
au BufNewFile,BufRead *.md          set filetype=pandoc
au BufNewFile,BufRead *.pp          set filetype=puppet
au BufNewFile,BufRead *.yml         set filetype=yaml
au BufNewFile,BufRead Vagrantfile*  set filetype=vagrant

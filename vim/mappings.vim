"
" ============== MAPPINGS ==============
"
let mapleader = ","
nmap <leader>f :CtrlP<cr>
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>m :CtrlPMRU<cr>
nmap <leader>t :CtrlPBufTag<cr>
nmap <leader>z :NERDTreeToggle<cr>
nmap <leader>k :bd<cr>
nmap <leader>r :VimuxRunCommand("clear; phpunit -v " . bufname("%"))<cr>
nmap <leader>R :VimuxRunCommand("clear; phpunit -v ")<cr>
nmap <leader>p :Pandoc! html -c ~/.pandoc_templates/github-pandoc.css<cr>
nmap <space> :noh<cr>

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

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let php_sql_query=1

nmap <leader>r :VimuxRunCommand("clear; phpunit -v " . bufname("%"))<cr>
nmap <leader>R :VimuxRunCommand("clear; phpunit -v ")<cr>

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gallois"

plugins=(git brew ruby bundler osx pow rails3 redis-cli vi-mode vundle z)

source $ZSH/oh-my-zsh.sh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

bindkey '^R' history-incremental-search-backward

alias rflush='redis-cli flushall'
alias mflush='echo "flush_all" | nc localhost 11211'

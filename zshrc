ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gallois"

plugins=(git brew ruby bundler osx pow rails3 redis-cli vi-mode vundle z)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export EDITOR=vim
export LC_CTYPE="utf-8"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

bindkey '^R' history-incremental-search-backward

alias rflush='redis-cli flushall'
alias mflush='echo "flush_all" | nc localhost 11211'

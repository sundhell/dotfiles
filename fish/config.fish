set -g -x fish_greeting ''

set -x PATH /usr/local/bin /usr/local/sbin /usr/local/share/npm/bin $PATH
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH

set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

if which rbenv > /dev/null
  rbenv rehash >/dev/null ^&1
end

set -l plugins_path (dirname (status -f))/plugins

fish_aliases

. $plugins_path/z.fish

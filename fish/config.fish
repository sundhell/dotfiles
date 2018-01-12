set -g -x fish_greeting ''

# Set up PATH
set PATH $HOME/bin $PATH

if which brew >/dev/null ^&1
  set PATH /usr/local/bin $PATH
  set PATH /usr/local/sbin $PATH
end

if which rbenv >/dev/null ^&1
  set PATH $HOME/.rbenv/shims $PATH
end

if which pyenv >/dev/null ^&1
  set PATH $HOME/.pyenv/shims $PATH
end

if which nodenv >/dev/null ^&1
  set PATH $HOME/.nodenv/shims $PATH
end

if which composer >/dev/null ^&1
  set PATH $HOME/.composer/vendor/bin $PATH
end

if test -d $HOME/.cargo/bin
  set PATH $HOME/.cargo/bin $PATH
end

if which go >/dev/null ^&1
  set GOPATH $HOME/go
  set PATH $HOME/go/bin $PATH
end

fish_env_variables
fish_user_abbreviations
dotenv

set fish_key_bindings fish_user_key_bindings

set -l plugins_path (dirname (status -f))/plugins

. $plugins_path/z.fish

if test -e ~/.secrets
  . ~/.secrets
end

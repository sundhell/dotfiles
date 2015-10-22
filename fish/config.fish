set -g -x fish_greeting ''

# Set up PATH
set -g fish_user_paths $fish_user_paths $HOME/bin

if which brew >/dev/null ^&1
  set -g fish_user_paths $fish_user_paths /usr/local/bin
  set -g fish_user_paths $fish_user_paths /usr/local/sbin
end

if which rbenv >/dev/null ^&1
  set -g fish_user_paths $fish_user_paths $HOME/.rbenv/shims
end

if which pyenv >/dev/null ^&1
  set -g fish_user_paths $fish_user_paths $HOME/.pyenv/shims
end

if which nodenv >/dev/null ^&1
  set -g fish_user_paths $fish_user_paths $HOME/.nodenv/shims
end

if which composer >/dev/null ^&1
  set -g fish_user_paths $fish_user_paths $HOME/.composer/vendor/bin
end

fish_env_variables
fish_user_abbreviations
fish_vi_mode

set -l plugins_path (dirname (status -f))/plugins

. $plugins_path/z.fish

if test -e ~/.secrets
  . ~/.secrets
end

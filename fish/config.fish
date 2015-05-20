set -g -x fish_greeting ''

fish_env_variables
fish_user_abbreviations
fish_vi_mode

set -l plugins_path (dirname (status -f))/plugins

. $plugins_path/z.fish

if test -e ~/.secrets
  . ~/.secrets
end

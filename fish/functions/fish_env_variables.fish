function fish_env_variables -d "Set env variables"
  set PATH $HOME/bin $PATH
  set PATH /usr/local/bin $PATH
  set PATH /usr/local/sbin $PATH
  set PATH $HOME/.rbenv/shims $PATH
  set PATH $HOME/.pyenv/shims $PATH
  set PATH /usr/local/share/npm/bin $PATH

  set -xg LANG 'en_US.UTF-8'
  set -xg LC_ALL 'en_US.UTF-8'
  set -xg LC_CTYPE 'en_US.UTF-8'
  set -xg EDITOR 'vim'
end

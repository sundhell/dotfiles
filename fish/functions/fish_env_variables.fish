function fish_env_variables -d "Set env variables"
  set -x PATH /usr/local/bin /usr/local/sbin /usr/local/share/npm/bin $PATH
  set PATH $HOME/.rbenv/bin $PATH
  set PATH $HOME/.rbenv/shims $PATH
  set PATH $HOME/.pyenv/shims $PATH

  set -x LANG en_US.UTF-8
  set -x LC_ALL en_US.UTF-8
  set -x EDITOR 'vim'
end
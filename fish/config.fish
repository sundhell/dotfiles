set -g theme_nerd_fonts yes
set -g theme_color_scheme 'gruvbox'

set -xg LANG 'en_US.UTF-8'
set -xg LC_ALL 'en_US.UTF-8'
set -xg LC_CTYPE 'en_US.UTF-8'
set -xg EDITOR 'vim'
set -xg PAGER 'less'
set -xg NVIM_TUI_ENABLE_CURSOR_SHAPE '1'

set -xg HOMEBREW_NO_AUTO_UPDATE '1'
set -xg HOMEBREW_NO_INSTALL_CLEANUP '1'

set -xg PROJECT_PATHS ~/Dev ~/Dev_2

set PATH $HOME/bin $PATH
set PATH $HOME/.dotnet/tools $PATH
set PATH $HOME/.cargo/bin $PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

source ~/.asdf/asdf.fish

if type -sq nodenv
  set PATH $HOME/.nodenv/shims $PATH
end

if type -sq pyenv
  pyenv init - | source
  set -Ux PYENV_ROOT $HOME/.pyenv
  set PATH $HOME/.pyenv/shims $PATH
end

if type -sq rbenv
  set PATH $HOME/.rbenv/shims $PATH
end

if type -sq composer
  set PATH $HOME/.composer/vendor/bin $PATH
end

set PATH /usr/local/opt/mysql-client/bin $PATH

function fish_greeting; end
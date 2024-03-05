set -g theme_nerd_fonts yes
set -g theme_color_scheme 'gruvbox'

set -xg LANG 'en_US.UTF-8'
set -xg LC_ALL 'en_US.UTF-8'
set -xg LC_CTYPE 'en_US.UTF-8'
set -xg EDITOR 'vim'
set -xg PAGER 'less'
set -xg NVIM_TUI_ENABLE_CURSOR_SHAPE '1'

set -xg LESS_TERMCAP_mb (printf "\e[01;31m")
set -xg LESS_TERMCAP_md (printf "\e[01;31m")
set -xg LESS_TERMCAP_me (printf "\e[0m")
set -xg LESS_TERMCAP_se (printf "\e[0m")
set -xg LESS_TERMCAP_so (printf "\e[01;44;33m")
set -xg LESS_TERMCAP_ue (printf "\e[0m")
set -xg LESS_TERMCAP_us (printf "\e[01;32m")

set -xg HOMEBREW_NO_AUTO_UPDATE '1'
set -xg HOMEBREW_NO_INSTALL_CLEANUP '1'

set -xg PROJECT_PATHS ~/Dev ~/Dev_2

set PATH $HOME/bin $PATH

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

  set -U fish_user_abbreviations
    abbr -a l 'ls -a'
    abbr -a ll 'ls -lah'
    abbr -a lsd 'tree --dirsfirst -ChF -L 1'

    abbr -a ta 'tmux attach'
    abbr -a tl 'tmux list-sessions'

    abbr -a ga 'git add'
    abbr -a gst 'git status -sb'
    abbr -a gd 'git diff'
    abbr -a gc 'git commit -v'
    abbr -a gco 'git checkout'
    abbr -a gb 'git branch'
    abbr -a gl 'git log'

    abbr -a dc 'docker-compose'

    abbr -a pa 'php artisan'

    abbr -a be 'bundle exec'
    abbr -a rc 'rails console'

    abbr -a prst 'touch tmp/restart.txt'

    abbr -a rflush 'redis-cli flushall'
    abbr -a mflush 'echo"flush_all" | nc localhost 11211'

    abbr -a bu 'brew update; brew upgrade; brew cleanup'

    abbr -a vha 'vagrant global-status | awk "/running/{print $1}" | xargs -n 1 -- vagrant halt'
    abbr -a vsa 'vagrant global-status | awk "/running/{print $1}" | xargs -n 1 -- vagrant up'

function edit_command --description "Edit the current command in your $EDITOR"
    set -q EDITOR; or return 1
    set -l tmpfile (mktemp -t "edit_command"); or return 1
    commandline > $tmpfile
    eval $EDITOR $tmpfile
    commandline -r -- (cat $tmpfile)
    rm $tmpfile
end

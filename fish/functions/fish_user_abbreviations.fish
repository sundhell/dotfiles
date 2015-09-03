function fish_user_abbreviations
  set -U fish_user_abbreviations
    abbr -a l='ls -a'
    abbr -a ll='ls -lah'
    abbr -a lsd='tree --dirsfirst -ChF -L 1'

    abbr -a ta='tmux attach'
    abbr -a tl='tmux list-sessions'

    abbr -a ga='git add'

    abbr -a gst='git status -sb'

    abbr -a gd='git diff'

    abbr -a gc='git commit -v'

    abbr -a gco='git checkout'

    abbr -a gb='git branch'

    abbr -a gl='git log'

    abbr -a be='bundle exec'
    abbr -a rc='rails console'

    abbr -a prst='touch tmp/restart.txt'

    abbr -a rflush='redis-cli flushall'
    abbr -a mflush='echo"flush_all" | nc localhost 11211'

    abbr -a bu='brew update; brew cask update; brew upgrade; brew cleanup; brew cask cleanup'

    abbr -a vha='vagrant global-status | awk "/running/{print $1}" | xargs -n 1 -- vagrant halt'
    abbr -a vsa='vagrant global-status | awk "/running/{print $1}" | xargs -n 1 -- vagrant up'
end

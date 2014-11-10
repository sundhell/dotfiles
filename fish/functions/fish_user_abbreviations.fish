function fish_user_abbreviations
  set -U fish_user_abbreviations \
    'l=ls -a' \
    'll=ls -lah' \
    'lsd=tree --dirsfirst -ChF -L 1' \
    \
    'ta=tmux attach' \
    'tl=tmux list-sessions' \
    \
    'ga=git add' \
     \
    'gst=git status -sb' \
     \
    'gd=git diff' \
    \
    'gc=git commit -v' \
     \
    'gco=git checkout' \
     \
    'gb=git branch' \
     \
    'gl=git log' \
    \
    'be=bundle exec' \
    'rc=rails console'\
    \
    'prst=touch tmp/restart.txt'\
    \
    'rflush=redis-cli flushall'\
    'mflush=echo \"flush_all\" | nc localhost 11211'
end

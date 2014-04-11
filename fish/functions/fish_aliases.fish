function fish_aliases -d "Store aliases"
  alias gst "git status"
  alias gco "git checkout"
  alias gb "git branch"
  alias gc "git commit"

  alias be "bundle exec"

  alias rflush "redis-cli flushall"
  alias mflush "echo "flush_all" | nc localhost 11211"
  alias prst "touch tmp/restart.txt"
end

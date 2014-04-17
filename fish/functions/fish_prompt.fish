set -xg fish_color_user magenta
set -xg fish_color_host yellow

function fish_prompt --description 'Write out the prompt'
  set -l last_status $status

  # User
  set_color $fish_color_user
  echo -n (whoami)
  set_color normal

  echo -n '@'

  # Host
  set_color $fish_color_host
  echo -n (hostname -s)
  set_color normal

  echo -n ':'

  # PWD
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal

  if which rbenv >/dev/null ^&1
    set_color $fish_color_user
    echo -n ' ['
    echo -n (rbenv version-name)
    echo -n ']'
    set_color normal
  end

  # Nextline
  echo
  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n '> '
  set_color normal
end

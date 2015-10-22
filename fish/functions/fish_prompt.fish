function fish_prompt --description 'Write out the prompt'
  set -l last_status $status
  set -l fish_color_user magenta
  set -l fish_color_host yellow

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


  # Ruby, python, node and PHP version managers
  if which rbenv >/dev/null ^&1
    set_color $fish_color_user
    echo -n ' '
    echo -n (rbenv version-name)
    set_color $fish_color_host
    echo -n '|rb'
    set_color normal
  end

  if which pyenv >/dev/null ^&1
    set_color $fish_color_user
    echo -n ' '
    echo -n (pyenv version-name)
    set_color $fish_color_host
    echo -n '|py'
    set_color normal
  end

  if which nodenv >/dev/null ^&1
    set_color $fish_color_user
    echo -n ' '
    echo -n (nodenv version-name)
    set_color $fish_color_host
    echo -n '|node'
    set_color normal
  end

  if which phpenv >/dev/null ^&1
    set_color $fish_color_user
    echo -n ' '
    echo -n (phpenv version-name)
    set_color $fish_color_host
    echo -n '|php'
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

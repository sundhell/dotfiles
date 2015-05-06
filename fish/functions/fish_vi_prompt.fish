function fish_vi_prompt_cm --description "Displays the current mode"
  echo -n " "
  switch $fish_bind_mode
    case default
      set_color red
      echo "[N]"
    case insert
      set_color green
      echo "[I]"
    case visual
      set_color magenta
      echo "[V]"
  end
  set_color normal
end

function fish_vi_prompt --description 'Write out the prompt in vi mode'
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

  # PWD
  echo -n (fish_vi_prompt_cm)

  # Ruby, python and PHP version managers
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

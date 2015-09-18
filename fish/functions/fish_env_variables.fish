function fish_env_variables -d "Set env variables"
  set -xg LANG 'en_US.UTF-8'
  set -xg LC_ALL 'en_US.UTF-8'
  set -xg LC_CTYPE 'en_US.UTF-8'
  set -xg EDITOR 'vim'
  set -xg PAGER 'less'

  set -xg LESS_TERMCAP_mb (printf "\e[01;31m")
  set -xg LESS_TERMCAP_md (printf "\e[01;31m")
  set -xg LESS_TERMCAP_me (printf "\e[0m")
  set -xg LESS_TERMCAP_se (printf "\e[0m")
  set -xg LESS_TERMCAP_so (printf "\e[01;44;33m")
  set -xg LESS_TERMCAP_ue (printf "\e[0m")
  set -xg LESS_TERMCAP_us (printf "\e[01;32m")
end

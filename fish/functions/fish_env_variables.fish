function fish_env_variables -d "Set env variables"
  set -xg LANG 'en_US.UTF-8'
  set -xg LC_ALL 'en_US.UTF-8'
  set -xg LC_CTYPE 'en_US.UTF-8'
  set -xg EDITOR 'vim'
end

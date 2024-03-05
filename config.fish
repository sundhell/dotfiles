set -g -x fish_greeting ''

# Set up PATH
set PATH $HOME/bin $PATH

set PATH /usr/local/opt/make/libexec/gnubin $PATH

set PATH /usr/local/opt/mysql-client/bin $PATH

if type -sq brew
  set PATH /usr/local/bin $PATH
  set PATH /usr/local/sbin $PATH
end

if type -sq rbenv
  set PATH $HOME/.rbenv/shims $PATH
end

if type -sq pyenv
  set PATH $HOME/.pyenv/shims $PATH
end

if type -sq nodenv
  set PATH $HOME/.nodenv/shims $PATH
end

if type -sq composer
  set PATH $HOME/.composer/vendor/bin $PATH
end

if test -d $HOME/.cargo/bin
  set PATH $HOME/.cargo/bin $PATH
end

if type -sq go
  set GOPATH $HOME/go
  set PATH $HOME/go/bin $PATH
end

set ANDROID_HOME /Users/advant-patriksundhall/Library/Android/sdk
set PATH $PATH $ANDROID_HOME/build-tools
set PATH $PATH $ANDROID_HOME/platform-tools
set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/tools/bin
set PATH $PATH $ANDROID_HOME/emulator
set PATH $PATH $ANDROID_HOME/cmdline-tools/latest/bin

set CR_PAT "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"
set JAVA_HOME (/usr/libexec/java_home -v 15.0.2)
set PATH $JAVA_HOME/bin $PATH
fish_env_variables
fish_user_abbreviations
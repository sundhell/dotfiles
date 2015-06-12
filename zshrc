fpath=(/usr/local/share/zsh-completions $fpath)

autoload -U compinit && compinit

setopt histignorealldups sharehistory

# Vim key mode
bindkey -v

# History
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=2000
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR='code'
export VISUAL='vim'
export PAGER='less'
export LESS='-g -i -M -R -S -w -z-4'

setopt ignoreeof

alias -- '-'='cd -'
alias ..='cd ..'
alias e="$EDITOR"
alias grep='grep --color=auto'
alias ls='exa --group-directories-first'

zstyle ':completion:*' matcher-list '' \
	'm:{a-z\-}={A-Z\_}' \
	'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
	'r:|?=** m:{a-z\-}={A-Z\_}'

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt extended_history
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt autocd

bindkey '^r' history-incremental-search-backward
bindkey '^s' history-incremental-search-forward

if [ ! -e "$HOME/.zplug" ]; then
  echo "Auto-installing zplug"
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

. ~/.zplug/init.zsh

zplug 'mafredri/zsh-async', from:github
zplug 'sindresorhus/pure', use:pure.zsh, from:github, as:theme
zplug 'zdharma/fast-syntax-highlighting', from:github

if ! zplug check; then
  zplug install
fi

zplug load
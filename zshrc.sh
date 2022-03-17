export EDITOR='code'
export VISUAL='vim'
export PAGER='less'
export LESS='-g -i -M -R -S -w -z-4'

setopt autocd
setopt ignoreeof
setopt interactivecomments
setopt menucomplete
setopt nobeep
setopt rmstarsilent

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000

setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt extended_history
setopt appendhistory
setopt sharehistory
setopt incappendhistory

alias -- '-'='cd -'
alias ..='cd ..'
alias e="$EDITOR"
alias grep='grep --color=auto'
alias ls='exa --group-directories-first'

alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gh='git show --format=fuller'
alias gk='git checkout'
alias gl='git log --graph --oneline'
alias gp='git push'
alias gr='git reset'
alias gs='git status'

autoload -U compinit
compinit -i
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' verbose false

bindkey '^r' history-incremental-search-backward
bindkey '^s' history-incremental-search-forward

. ~/.zplug/init.zsh

zplug 'mafredri/zsh-async', from:github
zplug 'sindresorhus/pure', use:pure.zsh, from:github, as:theme
zplug 'zdharma/fast-syntax-highlighting', from:github

if ! zplug check; then
  zplug install
fi

zplug load

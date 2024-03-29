# third party

eval "$(/opt/homebrew/bin/brew shellenv)"

# personal

setopt autocd
setopt ignoreeof
setopt interactivecomments
setopt menucomplete
setopt nobeep
setopt norcs
setopt rmstarsilent

export ZLE_SPACE_SUFFIX_CHARS=$'&|'
if [ -z "${SSH_TTY+1}" ]; then
  PS1=$'%{\e[90m%}%2~%{\e[0m%} %{\e[%(?.32.31)m%}%(!.#.$)%{\e[0m%} '
else
  PS1=$'%{\e[33m%}[%m]%{\e[0m%} %{\e[90m%}%2~%{\e[0m%} %{\e[%(?.32.31)m%}%(!.#.$)%{\e[0m%} '
fi

export COPYFILE_DISABLE="1"
export EDITOR="code"
export HOMEBREW_NO_EMOJI="1"
export HOMEBREW_NO_INSECURE_REDIRECT="1"
export PATH="$HOME/.local/bin:$PATH"
export LS_COLORS="di=34"
export WORDCHARS="._-~"

alias -- "-"="cd -"
alias ..="cd .."
alias e="$EDITOR"
alias grep="grep --color=auto"
alias ls="ls -G"

alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gh="git show --ext-diff --format=fuller"
alias gk="git checkout"
alias gl="git log --graph --oneline"
alias gp="git push"
alias gr="git reset"
alias gs="git status"

# autocomplete

autoload -U compinit
compinit -i
zstyle ":completion:*" group-name ""
zstyle ":completion:*" list-dirs-first true
zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}"
zstyle ":completion:*" menu select
zstyle ":completion:*" squeeze-slashes true
zstyle ":completion:*" verbose false

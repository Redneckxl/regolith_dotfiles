HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTFILE=$HOME/.zsh_history

setopt HIST_IGNORE_ALL_DUPS SHARE_HISTORY

bindkey -e
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

PROMPT='%B%F{195}┌[%(!.%F{160}.%F{81})%n%F{195}@%F{78}%m%F{195}] %F{141}%~'$'\n''%F{195}└[%F{141}%(!.#.$)%F{195}]%k%b%f '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
